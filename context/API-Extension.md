# Stripe Connector AutoGen — API Action Invocables

## Overview

This is an **unmanaged Salesforce extension** (namespace: `stripeGC`) that provides auto-generated Stripe API invocable actions and model classes for use in **Salesforce Flow Builder** and **Apex**. Classes are generated from the Stripe OpenAPI spec.

## Relationship to Other Packages

This extension depends on the **Stripe Universal Connector** (base managed package):
- 2025-04-30 version depends on Universal Connector@2.0.0
- 2022-11-15 version depends on Universal Connector@1.4.0

The **stripe-billing-salesforce-flows** extension depends on this package (2025-04-30 version).

## API Schema Versions

Two API schema versions are maintained:

| Version | Status | Base Dependency |
|---------|--------|-----------------|
| **2025-04-30** | Latest (default) | Universal Connector@2.0.0 |
| **2022-11-15** | Legacy | Universal Connector@1.4.0 |

## Code Structure (`force-app-2025-04-30/main/default/classes/`)

- **`apiOperations/`** — `@InvocableMethod` classes for Stripe API actions (Create, Get, Update, Delete, List, Post for Customers, Subscriptions, Products, Prices, etc.)
- **`castOperations/`** — Cast webhook/event payloads into typed Apex classes (e.g., `v02_CastCharge`, `v02_CastCustomer`)
- **`models/`** — Stripe API model wrappers as Apex classes (e.g., `v02_Charge`, `v02_Customer`, `v02_Subscription`)

## Key Files

- `sfdx-project.json` — Package definitions for both API versions
- `force-app-2025-04-30/main/default/classes/apiOperations/` — Generated invocable actions
- `force-app-2025-04-30/main/default/classes/models/` — Generated API models

## Development Notes

- Namespace: `stripeGC` (shared with base connector)
- The generated classes use `@InvocableMethod` and `@InvocableVariable` annotations for Flow Builder compatibility
- When modifying, prefer updating templates and regenerating rather than editing generated classes directly
