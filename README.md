# Stripe App for Salesforce + AI Coding Tools

**Build Stripe-Salesforce automations faster with AI coding tools. AI-native context files that reduce the hallucinations.**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](#contributing)

---

## The Problem

You ask Claude Code, Cursor, or Copilot to "generate a Salesforce Flow that creates a Stripe Customer using the Stripe App."

**What happens:**
1. The AI fetches Stripe API docs (raw REST API, not the managed package)
2. It searches Salesforce docs for generic Flow patterns
3. It burns 100K+ tokens researching the wrong approach
4. Then it generates code with hallucinated invocable action names
5. You deploy it... and it breaks

**The cost:** Minutes of waiting, wasted tokens, and code that doesn't work with the Stripe App for Salesforce.

## The Solution

This repo provides **AI-native context files** that teach AI tools the Stripe App for Salesforce surface—the package structure, invocable actions (`v02_*`), custom objects (`stripeGC__*`), and deployment constraints. These files are structured specifically for AI consumption, not just human documentation.

**With these context files:**
- ✅ AI uses real invocable action names (`stripeGC__v02_CreateCustomers`)
- ✅ Includes `AsyncAfterCommit` for record-triggered callout flows
- ✅ Mounts Payment Element correctly with Shadow DOM patterns
- ✅ No token waste on irrelevant documentation
- ✅ Fewer iterations from prompt to working code

**Result:** Generate working Flows, LWC components, and Apex in one or two iterations instead of five.

---

## 🔌 Wake Word - Load All Context

**One command loads everything:**

**Claude Code:**
```
Read context/LOAD_ALL.md
```

**Codex / Cursor / Cody:**
```
@context/LOAD_ALL.md
```

**Aider:**
```bash
aider --read context/LOAD_ALL.md
```

**GitHub Copilot / Gemini / ChatGPT:**
Copy-paste the content from `prompts/load-stripe-context.txt` into your AI tool.

The AI will automatically load all 7 context files and respond: **"I know Stripe for Salesforce 😎"**

Now prompt naturally:
- "Generate a Flow that creates a Stripe Customer when Opportunity closes"
- "Build an LWC with Payment Element for the Order page"
- "Create an Apex invocable that handles subscription cancellation"

---

## What You Can Build

With AI tools + these context files, you can generate:

| Use Case | What It Does | Context Files |
|----------|--------------|---------------|
| **Stripe Customer Creation Flow** | Auto-create Stripe Customer when Opportunity closes | `flow-builder.mdc` |
| **Checkout Session Flow** | Generate Stripe Checkout Session link from Opportunity | `flow-builder.mdc` |
| **Subscription Flow** | Create Stripe Subscription from Contract | `flow-builder.mdc` |
| **Payment Element LWC** | Embed Stripe Payment Element on record pages | `lwc-stripe-payment.mdc` |
| **Payment Link Generator LWC** | One-click payment link sharing | `lwc-stripe-payment.mdc` |
| **Custom API Invocables** | Wrap Stripe API calls for Flow use | `Stripe-Salesforce-Platform-Architecture.md` |

---

## Quick Start

### 1. Install Prerequisites

**Required:**
- Salesforce org (Enterprise Edition or higher recommended)
- [Stripe Universal Connector](https://appexchange.salesforce.com/appxListingDetail?listingId=a0N3A00000EcrOnUAJ) v2.7.0+ (managed package)
- [Stripe API Extension] 2025-04-30 version (extension package)
- AI coding tool: Claude Code or Cursor or GitHub Copilot
- [Salesforce CLI](https://developer.salesforce.com/tools/sfdxcli) (`sf` command)

See [full installation guide](#prerequisites-detailed-setup) below for step-by-step instructions.

### 2. Copy Context Files to Your Project

```bash
# Copy to your Salesforce project root
cp -r context /path/to/your/salesforce-project/
```

Alternatively, keep context files in this repo and reference them directly using the wake word (see above).

### 3. Generate Your First Flow

Open your AI tool in the project directory and prompt:

```
Using the flow-builder.mdc rules, generate a Salesforce Flow that:
- Triggers when Opportunity.StageName = "Closed Won"
- Creates a Stripe Customer from the Account
- Logs errors to Sync_Log__c
```

The AI will generate working Flow XML. Review it, deploy to a sandbox, and test.

---

## Repository Structure

```
stripe-salesforce-ai-grounding/
├── README.md                       # This file
├── LICENSE                         # MIT License
│
├── context/                        # AI-native context files
│   ├── LOAD_ALL.md                 # Master context loader (wake word)
│   ├── Stripe-Salesforce-Platform-Architecture.md  # Universal Connector architecture
│   ├── API-Extension.md            # AutoGen invocables reference
│   ├── Stripe-Billing-Flows.md     # Stripe Billing flows
│   ├── invocable-actions-reference.md  # Auto-generated API reference
│   ├── models-reference.md         # Auto-generated model reference
│   └── rules/
│       ├── flow-builder.mdc        # Flow generation rules
│       └── lwc-stripe-payment.mdc  # LWC + Stripe.js patterns
│
├── prompts/                        # Copy-paste prompts
│   └── load-stripe-context.txt     # Universal context loader prompt
│
├── scripts/                        # Reference generation scripts
│   ├── generate-invocable-reference.py
│   └── generate-models-reference.py
│
└── examples/                       # Working code examples (3 Flows, 1 LWC, 3 Apex)
    ├── flows/                      # 3 validated Flow examples
    ├── lwc/                        # Payment Element LWC
    └── apex/                       # 3 Apex classes (controller + invocable + queueable)
```

---

## What's Inside

### Salesforce Flow Patterns (`rules/flow-builder.mdc`)

**The AI learns:**
- ✅ Required Stripe Account lookup preamble (every Flow needs this)
- ✅ `AsyncAfterCommit` scheduled path for record-triggered Flows
- ✅ Connector integrity rules (no orphaned elements)
- ✅ Error handling with `Sync_Log__c`
- ✅ Idempotency key patterns
- ✅ Apex variable limitations (workarounds for complex types)

**Example rule snippet:**
```markdown
## Required Preamble: Stripe Account Lookup

Every flow must resolve the Stripe Account record first:
1. recordLookups element to query Stripe_Account__c by Name
2. decisions element to null-check the result
3. Pass Get_Stripe_Account.Id as accountRecordId to all API calls
```

### LWC + Stripe.js Patterns (`rules/lwc-stripe-payment.mdc`)

**The AI learns:**
- ✅ CSP Trusted Sites configuration (`frame-src` critical for Payment Element)
- ✅ Shadow DOM: use `data-*` attributes, not IDs
- ✅ Load Stripe.js from CDN via `loadScript()`
- ✅ Mount Payment Element in `renderedCallback()` with guard flag
- ✅ Payment confirmation with `redirect: 'if_required'` for 3DS
- ✅ Server-side verification before marking records as paid
- ✅ Webhook lag handling (Queueable with retry)

**Example rule snippet:**
```markdown
## Shadow DOM — Data Attributes, Not IDs

LWC Shadow DOM scopes element IDs. Always use data attributes:

<!-- ✅ Correct -->
<div data-stripe-element="payment"></div>

<!-- ❌ Wrong — Stripe.js can't find scoped ID -->
<div id="payment-element"></div>
```

### Architecture Context (`Stripe-Salesforce-Platform-Architecture.md`, `API-Extension.md`)

**The AI learns:**
- Package hierarchy (managed vs extension packages)
- Namespace: `stripeGC`
- API version compatibility (2022-11-15 vs 2025-04-30)
- Custom object relationships (`Customer__c`, `Invoice__c`, etc.)
- Invocable action naming (`v02_CreateCustomers`, `v02_CreatePaymentIntents`)
- Key Apex classes and LWC components

---

## Example Prompts

### Generate a Flow

```
Using the flow-builder.mdc rules, generate a Salesforce Flow that:
- Triggers when Contract is activated
- Creates a Stripe Subscription with items from Contract Line Items
- Maps Contract.stripeGC__Customer__c to the Stripe Customer
- Handles errors by creating a Sync_Log__c record
```

### Generate an LWC

```
Using the lwc-stripe-payment.mdc rules, generate a Lightning Web Component that:
- Displays on the Order record page
- Shows "Pay Now" button only if Order.Payment_Captured__c = false
- Creates a PaymentIntent for Order.TotalAmount
- Mounts Stripe Payment Element for card collection
- After payment confirmation, updates Order.Payment_Captured__c = true
- Includes Apex controller with createPaymentIntent and recordPaymentSuccess methods
```

### Generate Apex

```
Using the API-Extension.md context, create an Apex invocable action that:
- Accepts customerId (String), priceId (String), quantity (Integer)
- Creates a Stripe Subscription with a single item
- Returns the Subscription ID for use in Flow
- Includes proper error handling and user-mode security
```

---

## Best Practices

### Before Generating Code

1. **Verify prerequisites** — ensure your org has Stripe packages installed
2. **Review context files** — understand the patterns before prompting
3. **Start simple** — generate read-only queries first, then write operations
4. **Run AI tool from project directory** — context files must be visible

### After Generating Code

1. **Review for security** — check `with sharing`, `WITH USER_MODE`, field-level security
2. **Replace placeholders** — Stripe Account names, URLs, test values
3. **Deploy to sandbox first** — never deploy AI-generated code directly to production
4. **Test end-to-end** — create test records, trigger flows, verify in Stripe Dashboard
5. **Verify org-specific fields** — the AI assumes standard Stripe package objects exist, but custom fields on Opportunity/Account are placeholders you need to create

---

## Troubleshooting

### Common Issues

**Flow deployment fails: "One or more elements without an incoming connection"**
- **Cause:** Orphaned element (defined but no connector targets it)
- **Fix:** Ensure every element has a `<connector>` or `<faultConnector>` pointing to it

**Payment Element renders as empty div**
- **Cause:** CSP `frame-src` directive not configured for `js.stripe.com`
- **Fix:** Setup → CSP Trusted Sites → check ALL directive boxes (metadata deploy doesn't work)

**"Callout from triggers not supported" error**
- **Cause:** Record-triggered Flow making HTTP callout in immediate path
- **Fix:** Use `<scheduledPaths>` with `<pathType>AsyncAfterCommit</pathType>`

**Charge__c lookup returns empty after confirmPayment**
- **Cause:** Webhook lag—the `charge.succeeded` event hasn't been processed yet
- **Fix:** Use Queueable with delay to retry the lookup

**AI generates hallucinated invocable action names**
- **Cause:** AI tool didn't read the context files
- **Fix:** Ensure context files are in your project directory and explicitly reference them in your prompt

---

## Prerequisites (Detailed Setup)

### 1. Salesforce Org Requirements

**Minimum Salesforce Edition:**
- Enterprise Edition or higher (recommended)
- Professional Edition works but lacks some features (Apex callouts limited)

**Required Salesforce Permissions:**
- System Administrator profile (for setup)
- Customize Application permission
- API Enabled permission
- Modify All Data permission (for package installation)

**Recommended Salesforce API Version:** 64.0 or higher

### 2. Install Stripe Universal Connector

**Via AppExchange (Recommended):**
1. Go to [Stripe for Salesforce on AppExchange](https://appexchange.salesforce.com/appxListingDetail?listingId=4dff0f8e-0b10-47c2-a3a3-f3905e7f7927)
2. Click "Get It Now"
3. Choose your org (Production or Sandbox)
4. Install for "Admins Only" or "All Users"

**Current Version:** 2.7.0 (as of March 2026)

**What it includes:**
- Custom objects: `Stripe_Account__c`, `Customer__c`, `Invoice__c`, `Subscription__c`, etc.
- Lightning Web Components: Setup wizard, connector UI
- Apex classes: API wrappers, callout handlers
- Namespace: `stripeGC`

### 3. Install Required Extensions

During the Stripe App setup in Salesforce, you'll be prompted to install extensions:

**Required Extension:**
- **Stripe API Extension (2025-04-30)** - Provides 241 invocable actions (`v02_CreateCustomers`, `v02_CreatePaymentIntents`, etc.) and API model classes

**Optional Extensions:**
- **Stripe Billing Flows** - Subscription schedule automation
- **Stripe Payments for Salesforce Billing** - Legacy Salesforce Billing & Payments integration

All extensions share the `stripeGC` namespace and are installed through the app setup wizard.

**Learn more:** [Stripe App for Salesforce Documentation](https://docs.stripe.com/use-stripe-apps/stripe-app-for-salesforce/overview)

### 4. Configure Stripe Account in Salesforce

1. Setup → Stripe for Salesforce → Get Started
2. Click "Add Stripe Account"
3. Choose authentication method (API Key recommended)
4. Connect your Stripe account (test mode for development)
5. Verify: Setup → Stripe for Salesforce → Accounts → Status should show "Connected"

### 5. Configure CSP Trusted Sites (_Optional - Critical for LWC use cases and development_)

⚠️ **MUST be done via Setup UI—metadata deployment doesn't work correctly.**

**Steps:**
1. Setup → CSP Trusted Sites → New Trusted Site
2. **Trusted Site Name**: `Stripe JS`
3. **Trusted Site URL**: `https://js.stripe.com`
4. **Check ALL directive boxes:**
   - ☑ connect-src
   - ☑ font-src
   - ☑ **frame-src** ← **CRITICAL** for Payment Element iframes
   - ☑ img-src
   - ☑ media-src
   - ☑ style-src
5. Save
6. Repeat for `https://api.stripe.com` with all boxes checked

**Why this matters:** Without `frame-src`, Payment Element renders as an empty div with no visible error.

### 6. Install AI Coding Tool

**Option A: Claude Code CLI (Recommended)**
```bash
npm install -g @anthropic-ai/claude-code
# Or download from https://claude.com/code
```

**Option B: Cursor IDE**
Download from [cursor.sh](https://cursor.sh/)

**Option C: GitHub Copilot**
Install from [github.com/features/copilot](https://github.com/features/copilot)

**Note:** Copilot requires more explicit prompting and doesn't natively read `.mdc` files.

### 7. Salesforce CLI Setup

```bash
# Install sf CLI
brew install salesforce-cli  # macOS
# OR
npm install -g @salesforce/cli  # Windows/Linux

# Authorize your org
sf org login web -a mydev -r https://test.salesforce.com  # Sandbox
# OR
sf org login web -a myprod -r https://login.salesforce.com  # Production

# Set default org
sf config set target-org mydev
```

### 8. Verify Installation

```bash
# Check Universal Connector
sf data query \
  --query "SELECT Id, Name FROM stripeGC__Stripe_Account__c LIMIT 1" \
  --use-tooling-api \
  -o mydev

# Check AutoGen Classes
sf data query \
  --query "SELECT Id, Name FROM ApexClass WHERE Name LIKE 'v02_CreateCustomers' LIMIT 1" \
  --use-tooling-api \
  -o mydev
```

Expected: Both queries return results.

---

## Contributing

We welcome contributions! If you've:
- Built a pattern that works well (new Flow recipe, LWC component)
- Discovered an edge case (and the fix)
- Improved a context file rule (better error handling, clearer syntax)

Please open a pull request.

### Ways to Contribute

1. **Submit New Patterns** — Share working Flows, LWCs, or Apex patterns
2. **Improve Context Files** — Make `.mdc` rules more accurate
3. **Report Bugs** — If AI-generated code produces errors, open an issue
4. **Fix Documentation** — Typos, outdated examples, broken links

### Before Submitting

1. **Test your pattern** — ensure it works in a scratch org or sandbox
2. **Review for security** — no hardcoded secrets, proper `with sharing`, FLS checks
3. **Follow naming conventions** — match existing file and class naming patterns
4. **Add comments** — explain non-obvious logic

### Code Quality Standards

**Salesforce Flows:**
- Must include Stripe Account lookup preamble
- Must include null-check decisions
- Must include `faultConnector` on all API calls
- Must log errors to `Sync_Log__c`
- Must use `AsyncAfterCommit` for record-triggered flows with callouts
- Status must be `Draft` (users activate after testing)

**Lightning Web Components:**
- Must use `data-*` attributes for Stripe element containers (not IDs)
- Must load Stripe.js from CDN via `loadScript()`
- Must mount Payment Element in `renderedCallback()` with guard flag
- Must use `WITH USER_MODE` in Apex queries
- Must include JSDoc comments on public methods

**Apex Classes:**
- Must use `with sharing` unless there's a documented reason not to
- Must use `WITH USER_MODE` in SOQL queries
- Must include `@AuraEnabled(cacheable=false)` for write operations
- Must validate inputs (null checks, type validation)
- Must include proper error handling (`try/catch`)

### Areas Where We Need Help

**High Priority:**
- Stripe Connect patterns (platform accounts, transfers)
- Refund and dispute handling flows
- Multi-currency support patterns
- Bulk operation patterns

**Medium Priority:**
- Payment Link generator LWC
- Subscription cancellation flows
- Invoice finalization flows
- Customer portal patterns

---

## Versioning

This repo tracks versions of the Stripe App for Salesforce packages:

| Context Files Version | Stripe Universal Connector | AutoGen API Version | Notes |
|----------------------|----------------------------|---------------------|-------|
| **v1.0** | 2.7.0 | 2025-04-30 (v1.1) | Initial release |
| **v0.9** (beta) | 2.0.0 | 2022-11-15 (v1.0) | Legacy support |

Always use context files that match your installed package versions.

---

## Limitations

**What this doesn't replace:**
- ❌ Security reviews (CRUD, FLS, injection vulnerabilities)
- ❌ Business logic validation (pricing rules, refund policies)
- ❌ Performance optimization (governor limits, bulk operations)
- ❌ Production monitoring (observability, alerting)

**AI agents can still:**
- Miss edge cases in complex logic
- Generate code that works but isn't optimal
- Produce patterns that need refactoring

**Always human-review generated code** before deploying to production.

---

## License

MIT License. See [LICENSE](LICENSE) for details.

---

## Disclaimer

These are **reference implementations**, not production-ready code. You are responsible for:
- Security reviews (PCI compliance, CRUD/FLS enforcement)
- Testing in your org configuration
- Production monitoring and error handling
- Compliance with Stripe and Salesforce terms of service

This project is not affiliated with or endorsed by Stripe, Inc. or Salesforce, Inc.

---

## Additional Resources

- [Stripe App for Salesforce Documentation](https://docs.stripe.com/use-stripe-apps/stripe-app-for-salesforce/overview)
- [Stripe Universal Connector (AppExchange)](https://appexchange.salesforce.com/appxListingDetail?listingId=a0N3A00000EcrOnUAJ)
- [Stripe API Documentation](https://stripe.com/docs/api)
- [Salesforce Flow Builder Documentation](https://help.salesforce.com/s/articleView?id=sf.flow.htm)
- [Stripe.js Reference](https://stripe.com/docs/js)

---

## Community

- **GitHub Issues**: Report bugs or request new patterns
- **GitHub Discussions**: Ask questions, share your implementations
- **Pull Requests**: Contributions welcome!

---

_Built for Salesforce admins, developers, and Stripe implementation partners who want to leverage AI coding tools effectively._
