# Stripe Billing Salesforce Flows — Subscription Schedule Automation

## Overview

This is an **unmanaged Salesforce extension** (namespace: `stripeGC`, package name: **Stripe Universal Connector Recipes**) that provides out-of-the-box Stripe subscription schedule automation triggered by Salesforce Order object activation. It leverages native Salesforce objects for syncing and mapping. Current version: **0.3**.

## Relationship to Other Packages

This extension depends on **both**:
1. **Stripe Universal Connector** @2.0.0 (base managed package)
2. **Stripe Universal Connector Extension (2025-04-30)** @0.1.0 (AutoGen API invocables)

It uses the AutoGen invocable actions within its Flows and Apex to call the Stripe API.

## Code Structure

### Apex Classes (`force-app/main/default/classes/`)

- **`SubscriptionScheduleManager.cls`** — `@InvocableMethod` entry point with operations: create, update, cancel subscription schedules
- **`SubscriptionScheduleManagerHelper.cls`** — Core business logic and object mapping for subscription schedule operations (~983 lines)
- **`SubscriptionScheduleManagerTest.cls`** — Test coverage

### LWC (`force-app/main/default/lwc/`)

- **`subscriptionScheduleManagerCpe/`** — Custom Property Editor (CPE) for the SubscriptionScheduleManager invocable action, used in Flow Builder to configure subscription logic and object mapping

### Flows (`force-app/main/default/flows/`) — 14 declarative flows

**Subscription schedule lifecycle:**
- `Create_Stripe_Subscription_Schedule_from_Order`
- `Update_Stripe_Subscription_Schedule_from_Change_Order`
- `Update_Stripe_Subscription_Schedule_from_Original_Order`
- `Update_Stripe_Subscription_Schedule_when_OrderItem_is_Updated`
- `Cancel_Stripe_Subscription_Schedule_from_Order`
- `Create_or_Update_Stripe_Subscription_Schedule_when_Order_is_Activated` (main trigger-based entry point)
- `Get_Stripe_Subscription_Schedule_End_Behavior_from_Order_Items`

**Object sync and mapping (Stripe <-> Salesforce):**
- `Get_or_Create_Stripe_Customer_from_Account`
- `Get_or_Create_Stripe_Product_from_Product2`
- `Get_or_Create_Stripe_Price_from_PricebookEntry`
- `Get_or_Create_Product2_from_Stripe_Product`
- `Get_or_Create_PricebookEntry_from_Stripe_Price`
- `Sync_Product2_when_Stripe_Product_is_Upserted`
- `Sync_PricebookEntry_when_Stripe_Price_is_Upserted`

## Key Files

- `sfdx-project.json` — Package definition with dual dependencies (base + AutoGen)
- `force-app/main/default/classes/SubscriptionScheduleManager.cls` — Invocable entry point
- `force-app/main/default/classes/SubscriptionScheduleManagerHelper.cls` — Core logic (~983 lines)
- `force-app/main/default/lwc/subscriptionScheduleManagerCpe/` — Flow Builder CPE

## Development Notes

- Namespace: `stripeGC` (shared with base connector and AutoGen)
- The main automation trigger is Order activation, which kicks off `Create_or_Update_Stripe_Subscription_Schedule_when_Order_is_Activated`
- Flows handle bidirectional sync: Salesforce -> Stripe (get-or-create) and Stripe -> Salesforce (sync-on-upsert)
- The CPE (`subscriptionScheduleManagerCpe`) provides a UI in Flow Builder for configuring the subscription schedule manager action
