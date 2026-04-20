# Stripe Connector AutoGen — API Action Invocables

## Overview

This is an **unmanaged Salesforce extension** (namespace: `stripeGC`) that provides auto-generated Stripe API invocable actions and model classes for use in **Salesforce Flow Builder** and **Apex**. Classes are generated from the Stripe OpenAPI spec.

**What's included:**
- **244 invocable actions** (`v02_*`) covering the full Stripe API surface
- **2,175 model classes** (8,461 fields) for requests and responses
- **Cast operations** for webhook/event payload deserialization

**For comprehensive lookups:**
- See `invocable-actions-reference.md` for complete action catalog with parameters
- See `models-reference.md` for complete model/field reference

## When to Use This Package

**Use v02_* actions (RECOMMENDED for 95%+ of use cases):**
- Standard Stripe API operations (create customers, payment intents, subscriptions, etc.)
- You want strongly-typed request/response models with IntelliSense/autocomplete
- You need parameter validation and clear error messages
- Building subscription automation, checkout flows, billing integrations

**Use AgnosticInvocable instead if:**
- Stripe API endpoint NOT available in v02_* actions (new endpoints, beta features)
- You need a different API version (e.g., 2026-06-30 Flexible Billing Mode instead of 2025-04-30)
- Quick prototyping without waiting for AutoGen updates

**Use Helper Invocable Classes if:**
- You have repeated patterns across multiple flows (e.g., "create customer from account")
- You need org-specific business logic or simplified interfaces for admins
- Complex nested object construction that's cleaner in Apex (see `examples/` for working examples)

## Relationship to Other Packages

This extension depends on the **Stripe Universal Connector** (base managed package):
- 2025-04-30 version depends on Universal Connector@2.x.x
- 2022-11-15 version depends on Universal Connector@1.x.x

The **stripe-billing-salesforce-flows** extension depends on this package (2025-04-30 version).

## API Schema Versions

Two API schema versions are maintained:

| Version | Status | Base Dependency |
|---------|--------|-----------------|
| **2025-04-30** | Latest (default) | Universal Connector@2.x.x |
| **2022-11-15** | Legacy | Universal Connector@1.x.x |

## How to Use v02_* Actions

### In Flow Builder

1. Add Action element to your flow
2. Search for the API operation (e.g., "v02_CreateCustomers")
3. Set required parameters:
   - `accountRecordId` — Always required (Salesforce ID of your Stripe_Account__c record)
   - API-specific parameters (e.g., `email`, `name`, `description`)
4. Store output in a variable (strongly-typed v02_* model object)
5. Access response fields via dot notation (e.g., `{!CreateCustomer.id}`, `{!CreateCustomer.email}`)

**Common parameters (all v02_* actions):**
- `accountRecordId` (String, required) — Stripe Account record ID
- `connectAccount` (String) — Connected account ID for platforms
- `idempotencyKey` (String) — Custom idempotency key (auto-generated if not provided)
- `performDmlSaveAfterCalls` (Boolean, default: true) — Save sync logs after callouts
- `ignoreBillingSyncEventProcessing` (Boolean, default: true) — Prevent infinite loops

### In Apex

Call v02_* actions programmatically:

```apex
// 1. Construct params object
stripeGC.v02_CreateCustomers.Params params = new stripeGC.v02_CreateCustomers.Params();
params.accountRecordId = [SELECT Id FROM stripeGC__Stripe_Account__c LIMIT 1].Id;
params.email = 'customer@example.com';
params.name = 'Rocket Rides';
params.description = 'Enterprise customer';

// 2. Call invocable (returns List<v02_Customer>)
List<stripeGC.v02_Customer> results =
    stripeGC.v02_CreateCustomers.createCustomers_2025_04_30(
        new List<stripeGC.v02_CreateCustomers.Params>{ params }
    );

// 3. Access response fields
String stripeCustomerId = results[0].id;
String customerEmail = results[0].email;
Long createdTimestamp = results[0].created;
```

## Understanding Models (Request/Response Structures)

**Response models** (e.g., `v02_Customer`, `v02_PaymentIntent`) are returned by invocable actions:
```apex
stripeGC.v02_Customer customer = results[0];
String customerId = customer.id;              // Access via dot notation
String email = customer.email;
Long created = customer.created;
```

**Request models** (e.g., `v02_CreatePaymentIntentsReqPaymentMethodOptions`) are used for complex nested inputs:
```apex
// When v02_CreatePaymentIntents needs paymentMethodOptions
stripeGC.v02_CreatePaymentIntentsReqPaymentMethodOptions pmOptions =
    new stripeGC.v02_CreatePaymentIntentsReqPaymentMethodOptions();
pmOptions.card = new stripeGC.v02_CreatePaymentIntentsReqPaymentMethodOptionsCard();
pmOptions.card.requestThreeDSecure = 'automatic';

params.paymentMethodOptions = pmOptions;
```

**How to find available fields:**
- See `models-reference.md` (2,175 models, 8,461 fields)
- Search by model name (e.g., "v02_Customer") to see all available fields
- Includes both request models (for constructing inputs) and response models (for reading outputs)

## Common Patterns

### Pattern 1: Create a Customer from Account
```apex
public class CreateCustomerFromAccount {
    @InvocableMethod(label='Create Stripe Customer from Account')
    public static List<String> execute(List<Params> paramsList) {
        Params params = paramsList[0];
        Account acc = [SELECT Name, BillingEmail FROM Account WHERE Id = :params.accountId];

        stripeGC.v02_CreateCustomers.Params createParams = new stripeGC.v02_CreateCustomers.Params();
        createParams.accountRecordId = params.stripeAccountId;
        createParams.name = acc.Name;
        createParams.email = acc.BillingEmail;

        List<stripeGC.v02_Customer> customers =
            stripeGC.v02_CreateCustomers.createCustomers_2025_04_30(
                new List<stripeGC.v02_CreateCustomers.Params>{ createParams }
            );

        return new List<String>{ customers[0].id };
    }

    public class Params {
        @InvocableVariable(required=true) public String accountId;
        @InvocableVariable(required=true) public String stripeAccountId;
    }
}
```

### Pattern 2: Retrieve and Parse Response
```apex
// Get payment intent
stripeGC.v02_RetrievePaymentIntents.Params params = new stripeGC.v02_RetrievePaymentIntents.Params();
params.accountRecordId = stripeAccountId;
params.paymentIntent = 'pi_123';

List<stripeGC.v02_PaymentIntent> results =
    stripeGC.v02_RetrievePaymentIntents.retrievePaymentIntents_2025_04_30(
        new List<stripeGC.v02_RetrievePaymentIntents.Params>{ params }
    );

// Access nested fields
stripeGC.v02_PaymentIntent pi = results[0];
String status = pi.status;                    // 'succeeded', 'requires_payment_method', etc.
Long amount = pi.amount;                       // Amount in cents
String currency = pi.currency;                 // 'usd', 'eur', etc.
String customerId = pi.customer;               // Customer ID (if set)
```

### Pattern 3: Complex Nested Object Construction
When Flow can't handle deep nesting (e.g., lineItems with inline priceData), build in Apex:
```apex
// Create checkout session with inline price
stripeGC.v02_CreateCheckoutSessions.Params params = new stripeGC.v02_CreateCheckoutSessions.Params();
params.accountRecordId = stripeAccountId;
params.mode = 'payment';
params.successUrl = 'https://example.com/success';
params.cancelUrl = 'https://example.com/cancel';

// Construct line item with inline price_data
stripeGC.v02_CreateCheckoutSessionsReqLineItem lineItem =
    new stripeGC.v02_CreateCheckoutSessionsReqLineItem();
lineItem.quantity = 1;
lineItem.priceData = new stripeGC.v02_CreateCheckoutSessionsReqLineItemPriceData();
lineItem.priceData.currency = 'usd';
lineItem.priceData.unitAmount = 2000;  // $20.00
lineItem.priceData.productData = new stripeGC.v02_CreateCheckoutSessionsReqLineItemPriceDataProductData();
lineItem.priceData.productData.name = 'Premium Subscription';

params.lineItems = new List<stripeGC.v02_CreateCheckoutSessionsReqLineItem>{ lineItem };

List<stripeGC.v02_CheckoutSession> sessions =
    stripeGC.v02_CreateCheckoutSessions.createCheckoutSessions_2025_04_30(
        new List<stripeGC.v02_CreateCheckoutSessions.Params>{ params }
    );

String sessionUrl = sessions[0].url;  // Redirect customer here
```

## For AI Agents

When generating code that calls Stripe APIs:

1. **Find the action:** Search `invocable-actions-reference.md` for available v02_* actions and their parameters
2. **Look up field structures:** Search `models-reference.md` for request/response model fields
3. **Use strongly-typed models:** Don't use AgnosticInvocable unless the endpoint doesn't exist in v02_*
4. **Set accountRecordId:** Always required on every v02_* action
5. **Handle complex nesting:** If Flow can't handle deep nesting, build a helper Apex class
6. **Access response fields:** Use dot notation (e.g., `{!Customer.id}` in Flow, `customer.id` in Apex)

## Reference Files

- `invocable-actions-reference.md` — Complete catalog of all 244 v02_* invocable actions with parameters
- `models-reference.md` — Complete reference for all 2,175 request/response models (8,461 fields)

## Development Notes

- Namespace: `stripeGC` (shared with base connector)
- The generated classes use `@InvocableMethod` and `@InvocableVariable` annotations for Flow Builder compatibility
