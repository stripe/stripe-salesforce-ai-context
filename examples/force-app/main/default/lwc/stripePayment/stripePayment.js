import { LightningElement, api, wire } from 'lwc';
import { getRecord, getFieldValue, getRecordNotifyChange } from 'lightning/uiRecordApi';
import { loadScript } from 'lightning/platformResourceLoader';
import createPaymentIntent from '@salesforce/apex/StripePaymentController.createPaymentIntent';
import confirmPaymentServerSide from '@salesforce/apex/StripePaymentController.confirmPaymentServerSide';

import STAGE_FIELD from '@salesforce/schema/Opportunity.StageName';
import AMOUNT_FIELD from '@salesforce/schema/Opportunity.Amount';
import NAME_FIELD from '@salesforce/schema/Opportunity.Name';
import PAYMENT_CAPTURED_FIELD from '@salesforce/schema/Opportunity.Payment_Captured__c';
import STRIPE_PAYMENT_ID_FIELD from '@salesforce/schema/Opportunity.Stripe_Payment_ID__c';

const OPP_FIELDS = [STAGE_FIELD, AMOUNT_FIELD, NAME_FIELD, PAYMENT_CAPTURED_FIELD, STRIPE_PAYMENT_ID_FIELD];
const STRIPE_JS_URL = 'https://js.stripe.com/v3/';

export default class StripePayment extends LightningElement {
    @api recordId;

    stripe;
    elements;
    paymentElement;
    paymentElementMounted = false;
    stripeJsLoaded = false;
    paymentIntentId = '';

    opportunityAmount;
    opportunityName;
    stageName;
    customerEmail = '';
    paymentCaptured = false;
    stripePaymentId = '';

    isLoading = false;
    isProcessing = false;
    showPaymentForm = false;
    paymentSuccess = false;
    errorMessage = '';
    initError = false;

    @wire(getRecord, { recordId: '$recordId', fields: OPP_FIELDS })
    wiredOpportunity({ error, data }) {
        if (data) {
            this.opportunityAmount = getFieldValue(data, AMOUNT_FIELD);
            this.opportunityName = getFieldValue(data, NAME_FIELD);
            this.stageName = getFieldValue(data, STAGE_FIELD);
            this.paymentCaptured = getFieldValue(data, PAYMENT_CAPTURED_FIELD) === true;
            this.stripePaymentId = getFieldValue(data, STRIPE_PAYMENT_ID_FIELD) || '';
        } else if (error) {
            this.errorMessage = 'Unable to load Opportunity data.';
            this.initError = true;
        }
    }

    get isClosedWon() {
        return this.stageName === 'Closed Won';
    }

    get isPaymentCaptured() {
        return this.paymentCaptured;
    }

    // Show "already captured" banner when paid in a previous session
    get showCaptured() {
        return this.isPaymentCaptured && !this.paymentSuccess;
    }

    get showInitial() {
        return !this.showPaymentForm && !this.paymentSuccess && !this.showError && !this.isPaymentCaptured;
    }

    get showError() {
        return this.initError && !this.showPaymentForm && !this.paymentSuccess;
    }

    get isProcessingOrLoading() {
        return this.isProcessing || this.isLoading;
    }

    // Note: Return flow after 3DS authentication is handled by webhooks
    // The payment_intent.succeeded webhook will trigger a Flow that updates
    // the Opportunity fields. No client-side return detection needed.

    // Removed handlePaymentReturn - webhooks handle Opportunity updates

    async handlePayNow() {
        this.isLoading = true;
        this.errorMessage = '';
        this.initError = false;

        try {
            const promises = [createPaymentIntent({ opportunityId: this.recordId })];
            if (!this.stripeJsLoaded) {
                promises.push(loadScript(this, STRIPE_JS_URL));
            }

            const [config] = await Promise.all(promises);

            this.stripeJsLoaded = true;
            this.customerEmail = config.customerEmail || '';
            this.opportunityAmount = config.amount;
            this.opportunityName = config.opportunityName;
            this.paymentIntentId = config.paymentIntentId;

            // Note: 3DS redirect return flow is handled entirely by webhooks
            // No need for localStorage - webhook updates Opportunity server-side

            this.stripe = window.Stripe(config.publishableKey);
            this.elements = this.stripe.elements({
                clientSecret: config.clientSecret,
                appearance: {
                    theme: 'stripe',
                    variables: {
                        colorPrimary: '#635bff',
                        borderRadius: '8px'
                    }
                },
                paymentMethodCreation: 'manual'
            });

            this.paymentElement = this.elements.create('payment', {
                layout: 'tabs'
            });

            this.showPaymentForm = true;
        } catch (error) {
            this.errorMessage = this._extractError(error);
            this.initError = true;
        } finally {
            this.isLoading = false;
        }
    }

    renderedCallback() {
        if (this.paymentElement && this.showPaymentForm && !this.paymentElementMounted) {
            const container = this.template.querySelector('[data-stripe-element="payment"]');
            if (container) {
                this.paymentElement.mount(container);
                this.paymentElementMounted = true;
            }
        }
    }

    disconnectedCallback() {
        if (this.paymentElement) {
            try {
                this.paymentElement.unmount();
            } catch (e) {
                /* element may already be unmounted */
            }
        }
    }

    async handleConfirmPayment() {
        this.isProcessing = true;
        this.errorMessage = '';

        try {
            // Step 1: Submit the payment element to validate
            const { error: submitError } = await this.elements.submit();
            if (submitError) {
                this.errorMessage = submitError.message;
                this.isProcessing = false;
                return;
            }

            // Step 2: Create payment method from the payment element
            const { error: pmError, paymentMethod } = await this.stripe.createPaymentMethod({
                elements: this.elements,
                params: {
                    billing_details: this.customerEmail ? { email: this.customerEmail } : {}
                }
            });

            if (pmError) {
                this.errorMessage = pmError.message;
                this.isProcessing = false;
                return;
            }

            // Step 3: Confirm payment server-side
            const result = await confirmPaymentServerSide({
                opportunityId: this.recordId,
                paymentIntentId: this.paymentIntentId,
                paymentMethodId: paymentMethod.id,
                returnUrl: window.location.href
            });

            console.log('Server confirmation result:', result);

            // Step 4: Handle response
            if (result.redirectUrl) {
                // 3DS required - redirect to authentication page
                // After authentication, webhook will update Opportunity
                window.location.href = result.redirectUrl;
            } else if (result.success) {
                // Payment succeeded without 3DS
                // Show processing message while webhook updates Opportunity
                this.paymentSuccess = true;
                this.showPaymentForm = false;
                this._cleanupPaymentElement();

                // Poll for wire updates (webhook should fire within 1-3 seconds)
                this._pollForPaymentUpdate();
            } else {
                // Error occurred
                this.errorMessage = result.errorMessage || 'Payment failed. Please try again.';
            }
        } catch (error) {
            this.errorMessage = this._extractError(error);
        } finally {
            this.isProcessing = false;
        }
    }

    handleCancel() {
        this._cleanupPaymentElement();
        this.showPaymentForm = false;
        this.paymentElementMounted = false;
        this.errorMessage = '';
    }

    handleRetry() {
        this.errorMessage = '';
        this.initError = false;
    }

    _pollForPaymentUpdate() {
        // Poll the wire adapter to check if webhook has updated Opportunity
        // Typically webhooks fire within 1-3 seconds
        const pollInterval = setInterval(() => {
            getRecordNotifyChange([{ recordId: this.recordId }]);
        }, 2000);

        // Stop polling after 10 seconds
        setTimeout(() => {
            clearInterval(pollInterval);
        }, 10000);
    }

    _cleanupPaymentElement() {
        if (this.paymentElement) {
            try {
                this.paymentElement.unmount();
            } catch (e) {
                /* already unmounted */
            }
            this.paymentElement = null;
            this.paymentElementMounted = false;
        }
        this.elements = null;
    }

    _extractError(error) {
        if (error?.body?.message) return error.body.message;
        if (error?.message) return error.message;
        return 'An unexpected error occurred.';
    }
}
