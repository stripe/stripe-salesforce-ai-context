# 🚀 Stripe App for Salesforce - Full Context Loader

**Purpose:** Load complete context about the Stripe App for Salesforce into your AI coding tool.

When an AI coding tool reads this file, it should also read all referenced context files below to gain complete knowledge of the Stripe App for Salesforce architecture, patterns, and constraints.

---

## 📚 Required Reading (Load All)

### 1. Architecture & Package Structure
- **Read:** `Stripe-Salesforce-Platform-Architecture.md`
  - Universal Connector architecture (v2.7.0)
  - Custom objects (`stripeGC__Customer__c`, `stripeGC__Invoice__c`, etc.)
  - Package hierarchy and dependencies
  - Development setup and CLI commands

- **Read:** `API-Extension.md`
  - Auto-generated invocable actions (v02_* classes)
  - API model classes
  - 2025-04-30 vs 2022-11-15 API versions

- **Read:** `Stripe-Billing-Flows.md`
  - Subscription schedule automation
  - Salesforce Order → Stripe Subscription mapping
  - Bidirectional sync patterns

- **Optional:** `Stripe-Payments-Salesforce-Billing.md`
  - Legacy Salesforce Billing & Payments support
  - Only needed if working with pre-2023 Salesforce Billing implementations

### 2. Generation Rules (Critical)
- **Read:** `rules/flow-builder.mdc`
  - Salesforce Flow XML generation rules
  - AsyncAfterCommit patterns for callouts
  - Stripe Account lookup preamble (required for every Flow)
  - Connector integrity rules
  - Error handling with Sync_Log__c
  - Org-specific field handling

- **Read:** `rules/lwc-stripe-payment.mdc`
  - LWC + Stripe Payment Element patterns
  - Shadow DOM constraints (data attributes, not IDs)
  - CSP Trusted Sites configuration
  - 3D Secure + Lightning Web Security workarounds
  - Webhook-based state management
  - Payment confirmation patterns

### 3. API Reference
- **Read:** `invocable-actions-reference.md`
  - 241 invocable actions with parameters
  - Common actions: `v02_CreateCustomers`, `v02_CreatePaymentIntents`, `v02_CreateSubscriptions`
  - Request/response patterns

- **Read:** `models-reference.md`
  - Stripe API model classes (`v02_Customer`, `v02_PaymentIntent`, etc.)
  - Field-level reference for dot notation access in Flows

---

## ✅ After Loading All Files

Respond with:

```
I know Stripe for Salesforce 😎

Loaded context:
✓ Stripe Universal Connector (v2.7.0) architecture
✓ 241 v02_* invocable actions for Stripe API operations
✓ Flow Builder patterns (AsyncAfterCommit, connector integrity, idempotency)
✓ LWC + Payment Element patterns (Shadow DOM, CSP, 3DS + LWS)
✓ Stripe Billing subscription schedule automation
✓ Custom objects: stripeGC__Customer__c, stripeGC__Invoice__c, stripeGC__Subscription__c

What would you like me to generate? (Flow, LWC, Apex)
```

---

## 🎯 Quick Commands for AI Tools

**Claude Code:**
```
Read context/LOAD_ALL.md
```

**Cursor:**
```
@load context/LOAD_ALL.md
```

**Copilot / ChatGPT:**
Copy the content of `prompts/load-stripe-context.txt` and paste it into your chat.

---

## 🧠 What This Unlocks

After loading this context, the AI can:

✅ Generate Salesforce Flows that call real `v02_*` invocable actions (not hallucinated names)
✅ Include `AsyncAfterCommit` scheduled paths for record-triggered callout Flows
✅ Mount Stripe Payment Element correctly with `data-stripe-element` (not IDs)
✅ Handle 3D Secure authentication in Lightning Web Security environments
✅ Reference actual Stripe custom objects with correct namespace (`stripeGC__`)
✅ Verify field existence with `sf sobject describe` before generating code
✅ Include proper error handling with `Sync_Log__c`
✅ Add idempotency keys to API calls

**No more hallucinations. No more trial-and-error. Just working code.**

---

## 📖 Additional Resources

- **Examples:** See `examples/` directory for working Flow, LWC, and Apex reference implementations
- **Prompts:** See `prompts/` directory for common generation tasks
- **Troubleshooting:** See README.md for common issues and fixes

---

_Built for Salesforce admins, developers, and Stripe implementation partners using AI coding tools._
