public class CreateCheckoutSessionAction {

    public class Input {
        @InvocableVariable(label='Stripe Account Record ID' required=true)
        public String accountRecordId;

        @InvocableVariable(label='Amount in cents' required=true description='Amount in the smallest currency unit (e.g., 10000 = $100.00 USD)')
        public Integer amount;

        @InvocableVariable(label='Currency' required=true description='Three-letter ISO currency code (e.g., usd)')
        public String currencyCode;

        @InvocableVariable(label='Product Name' required=true description='Display name for the line item')
        public String productName;

        @InvocableVariable(label='Success URL' required=true)
        public String successUrl;

        @InvocableVariable(label='Cancel URL' required=true)
        public String cancelUrl;

        @InvocableVariable(label='Quantity' description='Defaults to 1 if not provided')
        public Integer quantity;

        @InvocableVariable(label='Customer Email' description='Pre-fill customer email on the checkout page')
        public String customerEmail;

        @InvocableVariable(label='Idempotency Key')
        public String idempotencyKey;
    }

    public class Output {
        @InvocableVariable(label='Checkout Session ID')
        public String sessionId;

        @InvocableVariable(label='Checkout URL')
        public String checkoutUrl;

        @InvocableVariable(label='Is Success')
        public Boolean isSuccess;

        @InvocableVariable(label='Error Message')
        public String errorMessage;
    }

    @InvocableMethod(label='Create Stripe Checkout Session' description='Creates a Stripe Checkout Session for a one-time payment with inline price data' category='Stripe Recipes' callout=true)
    public static List<Output> createCheckoutSession(List<Input> inputs) {
        List<Output> outputs = new List<Output>();

        for (Input input : inputs) {
            Output output = new Output();
            try {
                stripeGC.v02_CreateCOSsReqLineItemPdataProdData productData = new stripeGC.v02_CreateCOSsReqLineItemPdataProdData();
                productData.name = input.productName;

                stripeGC.v02_CreateCOSsReqLineItemPdata priceData = new stripeGC.v02_CreateCOSsReqLineItemPdata();
                priceData.r_currency = input.currencyCode;
                priceData.unitAmount = input.amount;
                priceData.productData = productData;

                stripeGC.v02_CreateCheckoutSessionsReqLineItem lineItem = new stripeGC.v02_CreateCheckoutSessionsReqLineItem();
                lineItem.priceData = priceData;
                lineItem.quantity = input.quantity != null ? input.quantity : 1;

                stripeGC.v02_CreateCheckoutSessions.Params params = new stripeGC.v02_CreateCheckoutSessions.Params();
                params.accountRecordId = input.accountRecordId;
                params.mode = 'payment';
                params.lineItems = new List<stripeGC.v02_CreateCheckoutSessionsReqLineItem>{ lineItem };
                params.successUrl = input.successUrl;
                params.cancelUrl = input.cancelUrl;
                params.idempotencyKey = input.idempotencyKey;
                params.ignoreBillingSyncEventProcessing = true;
                params.performDmlSaveAfterCalls = true;

                if (String.isNotBlank(input.customerEmail)) {
                    params.customerEmail = input.customerEmail;
                }

                List<stripeGC.v02_CheckoutSession> results =
                    stripeGC.v02_CreateCheckoutSessions.createCheckoutSessions_2025_04_30(
                        new List<stripeGC.v02_CreateCheckoutSessions.Params>{ params }
                    );

                if (!results.isEmpty() && results[0] != null) {
                    output.sessionId = results[0].id;
                    output.checkoutUrl = results[0].url;
                    output.isSuccess = true;
                } else {
                    output.isSuccess = false;
                    output.errorMessage = 'No response returned from Stripe API';
                }
            } catch (Exception e) {
                output.isSuccess = false;
                output.errorMessage = e.getMessage();
            }
            outputs.add(output);
        }

        return outputs;
    }
}
