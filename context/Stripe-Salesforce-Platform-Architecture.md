# Stripe Universal Connector for Salesforce

## Overview

This is the **main managed Salesforce package** for Stripe (namespace: `stripeGC`). It provides the core integration between Stripe and Salesforce, including account management, event handling, object syncing, and a setup wizard. Current version: **2.7.0**, API version: **64.0**.

## Architecture

### Package Hierarchy

```
Stripe Universal Connector (managed package, v2.7.0)
├── salesforce-connector-AutoGen (Stripe API invocable actions)
│   └── stripe-billing-salesforce-flows (subscription schedule automation)
├── stripe-flow-recipes/ (AI-generated Flow examples — see rules/flow-builder.mdc)
└── stripe-checkout-lwc/ (LWC + Stripe Payment Element — see rules/lwc-stripe-payment.mdc)
```

All Salesforce packages share the `stripeGC` namespace. Extensions are unmanaged packages that depend on the base managed package.

### Salesforce App (`force-app/`)

**Apex classes** (500+): API model wrappers, invocable actions, services (Callouts, Constants, SetupAssistant, Utilities, etc.)

**LWC components**: Setup wizard steps (`setup`, `setupStep`, `connectionSettingsSetupStep`, `syncRecordPreferencesSetupStep`, `extensionsSettingsSetupStep`, `addAccountSetupStep`), runtime UI (`connector`, `fieldMappingTable`, `fieldPicker`, `picker`, `picklistPicker`, `extensionModal`, `modal`, `toast`, `about`, `billingSyncSettings`, `addPlatformAccount`, `utils`)

**Custom objects**:
- Stripe-specific: `Stripe_Account__c`, `Stripe_Connected_Account__c`, `Stripe_Event__c`, `Stripe_Webhook_Endpoint__c`
- Billing: `Customer__c`, `Invoice__c`, `Invoice_Line_Item__c`, `Charge__c`, `Payment_Method__c`, `Price__c`, `Product__c`, `Product_Coupon__c`, `Coupon__c`, `Discount__c`
- Subscriptions: `Subscription__c`, `Subscription_Item__c`, `Subscription_Schedule__c`, `Subscription_Phase__c`, `Subscription_Phase_Item__c`
- Operations: `Api_Transaction__c`, `Sync_Log__c`, `Setup_Data__c`, `Setup_Settings__c`
- Custom metadata: `Setup_Configuration__mdt`, `Recursion_Detection_Configuration__mdt`
- Standard object extensions: `Account`, `Order`, `Contract`, `Product2`, `PricebookEntry`

**Triggers**: `StripeEvent`, `SyncLog`

## Calling Stripe APIs: Three Approaches

The Universal Connector provides three ways to call Stripe APIs, each suited for different use cases:

### 1. AutoGen v02_* Invocable Actions (Recommended for most cases)

**What:** 241 auto-generated invocable actions for Stripe API 2025-04-30
- Examples: `v02_CreateCustomers`, `v02_CreatePaymentIntents`, `v02_CreateSubscriptions`
- Full list: See `invocable-actions-reference.md`
- Field details: See `models-reference.md` (2,175 request/response models, 8,461 fields)

**When to use:**
- Stripe API endpoint exists in v02_* actions (covers 95%+ of common operations)
- You want strongly-typed request/response models
- You need IntelliSense/autocomplete in Flow Builder or Apex

**Example (Flow XML):**
```xml
<actionName>stripeGC__v02_CreateCustomers</actionName>
<inputParameters>
    <name>accountRecordId</name>
    <value><elementReference>Get_Stripe_Account.Id</elementReference></value>
</inputParameters>
<inputParameters>
    <name>name</name>
    <value><stringValue>Rocket Rides</stringValue></value>
</inputParameters>
<inputParameters>
    <name>email</name>
    <value><stringValue>foo@bar.com</stringValue></value>
</inputParameters>
```

**Example (Apex):**
```apex
stripeGC.v02_CreateCustomers.Params params = new stripeGC.v02_CreateCustomers.Params();
params.accountRecordId = stripeAccount.Id;
params.name = 'Rocket Rides';
params.email = 'foo@bar.com';

List<stripeGC.v02_Customer> customers =
    stripeGC.v02_CreateCustomers.createCustomers_2025_04_30(new List<stripeGC.v02_CreateCustomers.Params>{ params });
```

### 2. AgnosticInvocable (For any Stripe API endpoint)

**What:** Low-level raw API invocable for calling ANY Stripe endpoint with any HTTP method
- Class: `stripeGC.AgnosticInvocable`
- Label in Flow Builder: **"Call a Stripe API Endpoint"**
- Returns: `List<String>` (raw JSON response)

**When to use:**
- Stripe API endpoint NOT available in v02_* actions (new endpoints, beta features)
- Need a different API version (e.g., 2022-11-15 instead of 2025-04-30)
- Custom/internal Stripe endpoints
- Quick prototyping without waiting for AutoGen updates

**Advantages:**
- ✅ Still benefits from connector auth (no custom named credentials)
- ✅ Still benefits from webhook ingestion and event processing
- ✅ Automatic idempotency key generation
- ✅ Sync log and API transaction tracking
- ✅ Can override API version per-call

**Parameters:**
| Parameter | Type | Required | Description |
|---|---|---|---|
| `endpoint` | String | ✓ | Stripe API endpoint (e.g., `/v1/payment_links`, `/v1/customers/cus_123`) |
| `method` | String | ✓ | HTTP method: `GET`, `POST`, `DELETE` |
| `accountId` | String | ✓ | Salesforce record ID of `Stripe_Account__c` |
| `requestBody` | String | | URL-encoded form data (e.g., `name=Rocket Rides&email=foo@bar.com`) |
| `apiVersion` | String | | Stripe API version (defaults to 2025-04-30 if not provided) |
| `connectAccount` | String | | Stripe Connected Account ID for Connect platforms |
| `idempotencyKey` | String | | Custom idempotency key (auto-generated if not provided) |
| `performDmlSaveAfterCalls` | Boolean | | Save logs after callouts (default: `true`) |
| `ignoreBillingSyncEventProcessing` | Boolean | | Prevent infinite loops (default: `false`) |
| `expand[]` | List<String> | | Expand nested objects (e.g., `['customer', 'subscription']`) |

**Example (Flow XML):**
```xml
<actionName>stripeGC__AgnosticInvocable</actionName>
<inputParameters>
    <name>endpoint</name>
    <value><stringValue>/v1/payment_links</stringValue></value>
</inputParameters>
<inputParameters>
    <name>method</name>
    <value><stringValue>POST</stringValue></value>
</inputParameters>
<inputParameters>
    <name>accountId</name>
    <value><elementReference>Get_Stripe_Account.Id</elementReference></value>
</inputParameters>
<inputParameters>
    <name>requestBody</name>
    <value><stringValue>line_items[0][price]=price_1234&line_items[0][quantity]=1</stringValue></value>
</inputParameters>
<inputParameters>
    <name>apiVersion</name>
    <value><stringValue>2025-04-30</stringValue></value>
</inputParameters>
```

**Example (Apex):**
```apex
stripeGC.RawInvocableParameters params = new stripeGC.RawInvocableParameters();
params.endpoint = '/v1/payment_links';
params.method = 'POST';
params.accountId = stripeAccount.Id;
params.requestBody = 'line_items[0][price]=price_1234&line_items[0][quantity]=1';
params.apiVersion = '2025-04-30';

List<String> results = stripeGC.AgnosticInvocable.callStripeEndpoint(
    new List<stripeGC.RawInvocableParameters>{ params }
);

// Parse JSON response
Map<String, Object> paymentLink = (Map<String, Object>) JSON.deserializeUntyped(results[0]);
String paymentLinkUrl = (String) paymentLink.get('url');
```

**Request Body Format:**
AgnosticInvocable expects URL-encoded form data (Stripe's default format), not JSON:
- ✅ Correct: `line_items[0][price]=price_123&line_items[0][quantity]=1`
- ❌ Wrong: `{"line_items": [{"price": "price_123", "quantity": 1}]}`

Use `EncodingUtil.urlEncode()` in Apex to build complex request bodies programmatically.

### 3. Helper Invocable Classes (For simplified/org-specific patterns)

**What:** Custom `@InvocableMethod` wrappers that accept primitives and construct complex Stripe API calls internally
- Example: `CreateCheckoutSessionAction` (accepts amount, currency, productName → builds lineItems internally)

**When to use:**
- Repeated pattern across multiple flows (e.g., "create customer from account")
- Org-specific business logic (validation, defaults, field mapping)
- Simplified interface for non-technical admins
- Complex nested object construction (lineItems with inline priceData)

**How to build:**
1. Create Apex class with `@InvocableMethod`
2. Define Input class with `@InvocableVariable` primitives (String, Integer, Boolean)
3. Internally construct v02_* model objects using `models-reference.md` for field structure
4. Call v02_* invocable action with constructed objects
5. Define Output class with `@InvocableVariable` results

**Example:**
See `stripe-flow-recipes/force-app/main/default/classes/CreateCheckoutSessionAction.cls` for a complete working example.

## Decision Framework: Which Approach to Use?

```
┌─────────────────────────────────────────────────────────────┐
│ Does v02_* invocable exist for this endpoint?              │
│ (Search invocable-actions-reference.md)                     │
└─────────────────┬───────────────────────────────────────────┘
                  │
        ┌─────────┴──────────┐
        │ YES                │ NO
        ▼                    ▼
┌───────────────────┐  ┌─────────────────────────┐
│ Is it simple      │  │ Use AgnosticInvocable   │
│ construction?     │  │ (raw API call)          │
│ (few params, no   │  └─────────────────────────┘
│ complex nesting)  │
└────────┬──────────┘
         │
    ┌────┴────┐
    │ YES     │ NO
    ▼         ▼
┌─────────┐ ┌──────────────────────┐
│ Use     │ │ Repeated pattern or  │
│ v02_*   │ │ org-specific logic?  │
│ direct  │ └──────────┬───────────┘
└─────────┘            │
              ┌────────┴────────┐
              │ YES             │ NO
              ▼                 ▼
        ┌──────────────┐  ┌─────────────┐
        │ Build helper │  │ Use v02_*   │
        │ class        │  │ with Apex   │
        │              │  │ variables   │
        └──────────────┘  └─────────────┘
```

**Examples by scenario:**
- Simple customer creation → Use `v02_CreateCustomers` directly
- Payment link with complex lineItems (one-off) → Use `v02_CreatePaymentLinks` with Apex variables
- Payment link pattern used in 10 flows → Build `CreatePaymentLinkAction` helper
- Stripe API endpoint not in v02_* (e.g., new beta feature) → Use `AgnosticInvocable`
- Require a specific API version → Use `AgnosticInvocable` with `apiVersion` override

## Key Files

- `sfdx-project.json` — Package definitions, version history, and aliases
- `force-app/main/default/classes/Constants.cls` — App-wide constants
- `force-app/main/default/classes/Callouts.cls` — HTTP callout logic to Stripe
- `force-app/main/default/classes/SetupAssistant.cls` — Setup wizard controller

## Development Notes

- Namespace: `stripeGC` (all Apex references across extensions use this namespace)
- Post-install script: `StripeInstallHandler`
- Permission sets: `Global_Connector_Integration_User` (main app), `Stripe_Connector_Billing_User` (billing extension)
- Examples and demos: see sibling repo `salesforce-connector-examples/`

## Local Development Setup

### Salesforce CLI
- CLI: Use `sf` commands (not legacy `sfdx`)

### Key Commands
- Deploy: `sf project deploy start --source-dir force-app -o <your-org-alias>`
- Retrieve: `sf project retrieve start --source-dir force-app -o <your-org-alias>`
- Query metadata: `sf data query --query "SELECT ..." --use-tooling-api -o <your-org-alias>`
- Open org: `sf org open -o <your-org-alias>`
- Describe object (verify fields): `sf sobject describe -s <ObjectName> -o <your-org-alias>`
  - Standard objects: `sf sobject describe -s Opportunity -o <your-org-alias>`
  - Stripe custom objects: `sf sobject describe -s stripeGC__Customer__c -o <your-org-alias>`
  - Use this to verify field API names exist before generating code that references them

## Context for Building Flows

Validated flow recipes live in the sibling project `stripe-flow-recipes/`. See `rules/flow-builder.mdc` for detailed generation rules.

Key learnings:
- AutoGen model classes (v02_Address, etc.) use `@AuraEnabled` only — they cannot be used as Flow Apex variables in source deployments. Use Apex helper classes for complex inputs.
- Every flow element must have an incoming connector (except start). Verify all `targetReference` values after generation.
- Stripe Account resolution (lookup + null-check) is a required preamble for every flow making API calls.
- Use `AsyncAfterCommit` scheduled paths for any record-triggered flow that makes Stripe callouts.
- Pass primitive parameters directly to v02 invocable actions when possible; only create helper classes for complex/nested inputs (lists, objects).

### Org-Specific Fields (IMPORTANT)

Flows that write Stripe API response values (e.g., a hosted invoice URL, a PaymentIntent ID, or a checkout session URL) back to Salesforce records require custom fields on the target object to store them. These fields are org-specific and are NOT part of the Stripe managed package.

Rules:
- Never assume a custom field exists on a standard object. A field like `Stripe_Hosted_Invoice_URL__c` on Opportunity is something the developer creates in their org — it does not ship with the connector.
- If you have org access: use `sf sobject describe -s Opportunity -o <org-alias>` to verify field existence before generating code that references it.
- If you do NOT have org access: use a descriptive placeholder name, mark it clearly in the generated XML with a comment, and add it to the pre-activation checklist as a field the developer must create or map before deploying.
- Reuse existing fields when possible. If an org already has `Payment_Status__c`, don't create `Stripe_Payment_Status__c`.
- Stripe managed package fields (prefixed `stripeGC__`) on custom objects like `Customer__c`, `Invoice__c`, `Charge__c` are safe to reference — they ship with the connector. Standard object extensions like `Account.stripeGC__Customer_Id__c` also exist. See the custom objects table for the full list.

## Context for Building LWC with Stripe Payment Element

A validated LWC + Stripe Payment Element integration lives in the sibling project `stripe-checkout-lwc/`. See `rules/lwc-stripe-payment.mdc` for detailed patterns.

Key learnings:
- CSP Trusted Sites must have ALL directive checkboxes checked (especially `frame-src` for Payment Element iframes) — configure via Setup UI, not metadata deployment.
- Load Stripe.js from CDN via `loadScript()` — never self-host. Works natively under LWS in the `one.app` Aura shell.
- Use data attributes (`data-stripe-element`) not IDs for Payment Element containers (Shadow DOM scopes IDs).
- Mount Payment Element in `renderedCallback()` with a guard flag, not `connectedCallback()`.
- Backend uses `Stripe_Account__c.Publishable_Key__c` (already stored) and `v02_CreatePaymentIntents` — no custom API key management needed. `clientSecret` is transient, never persisted.

### 3D Secure + Lightning Web Security (CRITICAL)

**Problem**: LWS blocks Stripe.js from injecting DOM elements during 3DS authentication. `stripe.confirmPayment()` fails with `"Lightning Web Security: Cannot insert child DIV into BODY"` error when 3DS is required.

**Solution**: Server-side confirmation with deferred-based PaymentIntent (manual payment method creation):

1. **Enable manual mode** in Elements config:
   ```javascript
   this.elements = this.stripe.elements({
       clientSecret: config.clientSecret,
       paymentMethodCreation: 'manual'  // Critical for deferred intent
   });
   ```

2. **Client creates payment method only** (no confirmation):
   ```javascript
   const { error, paymentMethod } = await this.stripe.createPaymentMethod({
       elements: this.elements,
       params: { billing_details: { email: this.customerEmail } }
   });
   ```

3. **Server confirms payment** via `v02_PostPaymentIntentsConfirm`:
   ```apex
   stripeGC.v02_PostPaymentIntentsConfirm.Params params =
       new stripeGC.v02_PostPaymentIntentsConfirm.Params();
   params.accountRecordId = stripeAccount.Id;
   params.intent = paymentIntentId;
   params.paymentMethod = paymentMethodId;
   params.returnUrl = returnUrl;

   List<stripeGC.v02_PaymentIntent> results =
       stripeGC.v02_PostPaymentIntentsConfirm.postPaymentIntentsConfirm_2025_04_30(
           new List<stripeGC.v02_PostPaymentIntentsConfirm.Params>{ params }
       );

   // Check for 3DS redirect
   if (results[0].nextAction != null &&
       results[0].nextAction.type == 'redirect_to_url') {
       return results[0].nextAction.redirectToUrl.url;
   }
   ```

4. **Plain JavaScript redirect** for 3DS (no Stripe.js involvement):
   ```javascript
   if (result.redirectUrl) {
       window.location.href = result.redirectUrl;  // No LWS violation
   }
   ```

**Why this works**: `stripe.createPaymentMethod()` only tokenizes card data (no DOM injection). Server-side confirmation happens entirely in Apex. Plain JavaScript redirect has no LWS restrictions. Stripe.js never calls `confirmPayment()`.

### Webhook-Based State Management (RECOMMENDED)

**Problem**: After 3DS redirect, Salesforce routing strips URL parameters before `connectedCallback()` runs. SessionStorage/localStorage don't reliably persist across Lightning navigation.

**Solution**: Use webhook architecture to update Salesforce records asynchronously:

1. **Set PaymentIntent metadata** with Salesforce record ID when creating PaymentIntent
2. **Create Apex trigger** on `stripeGC__Stripe_Event__c` to parse `payment_intent.succeeded` events
3. **Parse raw webhook JSON** from `stripeGC__Request_Body__c` field (metadata is NOT on data model):
   ```apex
   Map<String, Object> eventData = (Map<String, Object>)
       JSON.deserializeUntyped(event.stripeGC__Request_Body__c);
   Map<String, Object> dataObject = (Map<String, Object>) eventData.get('object');
   Map<String, Object> metadata = (Map<String, Object>) dataObject.get('metadata');
   String recordId = (String) metadata.get('salesforce_record_id');
   ```
4. **Update Salesforce record** with payment status and PaymentIntent ID

**Why webhooks**: Works for all payment methods (card, 3DS, SEPA, ACH). No dependency on fragile client-side return detection. Single source of truth for payment state. Handles async payment methods that settle hours/days later.

### Org-Specific Fields (IMPORTANT)

Apex controllers that write Stripe results back to Salesforce records (e.g., setting `Payment_Captured__c = true` or storing a `Stripe_Payment_ID__c` on Opportunity) reference custom fields that are org-specific. These fields do not ship with the connector.

Rules:
- Never assume a custom field exists on a standard object. Use `sf sobject describe -s <ObjectName> -o <org-alias>` to verify field existence before generating Apex that references it.
- Stripe managed package fields (prefixed `stripeGC__`) on custom objects are safe to reference — they ship with the connector.
- If generating an Apex controller that reads or writes org-specific fields, list those fields in a deployment note so the developer knows what to create.
