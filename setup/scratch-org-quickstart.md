# Quick Runbook: Create a Salesforce Scratch Org for Stripe Development

Create a transient, fully accessible Scratch Org for Stripe integration development. This guide covers org creation, credential setup, Stripe package installation, and cleanup.

---

## Prerequisites

### You Need a Parent Org (Dev Hub)

Scratch orgs cannot be created in isolation. They are disposable child orgs managed by a **Dev Hub**, which must be enabled in one of these parent org types:

| Parent Org Type | How to Get One | Best For |
|---|---|---|
| **Developer Edition** (free) | [Sign up at developer.salesforce.com](https://developer.salesforce.com/signup) | Individual developers, learning, prototyping |
| **Production Org** | Your company's Salesforce org | Teams with an existing Salesforce deployment |
| **Partner Business Org (PBO)** | [Salesforce Partner Program](https://partners.salesforce.com/) | ISV partners, AppExchange developers |

If you don't have any of these, start with a free Developer Edition. Sign up, then enable Dev Hub in that org.

### Checklist

| Requirement | Command / Action | Notes |
|---|---|---|
| **Parent Org** | Developer Edition, Production, or PBO | See table above. You must have one of these first. |
| **Dev Hub Enabled** | Setup > Dev Hub > Toggle **ON** (in your parent org) | Allows the parent org to create and manage scratch orgs. |
| **Salesforce CLI** | `brew install sf` (macOS) or [download](https://developer.salesforce.com/tools/sfdxcli) | Required to run all `sf` commands. |
| **Dev Hub Authorized** | `sf org login web --set-default-dev-hub` | Authenticate your parent org (Dev Hub) via CLI. |
| **Stripe Account** | [dashboard.stripe.com](https://dashboard.stripe.com) | Test mode recommended for development. |

---

## Step 1: Create the DX Project

```bash
# Create the project folder
sf project generate --name rocket-rides-project

# Navigate into the project root (all commands run from here)
cd rocket-rides-project
```

If you're adding this to an existing SFDX project, skip this step and work from your project root.

---

## Step 2: Define the Scratch Org

Copy the definition file from this repo, or create `config/project-scratch-def.json` with this content:

```json
{
  "orgName": "Rocket Rides Scratch Org",
  "edition": "Developer",
  "features": [
    "LightningExperience",
    "API"
  ],
  "settings": {
    "lightningExperienceSettings": {
      "enableS1DesktopEnabled": true
    }
  }
}
```

A ready-to-use copy is available at [`setup/project-scratch-def.json`](project-scratch-def.json) in this repo.

---

## Step 3: Create the Scratch Org

```bash
sf org create scratch \
  --definition-file config/project-scratch-def.json \
  --alias rocket-rides-dev \
  --admin-email foo@bar.com \
  --duration-days 5 \
  --set-default
```

| Flag | Purpose |
|---|---|
| `--alias` | Short name for CLI commands. Change to whatever you prefer. |
| `--admin-email` | Replace with your email address. |
| `--duration-days` | Org auto-deletes after this period (max 30). |
| `--set-default` | Makes this the default org for `sf` commands. |

---

## Step 4: Get Login Credentials

Reset the admin password and print it to the console. This bypasses the email verification loop that scratch orgs sometimes trigger.

```bash
sf org reset password --target-org rocket-rides-dev
```

To view full org and user details:

```bash
# Org details (Org ID, Instance URL, Username)
sf org display

# User details (Username, Profile, Email)
sf org display user -o rocket-rides-dev
```

---

## Step 5: Install the Stripe App for Salesforce

Open the scratch org in your browser:

```bash
sf org open
```

Then install the Stripe packages via the AppExchange UI:

1. Go to [Stripe for Salesforce on AppExchange](https://appexchange.salesforce.com/appxListingDetail?listingId=4dff0f8e-0b10-47c2-a3a3-f3905e7f7927)
2. Click **Get It Now** and choose your scratch org
3. Install for **Admins Only** (recommended for dev)
4. Wait for the installation confirmation email

After the Universal Connector is installed:

1. Navigate to **Setup > Stripe for Salesforce > Get Started**
2. Click **Add Stripe Account**
3. Connect your Stripe test-mode account (API Key method recommended)
4. Install the **API Extension (2025-04-30)** when prompted during setup
5. Verify: Setup > Stripe for Salesforce > Accounts > Status shows **Connected**

---

## Step 6: Configure CSP Trusted Sites (Required for LWC Development)

**This must be done via the Setup UI — metadata deployment does not work correctly for CSP.**

1. Setup > CSP Trusted Sites > New Trusted Site
2. **Trusted Site Name**: `StripeJS`
3. **Trusted Site URL**: `https://js.stripe.com`
4. Check **ALL** directive boxes:
   - connect-src
   - font-src
   - **frame-src** (critical for Payment Element iframes)
   - img-src
   - media-src
   - style-src
5. Save
6. Repeat for `https://api.stripe.com` with all boxes checked

**Why this matters:** Without `frame-src`, the Stripe Payment Element renders as an empty div with no visible error.

---

## Step 7: Deploy Examples and Test

If you cloned this repo, deploy the example Flows, Apex, and LWC to your scratch org:

```bash
# From the repo root
sf project deploy start \
  --source-dir examples/force-app \
  --target-org rocket-rides-dev
```

Then verify the deployment:

```bash
# Check deployed components
sf project deploy report --target-org rocket-rides-dev
```

Open the org and test:

```bash
sf org open -o rocket-rides-dev
```

---

## Command Reference

| Action | Command |
|---|---|
| Open org in browser | `sf org open` |
| Display org details | `sf org display` |
| Display user details | `sf org display user -o rocket-rides-dev` |
| Reset password | `sf org reset password --target-org rocket-rides-dev` |
| Deploy metadata | `sf project deploy start --target-org rocket-rides-dev` |
| Run Apex tests | `sf apex run test --target-org rocket-rides-dev --wait 10` |
| Delete scratch org | `sf org delete scratch --target-org rocket-rides-dev --no-prompt` |

---

## Troubleshooting

**"You do not have access to the Dev Hub" error**
- You need a parent org (Developer Edition, Production, or PBO) with Dev Hub enabled. Scratch orgs cannot be created without one.
- If you have a parent org: ensure Dev Hub is toggled ON in Setup > Dev Hub.
- Re-authorize with `sf org login web --set-default-dev-hub` and log in to the parent org (not the scratch org).
- If you don't have any org yet, sign up for a free [Developer Edition](https://developer.salesforce.com/signup).

**Scratch org creation fails with edition error**
- Developer edition is free but limited. If you need Enterprise features, change `"edition": "Enterprise"` in the scratch def (requires a Dev Hub with that entitlement — typically Production or PBO orgs).

**Package install fails or stalls**
- Scratch orgs can be slow to process managed package installs. Wait for the confirmation email before proceeding.
- If the install fails, check Setup > Installed Packages for error details.

**"Callout from triggers not supported" after deploying Flows**
- Record-triggered Flows with API callouts must use `AsyncAfterCommit` scheduled paths. See `context/rules/flow-builder.mdc` for the correct pattern.

---

## What's Next

After your scratch org is configured:

1. Load the context files — see [Get Started](../README.md#get-started--load-context) in the main README
2. Generate your first Flow, LWC, or Apex using the AI prompts
3. Deploy to the scratch org and test end-to-end
4. Iterate: prompt > generate > deploy > test
