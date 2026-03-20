public with sharing class StripePaymentController {

    public class PaymentConfig {
        @AuraEnabled public String publishableKey;
        @AuraEnabled public String clientSecret;
        @AuraEnabled public String paymentIntentId;
        @AuraEnabled public Decimal amount;
        @AuraEnabled public String currencyCode;
        @AuraEnabled public String customerEmail;
        @AuraEnabled public String opportunityName;
    }

    public class ConfirmationResult {
        @AuraEnabled public Boolean success;
        @AuraEnabled public String status;
        @AuraEnabled public String redirectUrl;
        @AuraEnabled public String errorMessage;
        @AuraEnabled public String paymentIntentId;
        @AuraEnabled public String chargeId;
    }

    @AuraEnabled
    public static PaymentConfig createPaymentIntent(Id opportunityId) {
        Opportunity opp = [
            SELECT Id, Name, Amount, StageName, AccountId
            FROM Opportunity
            WHERE Id = :opportunityId
            WITH USER_MODE
            LIMIT 1
        ];

        if (opp.Amount == null || opp.Amount <= 0) {
            throw new AuraHandledException('Opportunity must have a positive Amount value.');
        }

        String contactEmail;
        List<OpportunityContactRole> roles = [
            SELECT Contact.Email
            FROM OpportunityContactRole
            WHERE OpportunityId = :opportunityId AND IsPrimary = true
            WITH USER_MODE
            LIMIT 1
        ];
        if (!roles.isEmpty() && roles[0].Contact.Email != null) {
            contactEmail = roles[0].Contact.Email;
        }

        stripeGC__Stripe_Account__c stripeAccount = [
            SELECT Id, stripeGC__Publishable_Key__c
            FROM stripeGC__Stripe_Account__c
            WHERE stripeGC__Is_Connected__c = true
            WITH USER_MODE
            ORDER BY CreatedDate ASC
            LIMIT 1
        ];

        if (String.isBlank(stripeAccount.stripeGC__Publishable_Key__c)) {
            throw new AuraHandledException(
                'Stripe Account does not have a Publishable Key configured. ' +
                'Add the publishable key in Setup > Stripe > Accounts.'
            );
        }

        stripeGC.v02_CreatePaymentIntents.Params params = new stripeGC.v02_CreatePaymentIntents.Params();
        params.accountRecordId = stripeAccount.Id;
        params.amount = (Integer)(opp.Amount * 100);
        params.r_currency = 'usd';
        params.setupFutureUsage = 'off_session';
        params.description = 'Payment for Opportunity: ' + opp.Name;
        params.performDmlSaveAfterCalls = true;
        params.ignoreBillingSyncEventProcessing = true;

        if (opp.AccountId != null) {
            List<stripeGC__Customer__c> customers = [
                SELECT stripeGC__Stripe_Id__c
                FROM stripeGC__Customer__c
                WHERE stripeGC__Account__c = :opp.AccountId
                WITH USER_MODE
                LIMIT 1
            ];
            if (!customers.isEmpty() && String.isNotBlank(customers[0].stripeGC__Stripe_Id__c)) {
                params.customer = customers[0].stripeGC__Stripe_Id__c;
            }
        }

        stripeGC.v02_Metadata metadata = new stripeGC.v02_Metadata();
        metadata.listAdditionalStringField = new List<stripeGC.v02_AdditionalString>{
            new stripeGC.v02_AdditionalString('opportunity_id', opportunityId),
            new stripeGC.v02_AdditionalString('opportunity_name', opp.Name)
        };
        params.metadata = metadata;

        if (String.isNotBlank(contactEmail)) {
            params.receiptEmail = contactEmail;
        }

        List<stripeGC.v02_PaymentIntent> results =
            stripeGC.v02_CreatePaymentIntents.createPaymentIntents_2025_04_30(
                new List<stripeGC.v02_CreatePaymentIntents.Params>{ params }
            );

        if (results.isEmpty() || results[0] == null || String.isBlank(results[0].clientSecret)) {
            throw new AuraHandledException('Failed to create Payment Intent with Stripe.');
        }

        PaymentConfig config = new PaymentConfig();
        config.publishableKey = stripeAccount.stripeGC__Publishable_Key__c;
        config.clientSecret = results[0].clientSecret;
        config.paymentIntentId = results[0].id;
        config.amount = opp.Amount;
        config.currencyCode = 'USD';
        config.customerEmail = contactEmail;
        config.opportunityName = opp.Name;

        return config;
    }

    @AuraEnabled
    public static ConfirmationResult confirmPaymentServerSide(
        Id opportunityId,
        String paymentIntentId,
        String paymentMethodId,
        String returnUrl
    ) {
        ConfirmationResult result = new ConfirmationResult();
        result.success = false;

        try {
            // Get Stripe Account
            stripeGC__Stripe_Account__c stripeAccount = [
                SELECT Id
                FROM stripeGC__Stripe_Account__c
                WHERE stripeGC__Is_Connected__c = true
                WITH USER_MODE
                ORDER BY CreatedDate ASC
                LIMIT 1
            ];

            // Confirm PaymentIntent with payment method
            stripeGC.v02_PostPaymentIntentsConfirm.Params params =
                new stripeGC.v02_PostPaymentIntentsConfirm.Params();
            params.accountRecordId = stripeAccount.Id;
            params.intent = paymentIntentId;
            params.paymentMethod = paymentMethodId;
            params.returnUrl = returnUrl;
            params.performDmlSaveAfterCalls = true;
            params.ignoreBillingSyncEventProcessing = true;

            List<stripeGC.v02_PaymentIntent> results =
                stripeGC.v02_PostPaymentIntentsConfirm.postPaymentIntentsConfirm_2025_04_30(
                    new List<stripeGC.v02_PostPaymentIntentsConfirm.Params>{ params }
                );

            if (results.isEmpty() || results[0] == null) {
                result.errorMessage = 'Failed to confirm payment with Stripe.';
                return result;
            }

            stripeGC.v02_PaymentIntent paymentIntent = results[0];
            result.status = paymentIntent.status;
            result.paymentIntentId = paymentIntent.id;

            // Check if 3DS redirect is required
            if (paymentIntent.nextAction != null &&
                paymentIntent.nextAction.type == 'redirect_to_url' &&
                paymentIntent.nextAction.redirectToUrl != null) {
                result.redirectUrl = paymentIntent.nextAction.redirectToUrl.url;
                return result;
            }

            // Check payment status
            if (paymentIntent.status == 'succeeded') {
                result.success = true;
                result.chargeId = paymentIntent.latestCharge;
                // Note: Opportunity fields will be updated via webhook + Flow
                // This ensures async payment methods are handled correctly
            } else if (paymentIntent.status == 'requires_action') {
                result.errorMessage = 'Additional authentication is required.';
            } else if (paymentIntent.status == 'requires_payment_method') {
                result.errorMessage = 'Payment method was declined. Please try a different payment method.';
            } else {
                result.errorMessage = 'Payment could not be completed. Status: ' + paymentIntent.status;
            }

            return result;

        } catch (Exception e) {
            result.errorMessage = e.getMessage();
            return result;
        }
    }

    @AuraEnabled
    public static void recordPaymentSuccess(Id opportunityId, String paymentIntentId, String chargeId) {
        Opportunity opp = new Opportunity(
            Id = opportunityId,
            Payment_Captured__c = true,
            Stripe_Payment_ID__c = paymentIntentId
        );
        update opp;

        if (String.isNotBlank(chargeId)) {
            List<stripeGC__Charge__c> charges = [
                SELECT Id
                FROM stripeGC__Charge__c
                WHERE stripeGC__Stripe_Id__c = :chargeId
                WITH USER_MODE
                LIMIT 1
            ];
            if (!charges.isEmpty()) {
                // Charge already synced — link it immediately
                charges[0].Opportunity__c = opportunityId;
                update charges[0];
            } else {
                // Charge webhook hasn't been processed yet — retry async
                System.enqueueJob(
                    new ChargeOpportunityLinkerQueueable(opportunityId, chargeId, 0),
                    1
                );
            }
        }
    }
}
