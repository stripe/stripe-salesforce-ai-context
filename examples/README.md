# Examples

Working code examples generated with AI tools and validated in test orgs.

These examples demonstrate validated patterns for building Stripe-Salesforce integrations using AI coding tools with the context files in this repo.

## Production Considerations

**Treat these examples as reference assets for learning and testing, not fully hardened production code.**

Before deploying to production:
- **Field-Level Security**: The Apex classes use plain `update` DML (system mode) for simplicity. For production, prefer `update as user` or `Security.stripInaccessible()` to enforce FLS on custom fields like `Payment_Captured__c` and `Stripe_Payment_ID__c`.
- **Server-side verification**: Always verify PaymentIntent status, amount, and currency server-side before marking records as paid. Never trust client-side payment confirmation alone.
- **Custom fields**: Examples reference org-specific custom fields (`Payment_Captured__c`, `Stripe_Payment_ID__c`, `Opportunity__c` on Charge) that must be created in your org.
- **Error handling**: Add org-specific error logging, monitoring, and alerting for payment failures.
- **Testing**: Deploy to scratch orgs first. Test with various payment methods, 3DS scenarios, and webhook timing.

See [context/rules/lwc-stripe-payment.mdc](../context/rules/lwc-stripe-payment.mdc) for production hardening guidance.

---

## Salesforce Flows

All Flows use real `v02_*` invocable actions from the Stripe App for Salesforce AutoGen extension, either directly or through custom Apex helper classes that wrap the v02 actions.

### **Create_Stripe_Customer_from_Opportunity.flow-meta.xml**
- **Trigger**: When Opportunity.StageName = "Closed Won"
- **Action**: Creates a Stripe Customer from the associated Account
- **Key Patterns**: AsyncAfterCommit, Stripe Account lookup, idempotency key, error logging
- **Source**: stripe-flow-recipes (validated)

### **Create_Checkout_Session_from_Opportunity.flow-meta.xml**
- **Trigger**: When Opportunity record is created/updated
- **Action**: Creates a Stripe Checkout Session with line items from Opportunity
- **Key Patterns**: AsyncAfterCommit, product/price mapping, redirect URL handling, custom Apex helper (CreateCheckoutSessionAction wraps v02_CreateCheckoutSessions)
- **Source**: stripe-flow-recipes (validated)

### **Create_Stripe_Invoice_from_Opportunity.flow-meta.xml**
- **Trigger**: Manual or automated from Opportunity
- **Action**: Creates and finalizes a Stripe Invoice
- **Key Patterns**: Invoice line items, customer resolution, finalization flow
- **Source**: testSFflows (validated)

---

## Lightning Web Components

### **stripePayment/**
- **Purpose**: Embed Stripe Payment Element on Salesforce record pages (Opportunity, Order, etc.)
- **Features**:
  - Creates PaymentIntent via Apex
  - Mounts Stripe Payment Element correctly (Shadow DOM, `data-stripe-element`)
  - Handles 3D Secure authentication with LWS compatibility
  - Server-side payment confirmation
  - Webhook-based state management
- **Key Files**:
  - `stripePayment.js` - LWC controller with Payment Element logic
  - `stripePayment.html` - Template with correct mounting strategy
  - `stripePayment.css` - Styling
  - `stripePayment.js-meta.xml` - LWC metadata
- **Source**: stripe-checkout-lwc (validated)

---

## Apex

### **StripePaymentController.cls**
- **Purpose**: Apex controller for the stripePayment LWC
- **Methods**:
  - `createPaymentIntent` - Creates PaymentIntent via v02_CreatePaymentIntents
  - `confirmPaymentServerSide` - Server-side payment verification
- **Key Patterns**: WITH USER_MODE security, proper error handling, PaymentIntent creation
- **Source**: stripe-checkout-lwc (validated)

### **CreateCheckoutSessionAction.cls**
- **Purpose**: Custom invocable action that wraps v02_CreateCheckoutSessions
- **Why**: Simplifies Flow usage by handling complex line item construction
- **Key Patterns**: Invocable pattern, wraps v02 action, idempotency support
- **Source**: stripe-flow-recipes (validated)

### **ChargeOpportunityLinkerQueueable.cls**
- **Purpose**: Handles webhook lag by retrying Charge__c lookups with exponential backoff
- **Why**: Stripe webhook events may arrive before Charge__c records are synced to Salesforce
- **Key Patterns**: Queueable with retry logic, used by StripePaymentController after payment confirmation
- **Source**: stripe-checkout-lwc (validated)

**Coming soon:**
- Additional invocable helpers for subscriptions and refunds

---

## How These Were Generated

1. **Context loaded**: AI tools read `context/LOAD_ALL.md` to gain full knowledge of Stripe App for Salesforce
2. **Prompted**: Natural language prompts describing the use case
3. **Generated**: AI tools produced Flow XML, LWC components, Apex classes
4. **Validated**: Deployed to scratch orgs, tested end-to-end
5. **Published**: Added here as reference patterns

Unlike static examples that go stale, these patterns evolve with the Stripe App for Salesforce and are maintained by the community.

---

## Usage

### Deploy to Your Org

This is a complete SFDX project. Deploy all examples at once:

```bash
# Clone this repo
git clone https://github.com/stripe/stripe-salesforce-ai-grounding.git
cd stripe-salesforce-ai-grounding/examples

# Deploy all examples (Flows + LWC)
sf project deploy start -d force-app -o your-org-alias

# Or deploy specific metadata types
sf project deploy start -d force-app/main/default/flows -o your-org-alias      # Flows only
sf project deploy start -d force-app/main/default/lwc -o your-org-alias        # LWC only
```

**Prerequisites:**
- Stripe Universal Connector (v2.7.0+) installed in target org
- Stripe Universal Connector Extension (2025-04-30) installed in target org

### Generate Your Own

1. Load context: `Read context/LOAD_ALL.md` (Claude Code) or `@context/LOAD_ALL.md` (Cursor)
2. Prompt naturally: "Generate a Flow that creates a Stripe Subscription when Contract activates"
3. Review generated code
4. Deploy to scratch org and test
5. Contribute back validated patterns!

---

## Contributing Examples

Found a working pattern? Submit a PR with:
- Working code (Flow XML, LWC, Apex)
- Description of what it does
- Validation steps (deployed to scratch org, tested scenarios)
- Source context files used

See main README for contribution guidelines.
