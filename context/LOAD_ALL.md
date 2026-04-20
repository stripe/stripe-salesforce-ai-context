# Stripe App for Salesforce — Context Index

Load the **core context** below to get started. The reference files are large — pull them in on demand when you need specific action or model lookups.

---

## Core Context (~35K tokens) — Load These First

### Architecture & Package Structure

- **`Stripe-Salesforce-Platform-Architecture.md`** — Universal Connector architecture, custom objects, 3 API calling patterns (v02_*, AgnosticInvocable, Helper classes), decision framework
- **`API-Extension.md`** — AutoGen invocable actions & model classes, usage examples, common patterns
- **`Stripe-Billing-Flows.md`** — Subscription schedule automation, Order-based workflows, proration decisions, billing modes
- **`Stripe-Payments-Salesforce-Billing.md`** *(optional)* — Legacy Salesforce Billing & Payments support (pre-2023 implementations only)

### Generation Rules

- **`rules/flow-builder.mdc`** — Flow XML generation: AsyncAfterCommit, connector integrity, Stripe Account preamble, error handling, org-specific fields
- **`rules/lwc-stripe-payment.mdc`** — LWC + Payment Element: Shadow DOM, CSP Trusted Sites, server-side confirmation, 3DS + LWS, webhook-based state management

---

## Reference Files (~195K tokens) — Load On Demand

These files are large. **Do not load them upfront.** Instead, read **both** files together during the session when you need to:

- Find the correct `v02_*` action name for a Stripe API operation and its parameters
- Look up exact field names, types, or nested object structures for request/response models
- Build an Apex helper class that wraps v02_* actions with model objects

**Always load both together** — action names and model fields are used in tandem.

- **`invocable-actions-reference.md`** (~33K tokens) — 244 v02_* invocable actions with parameters
- **`models-reference.md`** (~160K tokens) — 2,175 request/response models (8,461 fields)

---

## Companion Tools

### MCP Servers

If configured, these MCP servers let you deploy and validate directly:

- **Salesforce MCP** ([`@salesforce/mcp`](https://github.com/salesforcecli/mcp)) — SOQL queries, metadata deploy, Apex tests, code analysis
- **Stripe MCP** ([`@stripe/mcp`](https://github.com/stripe/agent-toolkit)) — Create customers, products, subscriptions, payment intents, invoices

### Infrastructure as Code

- **Stripe Terraform Provider** ([docs.stripe.com/terraform](https://docs.stripe.com/terraform)) — Manage Stripe-side resources (products, prices, webhooks) as code. Useful for pre-provisioning the Stripe resources your Salesforce Flows reference.

See `README.md` for setup instructions.

---

## Additional Resources

- **Setup:** See `setup/` directory for scratch org creation quickstart
- **Examples:** See `examples/` directory for working Flow, LWC, and Apex reference implementations
- **Prompts:** See `prompts/` directory for copy-paste context loading (ChatGPT, Copilot Chat)
