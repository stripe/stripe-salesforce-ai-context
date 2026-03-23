# Stripe Billing Salesforce Flows — Subscription Schedule Automation

## Overview

This is an **unmanaged Salesforce extension** (namespace: `stripeGC`, package name: **Stripe Universal Connector Recipes**) that provides out-of-the-box Stripe subscription schedule automation triggered by Salesforce Order object activation. It leverages native Salesforce objects for syncing and mapping. Current version: **0.3**.

## Relationship to Other Packages

This extension depends on **both**:
1. **Stripe Universal Connector** @2.0.0 (base managed package)
2. **Stripe Universal Connector Extension (2025-04-30)** @0.1.0 (AutoGen API invocables)

It uses the AutoGen invocable actions within its Flows and Apex to call the Stripe API.

---

# ========================================
# PART 1: PACKAGE REFERENCE (Catalog)
# Purpose: Look up what flows, classes, and components are included in this package
# ========================================

## What's Included in This Package

This package contains **14 declarative flows, 3 Apex classes, and 1 LWC component** that work together to automate Stripe subscription schedules from Salesforce Orders.

### Declarative Flows (14 total)

#### Subscription Schedule Lifecycle Flows (7 flows)

**`Create_or_Update_Stripe_Subscription_Schedule_when_Order_is_Activated`**
- **Trigger:** Record-triggered flow on Order (when Status = Activated)
- **Purpose:** Main entry point that determines whether to create new or update existing subscription schedule
- **Key Logic:** Checks Contract for existing subscription schedule, routes to create or update accordingly

**`Create_Stripe_Subscription_Schedule_from_Order`**
- **Trigger:** Autolaunched (called by parent flows)
- **Purpose:** Creates new Stripe subscription schedule from Order and OrderItems
- **Key Actions:**
  - Calls SubscriptionScheduleManager invocable (create operation)
  - Maps Order fields → subscription schedule properties
  - Maps OrderItems → subscription phases

**`Update_Stripe_Subscription_Schedule_from_Original_Order`**
- **Trigger:** Autolaunched (called by parent flows)
- **Purpose:** Updates existing subscription schedule when original Order is modified
- **Use Case:** Customer modifies existing subscription (change quantities, pricing, terms)

**`Update_Stripe_Subscription_Schedule_from_Change_Order`**
- **Trigger:** Autolaunched (called by parent flows)
- **Purpose:** Updates existing subscription schedule when a new Change Order is created under same Contract
- **Use Case:** Amendment scenario (add products, extend term, apply discounts)

**`Update_Stripe_Subscription_Schedule_when_OrderItem_is_Updated`**
- **Trigger:** Record-triggered flow on OrderItem (when modified)
- **Purpose:** Real-time updates to subscription schedule when line items change
- **Key Logic:** Recalculates phases, updates quantities/pricing in Stripe

**`Cancel_Stripe_Subscription_Schedule_from_Order`**
- **Trigger:** Autolaunched (called by parent flows or manually invoked)
- **Purpose:** Cancels subscription schedule in Stripe
- **Key Actions:** Calls SubscriptionScheduleManager invocable (cancel operation)
- **Options:** Invoice now, prorate, or wait until end of period

**`Get_Stripe_Subscription_Schedule_End_Behavior_from_Order_Items`**
- **Trigger:** Autolaunched (called by creation/update flows)
- **Purpose:** Determines subscription schedule end behavior based on OrderItem dates
- **Logic:** If OrderItems have explicit end dates → `end_behavior=cancel`, otherwise → `end_behavior=release`

#### Bidirectional Sync Flows (7 flows)

These flows handle Salesforce ↔ Stripe object synchronization:

**`Get_or_Create_Stripe_Customer_from_Account`**
- **Direction:** Salesforce → Stripe
- **Purpose:** Looks up existing Stripe Customer by Account, creates if not found
- **Key Logic:**
  - Queries Account for `Stripe_Customer_ID__c` (org-specific field)
  - If exists → returns customer_id
  - If not → calls v02_CreateCustomers, stores ID on Account

**`Get_or_Create_Stripe_Product_from_Product2`**
- **Direction:** Salesforce → Stripe
- **Purpose:** Syncs Product2 to Stripe Product
- **Key Logic:** Checks for existing Stripe product_id, creates if needed

**`Get_or_Create_Stripe_Price_from_PricebookEntry`**
- **Direction:** Salesforce → Stripe
- **Purpose:** Syncs PricebookEntry to Stripe Price
- **Key Logic:**
  - Checks for existing price_id on PricebookEntry
  - Creates price_id if custom pricing detected
  - Stores price_id for future reference

**`Get_or_Create_Product2_from_Stripe_Product`**
- **Direction:** Stripe → Salesforce
- **Purpose:** Creates or updates Product2 when Stripe Product is created/updated
- **Trigger:** Platform Event from webhook ingestion

**`Get_or_Create_PricebookEntry_from_Stripe_Price`**
- **Direction:** Stripe → Salesforce
- **Purpose:** Creates or updates PricebookEntry when Stripe Price is created/updated
- **Trigger:** Platform Event from webhook ingestion

**`Sync_Product2_when_Stripe_Product_is_Upserted`**
- **Direction:** Stripe → Salesforce
- **Purpose:** Updates Product2 fields when Stripe Product webhook received
- **Trigger:** Platform Event (stripeGC__Stripe_Event__e)

**`Sync_PricebookEntry_when_Stripe_Price_is_Upserted`**
- **Direction:** Stripe → Salesforce
- **Purpose:** Updates PricebookEntry fields when Stripe Price webhook received
- **Trigger:** Platform Event (stripeGC__Stripe_Event__e)

### Apex Classes (3 total)

**`SubscriptionScheduleManager.cls`**
- **Type:** @InvocableMethod entry point
- **Purpose:** Flow-callable invocable action for subscription schedule operations
- **Operations:** create, update, cancel
- **Parameters:** Accepts JSON configuration with object mappings (Order → SubscriptionSchedule, OrderItem → Phase)
- **Returns:** Result object with subscription schedule response payload or error message

**`SubscriptionScheduleManagerHelper.cls`**
- **Type:** Business logic helper class (~983 lines)
- **Purpose:** Core implementation of subscription schedule operations
- **Key Methods:**
  - `handleUpsertSubscriptionSchedules()` — Main entry point for create/update
  - `createSubscriptionSchedule()` — Creates new schedule via GlobalInvocable
  - `updateSubscriptionSchedule()` — Updates existing schedule
  - `cancelSubscriptionSchedule()` — Cancels schedule
  - `buildSubscriptionSchedulePayload()` — Constructs API request from Salesforce records
  - Phase consolidation logic (overlapping OrderItems → linear phases)
  - Discount coupon generation (temporary coupons with max_redemptions=1)
  - Field mapping (configurable via CPE)
- **API Calls:** Uses `GlobalInvocable.invoke()` with endpoint `/v1/subscription_schedules`
- **API Version:** `2025-04-30.basil`

**`SubscriptionScheduleManagerTest.cls`**
- **Type:** Test class
- **Purpose:** Apex test coverage for SubscriptionScheduleManager and Helper

### Lightning Web Component (1 total)

**`subscriptionScheduleManagerCpe/`**
- **Type:** Custom Property Editor (CPE) for Flow Builder
- **Purpose:** Visual configuration UI for the SubscriptionScheduleManager invocable action
- **Functionality:**
  - Configure object mappings (which Salesforce object maps to subscription schedule/phase/phase item)
  - Configure field mappings (which SF fields map to Stripe API parameters)
  - Define static values for API parameters
  - Preview configuration before saving
- **Usage:** Appears in Flow Builder when adding the SubscriptionScheduleManager action

### Key Files

- **`sfdx-project.json`** — Package definition with dual dependencies (base + AutoGen)
- **`force-app/main/default/`** — All metadata (flows, classes, LWC)

### Package Metadata

- **Namespace:** `stripeGC` (shared with Stripe Universal Connector)
- **Package Type:** Unmanaged (full source code access)
- **Version:** 0.3
- **Dependencies:**
  - Stripe Universal Connector @2.0.0 (required)
  - Stripe Universal Connector Extension (2025-04-30) @0.1.0 (required)

---

# ========================================
# PART 2: ARCHITECTURE & DECISIONS (Understanding)
# Purpose: Learn why this package was built this way and key architectural decisions
# ========================================

## Why Subscription Schedules (Not Standard Subscriptions)

### Core Business Problem: Multi-Term Contracts

This package was built specifically for **sales-led growth (SLG)** workflows where deals involve multi-year contracts with different pricing across contract terms.

**The Architectural Gap:**
- **Salesforce** has a Contract object to model multi-term agreements (1-year, 2-year, 3-year commitments)
- **Stripe** has no Contract object
- **Standard Stripe Subscriptions** cannot represent discrete contract terms with different pricing per term

**Example:** "Year 1: $100/month, Year 2: $120/month, Year 3: $140/month"
- A standard subscription is a single ongoing billing arrangement
- It cannot natively model this multi-term structure

**The Only Solution: Subscription Schedules with Phases**

Subscription Schedules are the **only Stripe primitive** that can represent multi-term contracts:
- **Phase 1** = Contract Term 1 (Year 1 pricing)
- **Phase 2** = Contract Term 2 (Year 2 pricing)
- **Phase 3** = Contract Term 3 (Year 3 pricing)

Each phase represents a distinct contract term. Phases transition automatically at specified dates, modeling the multi-term contract lifecycle.

**Secondary Benefits** (also useful but not the primary driver):
- Future-dated start (matches sales commit dates: "starts Q3")
- Backdated subscriptions (retroactive billing for prior periods)
- Phase-level discounts (promotional periods within contract)
- Amendments are additive (phases stack vs subscriptions replace)
- Predictable prorations per phase

**Bottom line:** Without Subscription Schedules, you cannot properly represent multi-term sales contracts in Stripe.

**For AI agents:** When users need multi-term contracts, progressive pricing, or future-dated subscriptions, Subscription Schedules are architecturally required, not optional.

**Reference:** https://docs.stripe.com/billing/subscriptions/subscription-schedules

---

## Design Philosophy: Intentionally Unmanaged

This extension is **intentionally unmanaged** to provide maximum flexibility for diverse Salesforce revenue architectures.

### Three Intended Use Patterns

1. **Use as-is** — Deploy the 14 flows unchanged for standard Sales Cloud Order-based workflows
2. **Clone and customize** — Duplicate flows as templates and modify field mappings, validation logic, or phase consolidation rules
3. **Refactor completely** — Full source code access to adapt business logic for complex revenue models

### Why Unmanaged?

Different organizations implement **Quote-to-Cash (QTC)** workflows differently:

- **Steelbrick/Legacy CPQ** — Quote object → Order → Subscription (requires mapping Quote fields to Order fields)
- **Custom CPQ (Sales Cloud)** — Custom objects or Opportunity-based QTC without standard CPQ
- **Revenue Cloud** — New order management with or without CPQ (different Order lifecycle and field structure)

**CPQ** = Configure, Price, Quote (pricing and quoting tools)

Since Order field structures, activation logic, and QTC workflows vary significantly between these models, **customization is expected and encouraged**. The flows serve as **reference implementations** that demonstrate subscription schedule patterns, not rigid production code.

### Composable Flows as Reference Architecture

**Design Decision:** 14 discrete flows instead of one monolithic flow.

**Why composable flows?**

The package deliberately avoids a single "master flow" in favor of **modular, reusable flow templates**. Each of the 14 flows can function:
- **Together** — as a complete end-to-end automation system
- **Independently** — as reference templates for building custom flows
- **Mixed** — use some as-is, clone/adapt others

**Examples of reusability:**

**`Get_or_Create_Stripe_Customer_from_Account`**
- Packaged use: Called by subscription schedule creation flows
- Repurposed use: Clone for "Create Customer when Opportunity closes" flow
- Repurposed use: Use in custom quote-to-cash automation

**`Get_or_Create_Stripe_Price_from_PricebookEntry`**
- Packaged use: Syncs prices before subscription schedule creation
- Repurposed use: Clone for bulk price sync scheduled job
- Repurposed use: Adapt for custom pricing catalog management

**`Create_Stripe_Subscription_Schedule_from_Order`**
- Packaged use: Core subscription schedule creation
- Repurposed use: Clone and adapt trigger from Quote approval instead of Order activation
- Repurposed use: Modify for Contract renewal automation

**Why NOT one big flow?**

A single monolithic flow would:
- ❌ Be harder to understand (500+ elements)
- ❌ Be harder to debug (one failure point)
- ❌ Limit reusability (can't extract individual patterns)
- ❌ Force users to accept entire workflow (all-or-nothing)
- ❌ Make customization difficult (modify 500 elements vs 50)

**Composable flows enable:**
- ✅ **Template library** — Pick the flows you need, ignore the rest
- ✅ **Learning by example** — Each flow demonstrates a specific pattern
- ✅ **Incremental adoption** — Start with customer sync, add pricing later, add subscriptions last
- ✅ **Mix-and-match** — Use some flows as-is, clone/customize others
- ✅ **Easier maintenance** — Update one flow without touching others

### For AI Agents

**Treat these flows as starting points**, not final solutions:
- When a user has a different QTC workflow, confidently suggest **cloning and adapting** the flows
- Ask clarifying questions: "Are you using Steelbrick CPQ, Revenue Cloud, or custom Sales Cloud QTC?"
- Identify org-specific field mappings that need replacement
- Don't force the user's business process to match the template—adapt the template to their process

**Flow Reusability Strategy:**

Before generating a flow from scratch, check if an existing flow can be repurposed:

**User asks:** "Create a flow that creates Stripe customers when an Opportunity closes"

**AI should:**
1. ✅ Recognize: `Get_or_Create_Stripe_Customer_from_Account` already exists
2. ✅ Suggest: "Clone the existing `Get_or_Create_Stripe_Customer_from_Account` flow and change the trigger from Order activation to Opportunity stage change"
3. ✅ Identify customization points: Trigger condition, error handling path
4. ❌ Don't generate from scratch if a template exists

**User asks:** "I need to sync prices from Salesforce to Stripe nightly"

**AI should:**
1. ✅ Recognize: `Get_or_Create_Stripe_Price_from_PricebookEntry` demonstrates the pattern
2. ✅ Suggest: "Clone and adapt the existing price sync flow, change trigger to Scheduled Flow (nightly), add batch processing"
3. ❌ Don't build entirely new flow when pattern exists

**User asks:** "Build subscription automation for Revenue Cloud"

**AI should:**
1. ✅ Recognize: Core flows exist but need adaptation
2. ✅ Suggest: "Clone these 5 flows [list], adapt for Revenue Cloud Order fields [specify]"
3. ✅ Explain: "The phase consolidation logic in SubscriptionScheduleManagerHelper.cls can remain unchanged—only field mappings need updates"
4. ❌ Don't say "build from scratch"

**Pattern recognition priorities:**
1. **First:** Check if an existing flow can be used as-is
2. **Second:** Check if an existing flow can be cloned with minimal changes (trigger, field mappings)
3. **Third:** Check if multiple existing flows can be combined/adapted
4. **Last resort:** Generate entirely new flow (rare—most patterns already exist)

**When suggesting clones, be specific:**
- ✅ "Clone `Get_or_Create_Stripe_Customer_from_Account`, change trigger to [X], update field [Y]"
- ❌ "You can use existing flows" (too vague)

**Value proposition:** Users get working reference implementations they can adapt, not just documentation.

---

## Sales-Led Growth (SLG) Patterns: Custom Pricing Strategy

### The Core Decision: Discounts vs Custom Prices

When sales teams negotiate custom pricing, there are two approaches:

1. **Discounts on immutable prices** — Apply coupons/discounts to existing catalog prices
2. **Create custom price_id** — Generate new Stripe prices specific to the deal

### Why price_id Over price_data

**This package enforces using `price_id` (reusable price references) instead of `price_data` (one-time inline prices).**

**Why price_id?**
- **Accurate ARR/MRR reporting** — price_data doesn't appear in Stripe revenue analytics
- **Clean system of record** — Prices are cataloged and auditable
- **Maintains audit trail** — Amendments and renewals reference the same price
- **Supports subscription schedule phase updates** — Can modify quantities/terms without losing pricing context

**Why NOT price_data?**
- Invisible to Stripe reporting and dashboards
- Creates "phantom prices" that can't be reused
- Harder to troubleshoot billing issues

### Two-Path Implementation

**Path 1: Standard Pricing (Reuse price_id)**

For catalog pricing or previously negotiated rates:
1. Pre-sync Stripe prices to Salesforce PricebookEntry
2. Store `Stripe_Price_ID__c` on PricebookEntry
3. Flow looks up existing price_id from PricebookEntry
4. Use in subscription schedule creation

**Path 2: Custom Pricing (Create price_id)**

For negotiated pricing unique to this deal:
1. Sales rep configures custom pricing in Salesforce (Order activation or Quote approval)
2. Flow detects custom pricing flag (e.g., `OrderItem.Custom_Price__c = true`)
3. Call `v02_CreatePrices` (or AgnosticInvocable) to create new price_id
4. Store price_id on `OrderItem.Stripe_Price_ID__c` (not Order level—supports multi-line mixed pricing)
5. Use in subscription schedule creation

The newly created price_id becomes the "standard" for that customer's future amendments.

### Decision Framework: When to Use Each

**Create Custom price_id:**
- Negotiated pricing that becomes the customer's "standard"
- Custom bundling that differs from catalog structure
- Tier-based pricing unique to deal size (enterprise discounts)
- Multi-year commits with locked-in rates
- Customer expects this exact price on future invoices

**Use Discounts (on existing price_id):**
- One-time promotional pricing (launch discount)
- Volume discounts that don't change base price
- Time-limited offers (first 3 months 50% off)
- Percentage off standard catalog pricing
- Temporary incentives

**Trade-off:** Creating many custom prices can bloat your Stripe price catalog. Balance between flexibility (new prices) and catalog cleanliness (discounts on standard prices).

### Value Proposition

This approach:
- **Empowers sales reps** — Create custom pricing without being Salesforce admins
- **Maintains clean data** — Every subscription has a cataloged price_id
- **Simplifies reporting** — ARR/MRR calculations work correctly in both Stripe and Salesforce
- **Scales cleanly** — No conflicts, no orphaned price_data

**For AI agents:** When generating flows for SLG use cases, ask: "Is this standard catalog pricing or negotiated custom pricing?" Then generate the appropriate path.

**Reference:** https://docs.stripe.com/billing/prices-guide

---

## Critical Decision: Proration Logic (Choose One)

### The Incompatibility

Stripe and Salesforce use **fundamentally incompatible proration calculation methods**. You must choose which system's proration logic serves as the source of truth **BEFORE building automation**.

**Stripe Default:**
- Prorates by **seconds** (exact timestamp precision)
- Example: Subscription starts March 15 at 2:47 PM = precise fractional billing based on seconds remaining in billing period

**Salesforce Default:**
- Prorates by **day** or **month** (calendar period granularity)
- Example: Order activated March 15 = 15/30 days = 50% of monthly amount

**There is NO hybrid approach.** This is an architectural constraint—both systems calculate prorations differently.

### Three Options

#### Option 1: Use Stripe Proration (Recommended for New Implementations)

**How it works:**
- Let Stripe calculate prorations based on subscription timestamps
- Salesforce Order amounts are **estimates**, not final invoice amounts
- Final billing happens in Stripe with second-level precision

**When to choose:**
- New integration (no legacy proration expectations)
- Stripe is billing system of record
- Finance team reconciles from Stripe invoices
- Accurate per-second billing matters (usage-based, high-value contracts)

**Implementation:**
- Set `proration_behavior=create_prorations` (default in subscription schedules)
- Accept that `Order.TotalAmount` ≠ Stripe invoice amount
- Train users: "Order shows estimate, Stripe invoice shows final"

**Trade-offs:**
- ✅ Accurate billing (to the second)
- ✅ Leverages Stripe's automatic proration logic
- ❌ Salesforce revenue reports require Stripe sync to be accurate
- ❌ Sales reps may get questions: "Why is the invoice amount different?"

#### Option 2: Use Salesforce Proration (Legacy Parity)

**How it works:**
- Disable Stripe proration
- Calculate proration in Salesforce (by day/month)
- Push calculated amounts to Stripe as fixed line item amounts

**When to choose:**
- Migrating from legacy Salesforce-only billing
- Finance team requires Salesforce as revenue source of truth
- Customer expectation is day-based proration (contractual requirement)
- Existing contracts specify "prorated by month"

**Implementation:**
- Set `proration_behavior=none` on subscription schedules
- Build custom Apex class to calculate day-based proration
- Create subscription items with fixed `unit_amount` based on Salesforce calculation
- Store calculation logic in custom fields for audit trail

**Trade-offs:**
- ✅ Salesforce revenue reports accurate
- ✅ Customer expectation alignment (matches legacy behavior)
- ✅ Finance team happy (single source of truth)
- ❌ Requires custom Apex logic (not included in this package)
- ❌ Mid-cycle subscription changes need manual calculation
- ❌ Loses Stripe's automatic proration handling
- ❌ More complex to maintain

#### Option 3: Disable Proration Entirely (Simple but Limited)

**How it works:**
- Set `proration_behavior=none`
- All changes take effect at next billing cycle
- No mid-cycle charges or credits

**When to choose:**
- Simple subscription model (rare mid-cycle changes)
- Want to avoid proration complexity entirely
- Customers understand "changes effective on next billing date"

**Implementation:**
- Set `proration_behavior=none` globally
- Configure phase transitions at `billing_cycle_anchor=phase_start`
- Communicate to customers: "Changes take effect at renewal"

**Trade-offs:**
- ✅ No calculation discrepancies (no prorations at all)
- ✅ Simple to understand and implement
- ❌ Customer expectations: "Why am I still charged for old plan?"
- ❌ Not suitable for usage-based or high-velocity change scenarios
- ❌ Poor experience for upgrades (customer waits until next cycle)

### Decision Framework

Ask these questions:

1. **Is this a new integration or migration?**
   - New → Use Stripe proration (Option 1)
   - Migration → Match legacy behavior (likely Option 2)

2. **Who is the billing system of record?**
   - Stripe → Option 1
   - Salesforce → Option 2

3. **How often do mid-cycle changes happen?**
   - Rarely → Option 3 might be sufficient
   - Frequently → Option 1 or 2 required

4. **What's your finance team's reconciliation workflow?**
   - Reconcile from Stripe → Option 1
   - Reconcile from Salesforce → Option 2

**This decision affects:**
- Flow configuration (`proration_behavior` settings on subscription schedules)
- Custom Apex requirements (Option 2 needs calculation logic—not included in this package)
- User training (explaining amount differences to sales reps)
- Customer communication (invoice timing and amounts)
- Revenue reporting accuracy (which system is source of truth)

### IMPORTANT: Make This Decision Before Building Flows

Changing proration logic post-production requires:
- Historical invoice adjustments
- Customer communication about billing changes
- Retraining sales and support teams
- Potential revenue restatements

**For AI agents:** When generating subscription automation, explicitly ask the user: "How do you want to handle proration: Stripe (seconds), Salesforce (days), or disable entirely?" Do not assume the default is acceptable.

---

## Architectural Decisions

These design choices address real-world constraints in bridging Salesforce and Stripe.

### 1. Order-Based Entity Model

**Decision:** Use Salesforce **Orders** (not Opportunities or Contracts alone) as the primary trigger for subscription schedule operations.

**Why Orders?**
- Order activation is a **universal event** across all QTC models (Steelbrick CPQ, Revenue Cloud, Custom QTC)
- Orders represent "committed deal" state (past quote/approval)
- Order lifecycle aligns with subscription lifecycle (activated → subscription starts)

**Key Pattern:**
- **New Order in same Contract** = amendment to existing subscription (not new subscription)
- **Why:** Customer intent is to modify existing agreement, not create parallel subscriptions
- **Implementation:** Flows check for existing subscription schedule via Contract lookup before creating new

### 2. Phase Consolidation Logic

**Decision:** Automatically transform overlapping Salesforce OrderItems into linear Stripe subscription schedule phases.

**The Problem:**
- Salesforce allows overlapping OrderItems (multiple products with different start/end dates)
- Stripe requires **non-overlapping phases** (one phase ends exact moment next begins)

**The Solution:**
- Helper class (`SubscriptionScheduleManagerHelper.cls`) consolidates overlapping items
- Result: "One phase ends at the exact moment the next one begins, with no gaps or overlaps"

**Error Handling:**
- Throws errors on **gaps** (time periods with no OrderItems)
- Throws errors on **property mismatches** (different billing frequencies in same phase)
- Throws errors on **quantity conflicts** (inconsistent quantities for same item)
- **Why:** Data integrity over silent failures

**Trade-off:**
- ✅ Stripe API compatibility (non-overlapping phases required)
- ❌ Lose granular OrderItem-level tracking (multiple items consolidated into phases)
- If you need item-level tracking, clone the helper class and add custom metadata fields

### 3. Price Reference Strategy: Enforce price_id

**Decision:** Require `price_id` for all subscription items (no `price_data` inline prices).

**Why:**
- **Accurate ARR/MRR reporting** — price_data is invisible to Stripe revenue analytics
- **Clean system of record** — Prices are cataloged and auditable
- **Amendment support** — Can reference same price on future updates
- **Subscription schedule compatibility** — Phase updates require price references

**Implementation:**
- Flows sync or create price_id before subscription schedule creation
- Store price_id on PricebookEntry or OrderItem (org-specific field mapping)

**Reference:** See "Sales-Led Growth (SLG) Patterns: Custom Pricing Strategy" section above.

### 4. Discount Implementation: Temporary Coupons

**Decision:** Generate temporary Stripe Coupons with `max_redemptions=1` for discounts.

**Why:**
- **Idempotency** — Each request creates fresh coupon, no need to track existing coupon IDs
- **Simplicity** — Don't maintain coupon ID state across amendments
- **Auto-cleanup** — Single-use coupons auto-archive after redemption

**Implementation:**
- When discount values provided on OrderItem, call `v02_CreateCoupons` (lines 910-932 in SubscriptionScheduleManagerHelper.cls)
- Apply coupon to subscription schedule phase
- During updates/amendments, create new coupons based on current values (don't reuse old coupon IDs)

**Trade-off:**
- ✅ Simple, stateless, idempotent
- ❌ Coupon catalog grows (but auto-archived, minimal impact)

### 5. Date/Time Handling: UTC Midnight Default

**Decision:** Convert Salesforce Date fields (no time component) to Unix timestamps at midnight UTC.

**Why:**
- **API consistency** — Stripe API requires Unix timestamps (seconds since epoch)
- **Predictable timezone handling** — Explicit UTC conversion (no implicit timezone conversions)
- **Calendar date alignment** — Midnight UTC for "start on March 1" means consistent global behavior

**Implementation:**
- All date fields converted to Unix timestamps before API calls
- If Salesforce Date field lacks time, defaults to `00:00:00 UTC` for that date
- If you need different timezone, add custom field for timezone offset and adjust in helper class

---

# ========================================
# PART 3: STRIPE CONCEPTS (Learning)
# Purpose: Understand Stripe subscription schedules, phases, prorations, and billing behavior
# ========================================

## Subscription Schedule Core Concepts

These are Stripe concepts that inform how the flows work.

### Phases: The Building Blocks

**What are phases?**
- Sequential billing configurations with specific durations
- Each phase = distinct pricing, quantities, discounts, trial settings
- Only one phase active at any moment
- Maximum **10 concurrent or future phases** per schedule

**Phase duration:**
- Specify via `duration` parameter (recommended): `{interval: "month", interval_count: 12}` = 1 year
- Or via explicit `end_date` (error-prone, not recommended)
- Or "forever" (phase continues indefinitely until canceled)

**Phase transitions:**
- Automatic when `end_date` reached
- Subscription adopts next phase's configuration
- Triggers proration calculations (if enabled)

### Proration Control (Two Levels)

**Schedule-level proration:**
- `proration_behavior` parameter on the schedule
- Controls adjustments when updating the **active phase's** billing details
- Options: `create_prorations` (default), `none`, `always_invoice`

**Phase-level proration:**
- Individual phases define their own `proration_behavior` for **incoming transitions**
- Controls adjustments when transitioning **from previous phase to this phase**
- Overrides schedule-level setting for that specific transition

**Example:**
```
Schedule proration_behavior: create_prorations
Phase 1 proration_behavior: none (no proration when entering Phase 1)
Phase 2 proration_behavior: always_invoice (immediate invoice on transition to Phase 2)
```

**Reference:** https://docs.stripe.com/billing/subscriptions/billing-cycle

### Trial Implementation

**Trials attach to phases, not schedules:**
- Set `trial_end` on individual phases
- **Full-phase trial:** Set `trial_end` equal to phase `end_date`
- **Partial-phase trial:** Set `trial_end` before phase conclusion

**Example:** 30-day trial in 12-month phase
```
Phase 1: start_date = Jan 1, trial_end = Jan 31, end_date = Dec 31
```

### Attribute Inheritance Pattern

**How it works:**
When phases activate, their attributes propagate to the underlying subscription.

**Inheritable attributes:**
- Billing thresholds
- Collection methodology
- Payment methods
- Invoice configurations
- Metadata

**Precedence:** Phase attributes supersede schedule-level defaults.

**Example:**
```
Schedule: default_payment_method = pm_123
Phase 2: default_payment_method = pm_456

When Phase 2 activates → subscription uses pm_456
When Phase 3 activates (no payment method specified) → subscription keeps pm_456
```

### Metadata Management

**Phase-based metadata:**
- Merge into subscription when phase activates
- Non-empty values: Add new keys or update existing
- Empty values: Remove corresponding subscription metadata keys
- Prior metadata persists unless explicitly modified

**Use case:** Track which contract term is active
```
Phase 1 metadata: {contract_term: "year_1"}
Phase 2 metadata: {contract_term: "year_2"}
Phase 3 metadata: {contract_term: "year_3"}
```

### Critical Best Practices

1. **Use Schedule API exclusively** — Once a subscription has an attached schedule, avoid direct subscription modifications (they may create unintended phase splits)
2. **Store schedule IDs** — Track both `subscription.id` and `subscription_schedule.id` for API operations
3. **Discard IDs after release** — Once schedules release (`end_behavior=release`), treat subscriptions as independent entities (schedule no longer controls them)

**Direct subscription changes that auto-create phases:**
Modifying discounts, tax rates, items, trial settings, fees, or automatic tax calculations may automatically split phases at transition boundaries.

**Reference:** https://docs.stripe.com/billing/subscriptions/subscription-schedules#managing

---

# ========================================
# PART 4: API REFERENCE (Lookup)
# Purpose: Find API versions, billing modes, parameters, and how to use AgnosticInvocable
# ========================================

## API Version & Billing Modes

### Current Implementation: Classic Billing Mode

**API Version:** `2025-04-30.basil`

This package uses:
- AutoGen Extension (2025-04-30) for v02_* invocable actions
- Raw API calls via `GlobalInvocable.invoke()` in SubscriptionScheduleManagerHelper.cls
- **No `billing_mode` parameter** = defaults to **classic billing mode**

**Confirmed:** AutoGen 2025-04-30 classes (`v02_CreateSubscriptionSchedules`, `v02_SubscriptionSchedule`) do not have `billing_mode` fields.

### Flexible Billing Mode (Not Yet Supported)

**Introduced:** Stripe API version `2025-06-30.clover` and later

**Current Stripe API:** `2026-02-25` (as of March 2026)

**Key Differences:** https://docs.stripe.com/billing/subscriptions/billing-mode

#### What Flexible Billing Mode Changes

**🔄 Proration:**
- Accurate credit prorations (based on original debited amount, not current price state)
- Proportional discount application per subscription item
- Explicit $0 discount line items shown

**📊 Usage-Based (Metered) Pricing:**
- Bills unbilled usage on item removal (classic silently dropped it)
- Bills usage at the price when it was reported (not current price)
- Suppresses $0 line items (no phantom line items)
- Consolidated invoicing on phase transitions (single invoice vs two)

**📅 Billing Cycle Anchor:**
- No more implicit resets (only changes when explicitly set)

**⏪ Backdating:**
- Split into per-period line items (not one lump sum)
- Auto-aligns billing cycle anchor to `backdate_start_date`

**🆓 Trials:**
- Updates `trial_start` for subsequent trials (not just first trial)
- Preserves `trial_end` on cancellation changes

**📋 Pending Invoice Items:**
- Always included consistently (classic was inconsistent)

**🆕 New Capabilities (Flexible-only):**
- Mixed interval subscriptions (Private Preview) — combine monthly + annual prices on same subscription
- Scheduled cancellation proration control

**IMPORTANT:** Both classic and flexible modes still use **Stripe seconds-based proration**. Flexible mode improves accuracy but doesn't solve the Salesforce day/month proration incompatibility. See "Critical Decision: Proration Logic" section.

### Using Flexible Billing Mode Today

**Option 1: Use AgnosticInvocable (Recommended)**

Since AutoGen 2025-04-30 doesn't support billing modes, use raw API calls:

1. **In Flows:** Use `stripeGC.AgnosticInvocable` action ("Call a Stripe API Endpoint")
2. **Set API version:** `2025-06-30` or later (e.g., `2026-02-25`)
3. **Set endpoint:** `/v1/subscription_schedules`
4. **Set method:** `POST`
5. **Build request body:** Use Stripe API docs to construct parameters

**Example Flow XML:**
```xml
<actionCalls>
    <name>Create_Subscription_Schedule_Flexible_Billing</name>
    <actionName>stripeGC__AgnosticInvocable</actionName>
    <inputParameters>
        <name>endpoint</name>
        <value><stringValue>/v1/subscription_schedules</stringValue></value>
    </inputParameters>
    <inputParameters>
        <name>method</name>
        <value><stringValue>POST</stringValue></value>
    </inputParameters>
    <inputParameters>
        <name>apiVersion</name>
        <value><stringValue>2026-02-25</stringValue></value>
    </inputParameters>
    <inputParameters>
        <name>accountId</name>
        <value><elementReference>StripeAccount.Id</elementReference></value>
    </inputParameters>
    <inputParameters>
        <name>requestBody</name>
        <value><stringValue>customer=cus_123&phases[0][items][0][price]=price_456&phases[0][duration][interval]=month&phases[0][duration][interval_count]=12</stringValue></value>
    </inputParameters>
</actionCalls>
```

**Option 2: Clone Helper Class + Use AgnosticInvocable**

For complex scenarios:
1. Clone `SubscriptionScheduleManagerHelper.cls`
2. Update API version constant: `API_VERSION = '2026-02-25'`
3. Add billing_mode parameter construction in `buildSubscriptionSchedulePayload()` method
4. Deploy to your org

**Option 3: Wait for Updated AutoGen (Coming Soon)**

Future AutoGen extension will include v02_* actions with billing_mode support.

### For AI Agents: Detection & Guidance

**When user requirements involve features introduced after 2025-04-30:**

1. **Detect the requirement:**
   - Usage-based billing with "bill at reported price"
   - Mixed interval subscriptions
   - Improved proration accuracy
   - Backdating with per-period line items

2. **Recognize:** This is a flexible billing mode feature

3. **Inform user:**
   "This requires Stripe's flexible billing mode (API version 2025-06-30+). Current AutoGen (2025-04-30) doesn't support this. I'll use AgnosticInvocable with raw API calls."

4. **Fetch current docs:**
   Use WebFetch to retrieve latest Stripe API structure:
   - https://docs.stripe.com/api/subscription_schedules/create
   - https://docs.stripe.com/changelog (to identify changes since 2025-04-30)
   - https://docs.stripe.com/billing/subscriptions/billing-mode (for billing mode differences)

5. **Generate code:**
   Build Flow with AgnosticInvocable or custom Apex helper using fetched API structure

**Example AI workflow:**
```
User: "Create subscription schedule with usage-based billing that bills at the price when usage was reported"

AI: "This feature requires flexible billing mode (introduced 2025-06-30). Let me fetch the current API structure..."
[Uses WebFetch on https://docs.stripe.com/api/subscription_schedules/create]

AI: "I'll generate a Flow using AgnosticInvocable with API version 2026-02-25 and the correct parameters for metered billing."
[Generates Flow with proper request body structure]
```

**Do not wait for user to specify API version or billing mode.** Proactively detect requirements and route to appropriate solution.

---

# ========================================
# PART 5: COMMON PATTERNS (Examples)
# Purpose: Real-world implementation examples for typical use cases
# ========================================

## Common Patterns

### Pattern 1: Multi-Year Contract with Step Pricing

**Use case:** Enterprise deal with progressive pricing increase each year

**Salesforce setup:**
- Contract: 3-year term
- Order: 3 OrderItems with different start/end dates
  - OrderItem 1: Year 1, $100/month
  - OrderItem 2: Year 2, $120/month
  - OrderItem 3: Year 3, $140/month

**Stripe result:**
- Subscription Schedule with 3 phases
- Phase 1: 12-month duration, $100/month
- Phase 2: 12-month duration, $120/month
- Phase 3: 12-month duration, $140/month

**Automatic transitions:** At end of each phase, subscription adopts next phase pricing

### Pattern 2: Trial + Standard Pricing

**Use case:** 30-day free trial, then standard monthly pricing

**Salesforce setup:**
- Order: 1 OrderItem with trial period custom field
- Start date: March 1
- Trial duration: 30 days

**Stripe result:**
- Subscription Schedule with 1 phase
- Phase 1: `trial_end` = March 31, standard billing starts April 1

**Alternative:** Two phases (trial phase + paid phase) for more explicit structure

### Pattern 3: Seasonal Discount

**Use case:** First 3 months at 50% off, then full price

**Salesforce setup:**
- Order: 2 OrderItems (or 1 OrderItem with discount field)
  - Months 1-3: $50/month (50% discount)
  - Month 4+: $100/month

**Stripe result:**
- Subscription Schedule with 2 phases
- Phase 1: 3-month duration, $50/month (or $100 with 50% coupon)
- Phase 2: Forever duration, $100/month

### Pattern 4: Custom Pricing for Enterprise Deal

**Use case:** Negotiated pricing $85/month (not in catalog)

**Salesforce setup:**
- OrderItem: Custom_Price__c = true, Unit_Price = $85

**Flow logic:**
1. Detects custom pricing flag
2. Calls v02_CreatePrices to create new price_id
3. Stores price_id on OrderItem.Stripe_Price_ID__c
4. Uses in subscription schedule creation

**Stripe result:**
- New price created: $85/month (archived from catalog but referenceable)
- Subscription Schedule references custom price_id

**Future amendments:** Reuse same price_id for consistency

### Pattern 5: Steelbrick CPQ Quote → Subscription

**Use case:** Steelbrick CPQ Quote approval triggers subscription creation

**Salesforce setup:**
- Quote object: SBQQ__Ordered__c = true (triggers Order creation)
- Quote Lines → Order Products (via Steelbrick automation)
- Order activation → triggers Billing Flows

**Flow adaptations needed:**
1. Clone `Create_Stripe_Subscription_Schedule_from_Order`
2. Add pre-processing: Map Quote fields → Order fields
3. Map Quote Line fields → OrderItem fields
4. Verify price_id sync from Quote Line → PricebookEntry
5. Proceed with standard flow logic

**Key customization point:** Quote → Order field mappings (org-specific)

### Pattern 6: Revenue Cloud Order Management

**Use case:** Revenue Cloud Order lifecycle differs from Sales Cloud Orders

**Flow adaptations needed:**
1. Clone flows and update trigger conditions
2. Adjust Order status field checks (Revenue Cloud uses different statuses)
3. Map Revenue Cloud-specific fields (billing schedule fields)
4. Sync Revenue Cloud billing schedules → Stripe phases

**Consult Revenue Cloud docs for field mappings**

---

# ========================================
# PART 6: DEVELOPMENT REFERENCE (Code)
# Purpose: Locate files, understand code structure, and development setup
# ========================================

## Code Structure

### Apex Classes (`force-app/main/default/classes/`)

- **`SubscriptionScheduleManager.cls`** — `@InvocableMethod` entry point with operations: create, update, cancel subscription schedules
- **`SubscriptionScheduleManagerHelper.cls`** — Core business logic and object mapping for subscription schedule operations (~983 lines)
  - Uses `GlobalInvocable.invoke()` for raw Stripe API calls
  - API Version: `2025-04-30.basil`
  - Handles phase consolidation, discount coupon creation, field mapping
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

---

## Development Notes

- **Namespace:** `stripeGC` (shared with base connector and AutoGen)
- **Main trigger:** Order activation kicks off `Create_or_Update_Stripe_Subscription_Schedule_when_Order_is_Activated`
- **Bidirectional sync:** Salesforce → Stripe (get-or-create) and Stripe → Salesforce (sync-on-upsert)
- **CPE:** `subscriptionScheduleManagerCpe` provides UI in Flow Builder for configuring the subscription schedule manager action

---

# ========================================
# PART 7: AI GENERATION RULES (Instructions)
# Purpose: Follow these rules when generating subscription automation code
# ========================================

## For AI Agents: Quick Reference

**When generating subscription automation:**

1. **Ask clarifying questions first:**
   - "Are you using Steelbrick CPQ, Revenue Cloud, or Sales Cloud Orders?"
   - "Do you need classic or flexible billing mode?"
   - "How should proration work: Stripe (seconds), Salesforce (days), or disable?"
   - "Is this standard catalog pricing or custom negotiated pricing?"

2. **Check existing flows before building from scratch:**
   - Can an existing flow be used as-is?
   - Can an existing flow be cloned with minimal changes?
   - Can multiple existing flows be combined/adapted?
   - **Last resort:** Generate entirely new flow

3. **Understand the use case:**
   - Multi-term contract → Subscription Schedules required
   - Future-dated start → Subscription Schedules
   - Usage-based billing improvements → Flexible billing mode (AgnosticInvocable)
   - Custom pricing → Create price_id flow

4. **Know the limitations:**
   - AutoGen 2025-04-30 = classic billing mode only
   - Flexible billing mode = requires AgnosticInvocable with 2025-06-30+ API
   - Proration incompatibility = must choose Stripe or Salesforce logic
   - Unmanaged package = customization expected, not a workaround

5. **Fetch real-time docs when needed:**
   - Use WebFetch for Stripe API docs: https://docs.stripe.com/api/subscription_schedules
   - Check changelog: https://docs.stripe.com/changelog
   - Understand billing modes: https://docs.stripe.com/billing/subscriptions/billing-mode

6. **Generate appropriate code:**
   - Use v02_* actions when available (2025-04-30 features)
   - Use AgnosticInvocable for newer features (flexible billing mode)
   - Clone flows for customization (org-specific field mappings)
   - Include error handling with faultConnector (Sync_Log__c)

7. **Don't assume defaults are correct:**
   - Proration strategy must be explicitly chosen
   - Custom pricing approach must be decided
   - QTC model differences require adaptation

**You are an integration consultant, not just a code generator.** Help users make informed architectural decisions before writing code.
