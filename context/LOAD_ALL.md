# Stripe App for Salesforce — Context Index

Read all files in this directory to gain complete knowledge of the Stripe App for Salesforce.

---

## Architecture & Package Structure

- **`Stripe-Salesforce-Platform-Architecture.md`** — Universal Connector architecture, custom objects, 3 API calling patterns (v02_*, AgnosticInvocable, Helper classes), decision framework
- **`API-Extension.md`** — AutoGen invocable actions & model classes, usage examples, common patterns
- **`Stripe-Billing-Flows.md`** — Subscription schedule automation, Order-based workflows, proration decisions, billing modes
- **`Stripe-Payments-Salesforce-Billing.md`** *(optional)* — Legacy Salesforce Billing & Payments support (pre-2023 implementations only)

## Generation Rules

- **`rules/flow-builder.mdc`** — Flow XML generation: AsyncAfterCommit, connector integrity, Stripe Account preamble, error handling, org-specific fields
- **`rules/lwc-stripe-payment.mdc`** — LWC + Payment Element: Shadow DOM, CSP Trusted Sites, server-side confirmation, 3DS + LWS, webhook-based state management

## API Reference

- **`invocable-actions-reference.md`** — 241 v02_* invocable actions with parameters
- **`models-reference.md`** — 2,175 request/response models (8,461 fields)

---

## Companion MCP Servers

If configured, these MCP servers let you deploy and validate directly:

- **Salesforce MCP** ([`@salesforce/mcp`](https://github.com/salesforcecli/mcp)) — SOQL queries, metadata deploy, Apex tests, code analysis
- **Stripe MCP** ([`@stripe/mcp`](https://github.com/stripe/agent-toolkit)) — Create customers, products, subscriptions, payment intents, invoices

See `README.md` for setup instructions.

---

## Additional Resources

- **Examples:** See `examples/` directory for working Flow, LWC, and Apex reference implementations
- **Prompts:** See `prompts/` directory for copy-paste context loading (ChatGPT, Copilot Chat)
