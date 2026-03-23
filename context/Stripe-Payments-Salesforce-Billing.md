# Stripe Extension Package for Salesforce Billing

## Overview

This is an **unmanaged Salesforce extension** (namespace: `stripeGC`) that provides payment and surcharging workflow support for **legacy Salesforce Billing** (formerly Salesforce CPQ Billing, `blng` namespace). This is NOT for Salesforce Revenue Cloud Billing. Current version: **1.5.0**.

## Dependencies

- Salesforce CPQ@250.1
- Salesforce Billing@250.1
- Stripe Universal Connector@2.0.0

## Architecture

The extension implements the `blng.PaymentGateway`, `blng.PaymentGateways`, and `blng.PaymentGateWayStatus` interfaces to integrate Stripe as a payment gateway within the Salesforce Billing framework.

### Payment Gateway Operations

`StripeBillingGateway.cls` implements the full payment lifecycle via `processPayments()` dispatch:

- **generateToken** — Creates a Stripe Customer (if needed) and SetupIntent, returns payment method token
- **voidTokenTransaction** — Detaches payment method from Stripe Customer
- **chargeTransaction** — Creates Stripe PaymentIntent for charges (credit card and ACH), handles new payment method creation via Payment Center
- **authorizeTransaction** — Creates PaymentIntent with `capture_method=manual` (credit card only; ACH not supported for auth/capture)
- **captureTransaction** — Captures a previously authorized PaymentIntent (credit card only)
- **voidTransaction** — Cancels a previously authorized PaymentIntent (credit card only)
- **refundTransaction** — Creates a refund on a PaymentIntent
- **getPaymentStatus** — Retrieves PaymentIntent status
- **getRefundStatus** — Retrieves refund status

Gateway status mapping uses `GatewayStatusMapping__mdt` custom metadata to map Stripe response codes to `blng.TransactionResult.GatewayStatusType` values.

### Supporting Classes

| Class | Purpose |
|-------|---------|
| `StripeBillingUtils` | Gateway validation, customer creation, currency validation, PaymentIntent/SetupIntent operations, refunds |
| `StripeBilling` | Additional billing utilities |
| `StripeBillingConstants` | Constants: gateway type (`Stripe (Universal Extension)`), payment types (Credit Card, ACH), Stripe API base URI |
| `BlngPaymentMethodTriggerHelper` | Trigger handler for `blng__PaymentMethod__c` events |
| `NewACHPaymentMethodController` | Visualforce/Lightning controller for ACH payment method creation |
| `VerifyACHPaymentMethodController` | Visualforce/Lightning controller for ACH micro-deposit verification |
| `SendStripeMetadataBatch` | Batch class to sync Stripe metadata |
| `SendStripeMetadataScheduleJob` | Schedulable job wrapping the batch metadata sync |
| `SurchargeFlowExample` | `@InvocableMethod` to deserialize payment method JSON (for surcharge flow usage) |
| `TransactionFlowParameter` | Data class for flow-based transaction parameters |

### Triggers

- `BlngPaymentMethodTrigger` — On `blng__PaymentMethod__c` object
- `BlngPaymentTransactionTrigger` — On `blng__PaymentTransaction__c` object

## Supported Payment Types

- **Credit Card** — Full lifecycle: generate token, charge, authorize, capture, void, refund, status
- **ACH** — Charge and refund only (authorize/capture/void not supported for ACH)

## Key Files

- `classes/StripeBillingGateway.cls` — Main gateway implementation (~1030 lines)
- `classes/StripeBillingUtils.cls` — Stripe API interaction utilities
- `classes/StripeBillingConstants.cls` — Constants and config
- `classes/SurchargeFlowExample.cls` — Invocable for surcharge flows

## Development Notes

- Permission set: `Stripe_Connector_Billing_User`
- The gateway type is configured as `Stripe (Universal Extension)` in Salesforce Billing gateway settings
- Stripe API calls are made directly to `https://api.stripe.com/v1` (not through the AWS middleware)
- Uses `Stripe_Customer_Id__c` field on the standard `Account` object to link SF Accounts to Stripe Customers
- Uses `Stripe_Setup_Intent_Id__c` on payment method records
