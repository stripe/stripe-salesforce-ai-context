# Stripe API Models Reference

Auto-generated reference for ALL `v02_*` model classes in the Stripe Universal Connector AutoGen extension (2025-04-30).

**Includes both REQUEST and RESPONSE models:**
- **Response models** (e.g., `v02_Invoice`, `v02_PaymentIntent`): Returned by invocable actions. Access fields via dot notation in Flows or Apex.
- **Request models** (e.g., `v02_CreatePaymentLinksReqLineItem`): Used to construct inputs for invocable actions. Build these in Apex helper classes when Flows need complex nested objects.

Use this reference to know which fields are available when building helper Apex invocable classes.

---

## Categories

- [Account](#account) (43 models)
- [Application Fee](#application-fee) (1 models)
- [Balance](#balance) (7 models)
- [Billing](#billing) (8 models)
- [Charge](#charge) (4 models)
- [Checkout](#checkout) (46 models)
- [Climate](#climate) (4 models)
- [Coupon](#coupon) (5 models)
- [Credit Note](#credit-note) (6 models)
- [Customer](#customer) (12 models)
- [Deleted Types](#deleted-types) (13 models)
- [Discount](#discount) (3 models)
- [Event](#event) (1 models)
- [File](#file) (2 models)
- [Invoice](#invoice) (41 models)
- [Issuing](#issuing) (17 models)
- [Line Item](#line-item) (3 models)
- [List & Search Types](#list--search-types) (63 models)
- [Other](#other) (1650 models)
- [Payment Intent](#payment-intent) (28 models)
- [Payment Link](#payment-link) (17 models)
- [Payment Method](#payment-method) (111 models)
- [Payment Source](#payment-source) (1 models)
- [Payout](#payout) (2 models)
- [Plan](#plan) (2 models)
- [Price](#price) (4 models)
- [Product](#product) (3 models)
- [Promotion Code](#promotion-code) (3 models)
- [Quote](#quote) (12 models)
- [Refund](#refund) (16 models)
- [Setup Intent](#setup-intent) (13 models)
- [Subscription](#subscription) (12 models)
- [Tax](#tax) (2 models)
- [Terminal](#terminal) (12 models)
- [Transfer](#transfer) (4 models)
- [Treasury](#treasury) (4 models)

---

## Account

### `v02_Account`

| Field | Stripe API Name | Type |
|---|---|---|
| `businessProfile` | `business_profile` | `v02_AccountBusinessProfile` |
| `businessType` | `business_type` | `String` |
| `capabilities` | `capabilities` | `v02_AccountCapabilities` |
| `chargesEnabled` | `charges_enabled` | `Boolean` |
| `company` | `company` | `v02_LegalEntityCompany` |
| `controller` | `controller` | `v02_AccountUnificationAccountController` |
| `country` | `country` | `String` |
| `created` | `created` | `Integer` |
| `defaultCurrency` | `default_currency` | `String` |
| `detailsSubmitted` | `details_submitted` | `Boolean` |
| `email` | `email` | `String` |
| `externalAccounts` | `external_accounts` | `v02_ExternalAccountList` |
| `futureRequirements` | `future_requirements` | `v02_AccountFutureRequirements` |
| `groups` | `groups` | `v02_AccountGroupMembership` |
| `id` | `id` | `String` |
| `individual` | `individual` | `v02_Person` |
| `metadata` | `metadata` | `v02_Metadata` |
| `r_object` | `object` | `String` |
| `payoutsEnabled` | `payouts_enabled` | `Boolean` |
| `requirements` | `requirements` | `v02_AccountRequirements` |
| `settings` | `settings` | `v02_AccountSettings` |
| `tosAcceptance` | `tos_acceptance` | `v02_AccountTosAcceptance` |
| `type` | `type` | `String` |

### `v02_AccountAnnualRevenue`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `r_currency` | `r_currency` | `String` |
| `fiscalYearEnd` | `fiscalYearEnd` | `String` |

### `v02_AccountBacsDebitPaymentsSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayName` | `displayName` | `String` |
| `serviceUserNumber` | `serviceUserNumber` | `String` |

### `v02_AccountBrandingSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `icon` | `icon` | `String` |
| `logo` | `logo` | `String` |
| `primaryColor` | `primaryColor` | `String` |
| `secondaryColor` | `secondaryColor` | `String` |

### `v02_AccountBusinessProfile`

| Field | Stripe API Name | Type |
|---|---|---|
| `annualRevenue` | `annualRevenue` | `v02_AccountAnnualRevenue` |
| `estimatedWorkerCount` | `estimatedWorkerCount` | `Integer` |
| `mcc` | `mcc` | `String` |
| `minorityOwnedBusinessDesignation` | `minorityOwnedBusinessDesignation` | `List<String>` |
| `monthlyEstimatedRevenue` | `monthlyEstimatedRevenue` | `v02_AccountMonthlyEstimatedRevenue` |
| `name` | `name` | `String` |
| `productDescription` | `productDescription` | `String` |
| `supportAddress` | `supportAddress` | `v02_Address` |
| `supportEmail` | `supportEmail` | `String` |
| `supportPhone` | `supportPhone` | `String` |
| `supportUrl` | `supportUrl` | `String` |
| `url` | `url` | `String` |

### `v02_AccountCapabilities`

| Field | Stripe API Name | Type |
|---|---|---|
| `acssDebitPayments` | `acssDebitPayments` | `String` |
| `affirmPayments` | `affirmPayments` | `String` |
| `afterpayClearpayPayments` | `afterpayClearpayPayments` | `String` |
| `almaPayments` | `almaPayments` | `String` |
| `amazonPayPayments` | `amazonPayPayments` | `String` |
| `auBecsDebitPayments` | `auBecsDebitPayments` | `String` |
| `bacsDebitPayments` | `bacsDebitPayments` | `String` |
| `bancontactPayments` | `bancontactPayments` | `String` |
| `bankTransferPayments` | `bankTransferPayments` | `String` |
| `billiePayments` | `billiePayments` | `String` |
| `blikPayments` | `blikPayments` | `String` |
| `boletoPayments` | `boletoPayments` | `String` |
| `cardIssuing` | `cardIssuing` | `String` |
| `cardPayments` | `cardPayments` | `String` |
| `cartesBancairesPayments` | `cartesBancairesPayments` | `String` |
| `cashappPayments` | `cashappPayments` | `String` |
| `epsPayments` | `epsPayments` | `String` |
| `fpxPayments` | `fpxPayments` | `String` |
| `gbBankTransferPayments` | `gbBankTransferPayments` | `String` |
| `giropayPayments` | `giropayPayments` | `String` |
| `grabpayPayments` | `grabpayPayments` | `String` |
| `idealPayments` | `idealPayments` | `String` |
| `indiaInternationalPayments` | `indiaInternationalPayments` | `String` |
| `jcbPayments` | `jcbPayments` | `String` |
| `jpBankTransferPayments` | `jpBankTransferPayments` | `String` |
| `kakaoPayPayments` | `kakaoPayPayments` | `String` |
| `klarnaPayments` | `klarnaPayments` | `String` |
| `konbiniPayments` | `konbiniPayments` | `String` |
| `krCardPayments` | `krCardPayments` | `String` |
| `legacyPayments` | `legacyPayments` | `String` |
| `linkPayments` | `linkPayments` | `String` |
| `mobilepayPayments` | `mobilepayPayments` | `String` |
| `multibancoPayments` | `multibancoPayments` | `String` |
| `mxBankTransferPayments` | `mxBankTransferPayments` | `String` |
| `naverPayPayments` | `naverPayPayments` | `String` |
| `nzBankAccountBecsDebitPayments` | `nzBankAccountBecsDebitPayments` | `String` |
| `oxxoPayments` | `oxxoPayments` | `String` |
| `p24Payments` | `p24Payments` | `String` |
| `payByBankPayments` | `payByBankPayments` | `String` |
| `paycoPayments` | `paycoPayments` | `String` |
| `paynowPayments` | `paynowPayments` | `String` |
| `promptpayPayments` | `promptpayPayments` | `String` |
| `revolutPayPayments` | `revolutPayPayments` | `String` |
| `samsungPayPayments` | `samsungPayPayments` | `String` |
| `satispayPayments` | `satispayPayments` | `String` |
| `sepaBankTransferPayments` | `sepaBankTransferPayments` | `String` |
| `sepaDebitPayments` | `sepaDebitPayments` | `String` |
| `sofortPayments` | `sofortPayments` | `String` |
| `swishPayments` | `swishPayments` | `String` |
| `taxReportingUs1099K` | `taxReportingUs1099K` | `String` |
| `taxReportingUs1099Misc` | `taxReportingUs1099Misc` | `String` |
| `transfers` | `transfers` | `String` |
| `treasury` | `treasury` | `String` |
| `twintPayments` | `twintPayments` | `String` |
| `usBankAccountAchPayments` | `usBankAccountAchPayments` | `String` |
| `usBankTransferPayments` | `usBankTransferPayments` | `String` |
| `zipPayments` | `zipPayments` | `String` |

### `v02_AccountCapabilityFutureRequirements`

| Field | Stripe API Name | Type |
|---|---|---|
| `alternatives` | `alternatives` | `List<v02_AccountRequirementsAlternative>` |
| `currentDeadline` | `currentDeadline` | `Integer` |
| `currentlyDue` | `currentlyDue` | `List<String>` |
| `disabledReason` | `disabledReason` | `String` |
| `errors` | `errors` | `List<v02_AccountRequirementsError>` |
| `eventuallyDue` | `eventuallyDue` | `List<String>` |
| `pastDue` | `pastDue` | `List<String>` |
| `pendingVerification` | `pendingVerification` | `List<String>` |

### `v02_AccountCapabilityRequirements`

| Field | Stripe API Name | Type |
|---|---|---|
| `alternatives` | `alternatives` | `List<v02_AccountRequirementsAlternative>` |
| `currentDeadline` | `currentDeadline` | `Integer` |
| `currentlyDue` | `currentlyDue` | `List<String>` |
| `disabledReason` | `disabledReason` | `String` |
| `errors` | `errors` | `List<v02_AccountRequirementsError>` |
| `eventuallyDue` | `eventuallyDue` | `List<String>` |
| `pastDue` | `pastDue` | `List<String>` |
| `pendingVerification` | `pendingVerification` | `List<String>` |

### `v02_AccountCardIssuingSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `tosAcceptance` | `tosAcceptance` | `v02_CardIssuingAccountTermsOfService` |

### `v02_AccountCardPaymentsSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `declineOn` | `declineOn` | `v02_AccountDeclineChargeOn` |
| `statementDescriptorPrefix` | `statementDescriptorPrefix` | `String` |
| `statementDescriptorPrefixKana` | `statementDescriptorPrefixKana` | `String` |
| `statementDescriptorPrefixKanji` | `statementDescriptorPrefixKanji` | `String` |

### `v02_AccountDashboardSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayName` | `displayName` | `String` |
| `timezone` | `timezone` | `String` |

### `v02_AccountDeclineChargeOn`

| Field | Stripe API Name | Type |
|---|---|---|
| `avsFailure` | `avsFailure` | `Boolean` |
| `cvcFailure` | `cvcFailure` | `Boolean` |

### `v02_AccountFutureRequirements`

| Field | Stripe API Name | Type |
|---|---|---|
| `alternatives` | `alternatives` | `List<v02_AccountRequirementsAlternative>` |
| `currentDeadline` | `currentDeadline` | `Integer` |
| `currentlyDue` | `currentlyDue` | `List<String>` |
| `disabledReason` | `disabledReason` | `String` |
| `errors` | `errors` | `List<v02_AccountRequirementsError>` |
| `eventuallyDue` | `eventuallyDue` | `List<String>` |
| `pastDue` | `pastDue` | `List<String>` |
| `pendingVerification` | `pendingVerification` | `List<String>` |

### `v02_AccountGroupMembership`

| Field | Stripe API Name | Type |
|---|---|---|
| `paymentsPricing` | `paymentsPricing` | `String` |

### `v02_AccountInvoicesSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `defaultAccountTaxIds` | `defaultAccountTaxIds` | `List<v02_AccountInvoicesSettingsDefaultAccoun>` |
| `hostedPaymentMethodSave` | `hostedPaymentMethodSave` | `String` |

### `v02_AccountInvoicesSettingsDefaultAccoun`

| Field | Stripe API Name | Type |
|---|---|---|
| `stringField` | `stringField` | `String` |
| `country` | `country` | `String` |
| `created` | `created` | `Integer` |
| `customer` | `customer` | `String` |
| `id` | `id` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `r_object` | `r_object` | `String` |
| `owner` | `owner` | `v02_TaxIDsOwner` |
| `type` | `type` | `String` |
| `value` | `value` | `String` |
| `verification` | `verification` | `v02_TaxIdVerification` |

### `v02_AccountLink`

| Field | Stripe API Name | Type |
|---|---|---|
| `created` | `created` | `Integer` |
| `expiresAt` | `expires_at` | `Integer` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_AccountMonthlyEstimatedRevenue`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `r_currency` | `r_currency` | `String` |

### `v02_AccountPaymentsSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `statementDescriptor` | `statementDescriptor` | `String` |
| `statementDescriptorKana` | `statementDescriptorKana` | `String` |
| `statementDescriptorKanji` | `statementDescriptorKanji` | `String` |
| `statementDescriptorPrefixKana` | `statementDescriptorPrefixKana` | `String` |
| `statementDescriptorPrefixKanji` | `statementDescriptorPrefixKanji` | `String` |

### `v02_AccountPayoutSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `debitNegativeBalances` | `debitNegativeBalances` | `Boolean` |
| `schedule` | `schedule` | `v02_TransferSchedule` |
| `statementDescriptor` | `statementDescriptor` | `String` |

### `v02_AccountRequirements`

| Field | Stripe API Name | Type |
|---|---|---|
| `alternatives` | `alternatives` | `List<v02_AccountRequirementsAlternative>` |
| `currentDeadline` | `currentDeadline` | `Integer` |
| `currentlyDue` | `currentlyDue` | `List<String>` |
| `disabledReason` | `disabledReason` | `String` |
| `errors` | `errors` | `List<v02_AccountRequirementsError>` |
| `eventuallyDue` | `eventuallyDue` | `List<String>` |
| `pastDue` | `pastDue` | `List<String>` |
| `pendingVerification` | `pendingVerification` | `List<String>` |

### `v02_AccountRequirementsAlternative`

| Field | Stripe API Name | Type |
|---|---|---|
| `alternativeFieldsDue` | `alternativeFieldsDue` | `List<String>` |
| `originalFieldsDue` | `originalFieldsDue` | `List<String>` |

### `v02_AccountRequirementsError`

| Field | Stripe API Name | Type |
|---|---|---|
| `code` | `code` | `String` |
| `reason` | `reason` | `String` |
| `requirement` | `requirement` | `String` |

### `v02_AccountSepaDebitPaymentsSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `creditorId` | `creditorId` | `String` |

### `v02_AccountSession`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `clientSecret` | `client_secret` | `String` |
| `components` | `components` | `v02_ConnectEmbeddedAccSessionCreate` |
| `expiresAt` | `expires_at` | `Integer` |
| `livemode` | `livemode` | `Boolean` |
| `r_object` | `object` | `String` |

### `v02_AccountSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `bacsDebitPayments` | `bacsDebitPayments` | `v02_AccountBacsDebitPaymentsSettings` |
| `branding` | `branding` | `v02_AccountBrandingSettings` |
| `cardIssuing` | `cardIssuing` | `v02_AccountCardIssuingSettings` |
| `cardPayments` | `cardPayments` | `v02_AccountCardPaymentsSettings` |
| `dashboard` | `dashboard` | `v02_AccountDashboardSettings` |
| `invoices` | `invoices` | `v02_AccountInvoicesSettings` |
| `payments` | `payments` | `v02_AccountPaymentsSettings` |
| `payouts` | `payouts` | `v02_AccountPayoutSettings` |
| `sepaDebitPayments` | `sepaDebitPayments` | `v02_AccountSepaDebitPaymentsSettings` |
| `treasury` | `treasury` | `v02_AccountTreasurySettings` |

### `v02_AccountTermsOfService`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_date` | `r_date` | `Integer` |
| `ip` | `ip` | `String` |
| `userAgent` | `userAgent` | `String` |

### `v02_AccountTosAcceptance`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_date` | `r_date` | `Integer` |
| `ip` | `ip` | `String` |
| `serviceAgreement` | `serviceAgreement` | `String` |
| `userAgent` | `userAgent` | `String` |

### `v02_AccountTreasurySettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `tosAcceptance` | `tosAcceptance` | `v02_AccountTermsOfService` |

### `v02_AccountUnificationAccountController`

| Field | Stripe API Name | Type |
|---|---|---|
| `fees` | `fees` | `v02_AccUnificationAccControllerFees` |
| `isController` | `isController` | `Boolean` |
| `losses` | `losses` | `v02_AccUnificationAccControllerLosses` |
| `requirementCollection` | `requirementCollection` | `String` |
| `stripeDashboard` | `stripeDashboard` | `v02_AccUnificationAccControllerStripe` |
| `type` | `type` | `String` |

### `v02_Capability`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `futureRequirements` | `future_requirements` | `v02_AccountCapabilityFutureRequirements` |
| `id` | `id` | `String` |
| `r_object` | `object` | `String` |
| `requested` | `requested` | `Boolean` |
| `requestedAt` | `requested_at` | `Integer` |
| `requirements` | `requirements` | `v02_AccountCapabilityRequirements` |
| `status` | `status` | `String` |

### `v02_ExternalAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `accountHolderName` | `account_holder_name` | `String` |
| `accountHolderType` | `account_holder_type` | `String` |
| `accountType` | `account_type` | `String` |
| `availablePayoutMethods` | `available_payout_methods` | `List<String>` |
| `bankName` | `bank_name` | `String` |
| `country` | `country` | `String` |
| `r_currency` | `currency` | `String` |
| `customer` | `customer` | `String` |
| `defaultForCurrency` | `default_for_currency` | `Boolean` |
| `fingerprint` | `fingerprint` | `String` |
| `futureRequirements` | `future_requirements` | `v02_ExternalAccountRequirements` |
| `id` | `id` | `String` |
| `last4` | `last4` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `r_object` | `object` | `String` |
| `requirements` | `requirements` | `v02_ExternalAccountRequirements` |
| `routingNumber` | `routing_number` | `String` |
| `status` | `status` | `String` |
| `addressCity` | `address_city` | `String` |
| `addressCountry` | `address_country` | `String` |
| `addressLine1` | `address_line1` | `String` |
| `addressLine1Check` | `address_line1_check` | `String` |
| `addressLine2` | `address_line2` | `String` |
| `addressState` | `address_state` | `String` |
| `addressZip` | `address_zip` | `String` |
| `addressZipCheck` | `address_zip_check` | `String` |
| `allowRedisplay` | `allow_redisplay` | `String` |
| `brand` | `brand` | `String` |
| `cvcCheck` | `cvc_check` | `String` |
| `description` | `description` | `String` |
| `dynamicLast4` | `dynamic_last4` | `String` |
| `expMonth` | `exp_month` | `Integer` |
| `expYear` | `exp_year` | `Integer` |
| `funding` | `funding` | `String` |
| `iin` | `iin` | `String` |
| `issuer` | `issuer` | `String` |
| `name` | `name` | `String` |
| `networks` | `networks` | `v02_TokenCardNetworks` |
| `regulatedStatus` | `regulated_status` | `String` |
| `tokenizationMethod` | `tokenization_method` | `String` |

### `v02_ExternalAccountRequirements`

| Field | Stripe API Name | Type |
|---|---|---|
| `currentlyDue` | `currentlyDue` | `List<String>` |
| `errors` | `errors` | `List<v02_AccountRequirementsError>` |
| `pastDue` | `pastDue` | `List<String>` |
| `pendingVerification` | `pendingVerification` | `List<String>` |

### `v02_LoginLink`

| Field | Stripe API Name | Type |
|---|---|---|
| `created` | `created` | `Integer` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_Person`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `additionalTosAcceptances` | `additional_tos_acceptances` | `v02_PersonAdditionalTosAcceptances` |
| `address` | `address` | `v02_Address` |
| `addressKana` | `address_kana` | `v02_LegalEntityJapanAddress` |
| `addressKanji` | `address_kanji` | `v02_LegalEntityJapanAddress` |
| `created` | `created` | `Integer` |
| `dob` | `dob` | `v02_LegalEntityDob` |
| `email` | `email` | `String` |
| `firstName` | `first_name` | `String` |
| `firstNameKana` | `first_name_kana` | `String` |
| `firstNameKanji` | `first_name_kanji` | `String` |
| `fullNameAliases` | `full_name_aliases` | `List<String>` |
| `futureRequirements` | `future_requirements` | `v02_PersonFutureRequirements` |
| `gender` | `gender` | `String` |
| `id` | `id` | `String` |
| `idNumberProvided` | `id_number_provided` | `Boolean` |
| `idNumberSecondaryProvided` | `id_number_secondary_provided` | `Boolean` |
| `lastName` | `last_name` | `String` |
| `lastNameKana` | `last_name_kana` | `String` |
| `lastNameKanji` | `last_name_kanji` | `String` |
| `maidenName` | `maiden_name` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `nationality` | `nationality` | `String` |
| `r_object` | `object` | `String` |
| `phone` | `phone` | `String` |
| `politicalExposure` | `political_exposure` | `String` |
| `registeredAddress` | `registered_address` | `v02_Address` |
| `relationship` | `relationship` | `v02_PersonRelationship` |
| `requirements` | `requirements` | `v02_PersonRequirements` |
| `ssnLast4Provided` | `ssn_last_4_provided` | `Boolean` |
| `usCfpbData` | `us_cfpb_data` | `v02_PersonUsCfpbData` |
| `verification` | `verification` | `v02_LegalEntityPersonVerification` |

### `v02_PersonAdditionalTosAcceptance`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_date` | `r_date` | `Integer` |
| `ip` | `ip` | `String` |
| `userAgent` | `userAgent` | `String` |

### `v02_PersonAdditionalTosAcceptances`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `v02_PersonAdditionalTosAcceptance` |

### `v02_PersonEthnicityDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `ethnicity` | `ethnicity` | `List<String>` |
| `ethnicityOther` | `ethnicityOther` | `String` |

### `v02_PersonFutureRequirements`

| Field | Stripe API Name | Type |
|---|---|---|
| `alternatives` | `alternatives` | `List<v02_AccountRequirementsAlternative>` |
| `currentlyDue` | `currentlyDue` | `List<String>` |
| `errors` | `errors` | `List<v02_AccountRequirementsError>` |
| `eventuallyDue` | `eventuallyDue` | `List<String>` |
| `pastDue` | `pastDue` | `List<String>` |
| `pendingVerification` | `pendingVerification` | `List<String>` |

### `v02_PersonRaceDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `race` | `race` | `List<String>` |
| `raceOther` | `raceOther` | `String` |

### `v02_PersonRelationship`

| Field | Stripe API Name | Type |
|---|---|---|
| `authorizer` | `authorizer` | `Boolean` |
| `director` | `director` | `Boolean` |
| `executive` | `executive` | `Boolean` |
| `legalGuardian` | `legalGuardian` | `Boolean` |
| `owner` | `owner` | `Boolean` |
| `percentOwnership` | `percentOwnership` | `Double` |
| `representative` | `representative` | `Boolean` |
| `title` | `title` | `String` |

### `v02_PersonRequirements`

| Field | Stripe API Name | Type |
|---|---|---|
| `alternatives` | `alternatives` | `List<v02_AccountRequirementsAlternative>` |
| `currentlyDue` | `currentlyDue` | `List<String>` |
| `errors` | `errors` | `List<v02_AccountRequirementsError>` |
| `eventuallyDue` | `eventuallyDue` | `List<String>` |
| `pastDue` | `pastDue` | `List<String>` |
| `pendingVerification` | `pendingVerification` | `List<String>` |

### `v02_PersonUsCfpbData`

| Field | Stripe API Name | Type |
|---|---|---|
| `ethnicityDetails` | `ethnicityDetails` | `v02_PersonEthnicityDetails` |
| `raceDetails` | `raceDetails` | `v02_PersonRaceDetails` |
| `selfIdentifiedGender` | `selfIdentifiedGender` | `String` |

## Application Fee

### `v02_FeeRefund`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `balanceTransaction` | `balance_transaction` | `String` |
| `created` | `created` | `Integer` |
| `r_currency` | `currency` | `String` |
| `fee` | `fee` | `String` |
| `id` | `id` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `r_object` | `object` | `String` |

## Balance

### `v02_Balance`

| Field | Stripe API Name | Type |
|---|---|---|
| `available` | `available` | `List<v02_BalanceAmount>` |
| `connectReserved` | `connect_reserved` | `List<v02_BalanceAmount>` |
| `instantAvailable` | `instant_available` | `List<v02_BalanceAmountNet>` |
| `issuing` | `issuing` | `v02_BalanceDetail` |
| `livemode` | `livemode` | `Boolean` |
| `r_object` | `object` | `String` |
| `pending` | `pending` | `List<v02_BalanceAmount>` |

### `v02_BalanceAmount`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `r_currency` | `r_currency` | `String` |
| `sourceTypes` | `sourceTypes` | `v02_BalanceAmountBySourceType` |

### `v02_BalanceAmountBySourceType`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankAccount` | `bankAccount` | `Integer` |
| `card` | `card` | `Integer` |
| `fpx` | `fpx` | `Integer` |

### `v02_BalanceAmountNet`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `r_currency` | `r_currency` | `String` |
| `netAvailable` | `netAvailable` | `List<v02_BalanceNetAvailable>` |
| `sourceTypes` | `sourceTypes` | `v02_BalanceAmountBySourceType` |

### `v02_BalanceDetail`

| Field | Stripe API Name | Type |
|---|---|---|
| `available` | `available` | `List<v02_BalanceAmount>` |

### `v02_BalanceNetAvailable`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `destination` | `destination` | `String` |
| `sourceTypes` | `sourceTypes` | `v02_BalanceAmountBySourceType` |

### `v02_BalanceTransaction`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `availableOn` | `available_on` | `Integer` |
| `created` | `created` | `Integer` |
| `r_currency` | `currency` | `String` |
| `description` | `description` | `String` |
| `exchangeRate` | `exchange_rate` | `Double` |
| `fee` | `fee` | `Integer` |
| `feeDetails` | `fee_details` | `List<v02_Fee>` |
| `id` | `id` | `String` |
| `net` | `net` | `Integer` |
| `r_object` | `object` | `String` |
| `reportingCategory` | `reporting_category` | `String` |
| `source` | `source` | `String` |
| `status` | `status` | `String` |
| `type` | `type` | `String` |

## Billing

### `v02_BillingCreditBalanceSummary`

| Field | Stripe API Name | Type |
|---|---|---|
| `balances` | `balances` | `List<v02_CreditBalance>` |
| `customer` | `customer` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `r_object` | `object` | `String` |

### `v02_BillingCreditBalanceTransaction`

| Field | Stripe API Name | Type |
|---|---|---|
| `created` | `created` | `Integer` |
| `credit` | `credit` | `v02_BillingCreditGrantsResourceBalCredit` |
| `creditGrant` | `credit_grant` | `String` |
| `debit` | `debit` | `v02_BillingCreditGrantsResourceBalDebit` |
| `effectiveAt` | `effective_at` | `Integer` |
| `id` | `id` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `r_object` | `object` | `String` |
| `testClock` | `test_clock` | `String` |
| `type` | `type` | `String` |

### `v02_BillingCreditGrantsBalCreditsApplied`

| Field | Stripe API Name | Type |
|---|---|---|
| `stringField` | `stringField` | `String` |
| `accountCountry` | `accountCountry` | `String` |
| `accountName` | `accountName` | `String` |
| `accountTaxIds` | `accountTaxIds` | `List<v02_InvoiceAccountTaxIdsInner>` |
| `amountDue` | `amountDue` | `Integer` |
| `amountOverpaid` | `amountOverpaid` | `Integer` |
| `amountPaid` | `amountPaid` | `Integer` |
| `amountRemaining` | `amountRemaining` | `Integer` |
| `amountShipping` | `amountShipping` | `Integer` |
| `application` | `application` | `String` |
| `attemptCount` | `attemptCount` | `Integer` |
| `attempted` | `attempted` | `Boolean` |
| `autoAdvance` | `autoAdvance` | `Boolean` |
| `automaticTax` | `automaticTax` | `v02_AutomaticTax` |
| `automaticallyFinalizesAt` | `automaticallyFinalizesAt` | `Integer` |
| `billingReason` | `billingReason` | `String` |
| `collectionMethod` | `collectionMethod` | `String` |
| `confirmationSecret` | `confirmationSecret` | `v02_InvoicesResourceConfirmationSecret` |
| `created` | `created` | `Integer` |
| `r_currency` | `r_currency` | `String` |
| `customFields` | `customFields` | `List<v02_InvoiceSettingCustomField>` |
| `customer` | `customer` | `String` |
| `customerAddress` | `customerAddress` | `v02_Address` |
| `customerEmail` | `customerEmail` | `String` |
| `customerName` | `customerName` | `String` |
| `customerPhone` | `customerPhone` | `String` |
| `customerShipping` | `customerShipping` | `v02_Shipping` |
| `customerTaxExempt` | `customerTaxExempt` | `String` |
| `customerTaxIds` | `customerTaxIds` | `List<v02_InvoicesResourceInvoiceTaxId>` |
| `defaultPaymentMethod` | `defaultPaymentMethod` | `String` |
| `defaultSource` | `defaultSource` | `String` |
| `defaultTaxRates` | `defaultTaxRates` | `List<v02_TaxRate>` |
| `description` | `description` | `String` |
| `discounts` | `discounts` | `List<v02_InvoiceDiscountsInner>` |
| `dueDate` | `dueDate` | `Integer` |
| `effectiveAt` | `effectiveAt` | `Integer` |
| `endingBalance` | `endingBalance` | `Integer` |
| `footer` | `footer` | `String` |
| `fromInvoice` | `fromInvoice` | `v02_InvoicesResourceFromInvoice` |
| `hostedInvoiceUrl` | `hostedInvoiceUrl` | `String` |
| `id` | `id` | `String` |
| `invoicePdf` | `invoicePdf` | `String` |
| `issuer` | `issuer` | `v02_ConnectAccountReference` |
| `lastFinalizationError` | `lastFinalizationError` | `v02_ApiErrors` |
| `latestRevision` | `latestRevision` | `String` |
| `lines` | `lines` | `v02_InvoiceLinesList` |
| `livemode` | `livemode` | `Boolean` |
| `metadata` | `metadata` | `v02_Metadata` |
| `nextPaymentAttempt` | `nextPaymentAttempt` | `Integer` |
| `r_number` | `r_number` | `String` |
| `r_object` | `r_object` | `String` |
| `onBehalfOf` | `onBehalfOf` | `String` |
| `parent` | `parent` | `v02_BillingBillInvoicingParentsInvParent` |
| `paymentSettings` | `paymentSettings` | `v02_InvoicesPaymentSettings` |
| `payments` | `payments` | `v02_InvoicesPaymentsListInvoicePayments` |
| `periodEnd` | `periodEnd` | `Integer` |
| `periodStart` | `periodStart` | `Integer` |
| `postPaymentCreditNotesAmount` | `postPaymentCreditNotesAmount` | `Integer` |
| `prePaymentCreditNotesAmount` | `prePaymentCreditNotesAmount` | `Integer` |
| `receiptNumber` | `receiptNumber` | `String` |
| `rendering` | `rendering` | `v02_InvoicesResourceInvoiceRendering` |
| `shippingCost` | `shippingCost` | `v02_InvoicesResourceShippingCost` |
| `shippingDetails` | `shippingDetails` | `v02_Shipping` |
| `startingBalance` | `startingBalance` | `Integer` |
| `statementDescriptor` | `statementDescriptor` | `String` |
| `status` | `status` | `String` |
| `statusTransitions` | `statusTransitions` | `v02_InvoicesResourceStatusTransitions` |
| `subscription` | `subscription` | `String` |
| `subtotal` | `subtotal` | `Integer` |
| `subtotalExcludingTax` | `subtotalExcludingTax` | `Integer` |
| `testClock` | `testClock` | `String` |
| `thresholdReason` | `thresholdReason` | `v02_InvoiceThresholdReason` |
| `total` | `total` | `Integer` |
| `totalDiscountAmounts` | `totalDiscountAmounts` | `List<v02_DiscountsResourceDiscountAmount>` |
| `totalExcludingTax` | `totalExcludingTax` | `Integer` |
| `totalPretaxCreditAmounts` | `totalPretaxCreditAmounts` | `List<v02_InvoicesResourcePretaxCreditAmount>` |
| `totalTaxes` | `totalTaxes` | `List<v02_BillingBillResourceInvoicingTaxesTax>` |
| `webhooksDeliveredAt` | `webhooksDeliveredAt` | `Integer` |

### `v02_BillingCreditGrantsMonetaryAmount`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `value` | `value` | `Integer` |

### `v02_BillingCreditGrantsResourceAmount`

| Field | Stripe API Name | Type |
|---|---|---|
| `monetary` | `monetary` | `v02_BillingCreditGrantsMonetaryAmount` |
| `type` | `type` | `String` |

### `v02_BillingCreditGrantsResourceBalCredit`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `v02_BillingCreditGrantsResourceAmount` |
| `creditsApplicationInvoiceVoided` | `creditsApplicationInvoiceVoided` | `v02_BlngCreditGrantsBalCreditsApplica` |
| `type` | `type` | `String` |

### `v02_BillingCreditGrantsResourceBalDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `v02_BillingCreditGrantsResourceAmount` |
| `creditsApplied` | `creditsApplied` | `v02_BillingCreditGrantsBalCreditsApplied` |
| `type` | `type` | `String` |

### `v02_BillingPortalSession`

| Field | Stripe API Name | Type |
|---|---|---|
| `configuration` | `configuration` | `String` |
| `created` | `created` | `Integer` |
| `customer` | `customer` | `String` |
| `flow` | `flow` | `v02_PortalFlowsFlow` |
| `id` | `id` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `locale` | `locale` | `String` |
| `r_object` | `object` | `String` |
| `onBehalfOf` | `on_behalf_of` | `String` |
| `returnUrl` | `return_url` | `String` |
| `url` | `url` | `String` |

## Charge

### `v02_Charge`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `amountCaptured` | `amount_captured` | `Integer` |
| `amountRefunded` | `amount_refunded` | `Integer` |
| `application` | `application` | `String` |
| `applicationFee` | `application_fee` | `String` |
| `applicationFeeAmount` | `application_fee_amount` | `Integer` |
| `authorizationCode` | `authorization_code` | `String` |
| `balanceTransaction` | `balance_transaction` | `String` |
| `billingDetails` | `billing_details` | `v02_BillingDetails` |
| `calculatedStatementDescriptor` | `calculated_statement_descriptor` | `String` |
| `captured` | `captured` | `Boolean` |
| `created` | `created` | `Integer` |
| `r_currency` | `currency` | `String` |
| `customer` | `customer` | `String` |
| `description` | `description` | `String` |
| `disputed` | `disputed` | `Boolean` |
| `failureBalanceTransaction` | `failure_balance_transaction` | `String` |
| `failureCode` | `failure_code` | `String` |
| `failureMessage` | `failure_message` | `String` |
| `fraudDetails` | `fraud_details` | `v02_ChargeFraudDetails` |
| `id` | `id` | `String` |
| `level3` | `level3` | `v02_Level3` |
| `livemode` | `livemode` | `Boolean` |
| `metadata` | `metadata` | `v02_Metadata` |
| `r_object` | `object` | `String` |
| `onBehalfOf` | `on_behalf_of` | `String` |
| `outcome` | `outcome` | `v02_ChargeOutcome` |
| `paid` | `paid` | `Boolean` |
| `paymentIntent` | `payment_intent` | `String` |
| `paymentMethod` | `payment_method` | `String` |
| `paymentMethodDetails` | `payment_method_details` | `v02_PaymentMethodDetails` |
| `presentmentDetails` | `presentment_details` | `v02_PaymentFlowsPiPresentmentDetails` |
| `radarOptions` | `radar_options` | `v02_RadarRadarOptions` |
| `receiptEmail` | `receipt_email` | `String` |
| `receiptNumber` | `receipt_number` | `String` |
| `receiptUrl` | `receipt_url` | `String` |
| `refunded` | `refunded` | `Boolean` |
| `refunds` | `refunds` | `v02_RefundList` |
| `review` | `review` | `String` |
| `shipping` | `shipping` | `v02_Shipping` |
| `source` | `source` | `v02_PaymentSource` |
| `sourceTransfer` | `source_transfer` | `String` |
| `statementDescriptor` | `statement_descriptor` | `String` |
| `statementDescriptorSuffix` | `statement_descriptor_suffix` | `String` |
| `status` | `status` | `String` |
| `transfer` | `transfer` | `String` |
| `transferData` | `transfer_data` | `v02_ChargeTransferData` |
| `transferGroup` | `transfer_group` | `String` |

### `v02_ChargeFraudDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `stripeReport` | `stripeReport` | `String` |
| `userReport` | `userReport` | `String` |

### `v02_ChargeOutcome`

| Field | Stripe API Name | Type |
|---|---|---|
| `adviceCode` | `adviceCode` | `String` |
| `networkAdviceCode` | `networkAdviceCode` | `String` |
| `networkDeclineCode` | `networkDeclineCode` | `String` |
| `networkStatus` | `networkStatus` | `String` |
| `reason` | `reason` | `String` |
| `riskLevel` | `riskLevel` | `String` |
| `riskScore` | `riskScore` | `Integer` |
| `rule` | `rule` | `String` |
| `sellerMessage` | `sellerMessage` | `String` |
| `type` | `type` | `String` |

### `v02_ChargeTransferData`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `destination` | `destination` | `String` |

## Checkout

### `v02_CheckoutAcssDebitMandateOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `customMandateUrl` | `customMandateUrl` | `String` |
| `defaultFor` | `defaultFor` | `List<String>` |
| `intervalDescription` | `intervalDescription` | `String` |
| `paymentSchedule` | `paymentSchedule` | `String` |
| `transactionType` | `transactionType` | `String` |

### `v02_CheckoutAcssDebitPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `mandateOptions` | `mandateOptions` | `v02_CheckoutAcssDebitMandateOptions` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_CheckoutAffirmPaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CheckoutAfterpayClearpayPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CheckoutAlipayPaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CheckoutAmazonPayPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CheckoutAuBecsDebitPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |

### `v02_CheckoutBacsDebitPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_CheckoutPMOMandateOptionsBacsDebit` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |

### `v02_CheckoutBancontactPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CheckoutBoletoPaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `expiresAfterDays` | `expiresAfterDays` | `Integer` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CheckoutCardInstallmentsOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |

### `v02_CheckoutCardPaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `installments` | `installments` | `v02_CheckoutCardInstallmentsOptions` |
| `requestExtendedAuthorization` | `requestExtendedAuthorization` | `String` |
| `requestIncrementalAuthorization` | `requestIncrementalAuthorization` | `String` |
| `requestMulticapture` | `requestMulticapture` | `String` |
| `requestOvercapture` | `requestOvercapture` | `String` |
| `requestThreeDSecure` | `requestThreeDSecure` | `String` |
| `restrictions` | `restrictions` | `v02_PymtPagesPrivateCardPMORestrictions` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `statementDescriptorSuffixKana` | `statementDescriptorSuffixKana` | `String` |
| `statementDescriptorSuffixKanji` | `statementDescriptorSuffixKanji` | `String` |

### `v02_CheckoutCashappPaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CheckoutCustbalBankTransferPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `euBankTransfer` | `euBankTransfer` | `v02_PMOCustomerBalanceEuBankAccount` |
| `requestedAddressTypes` | `requestedAddressTypes` | `List<String>` |
| `type` | `type` | `String` |

### `v02_CheckoutCustomerBalancePMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankTransfer` | `bankTransfer` | `v02_CheckoutCustbalBankTransferPMO` |
| `fundingType` | `fundingType` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CheckoutEpsPaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CheckoutFpxPaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CheckoutGiropayPaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CheckoutGrabPayPaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CheckoutIdealPaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CheckoutKakaoPayPaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CheckoutKlarnaPaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CheckoutKonbiniPaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `expiresAfterDays` | `expiresAfterDays` | `Integer` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CheckoutKrCardPaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CheckoutLinkPaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CheckoutLinkWalletOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `display` | `display` | `String` |

### `v02_CheckoutMobilepayPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CheckoutMultibancoPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CheckoutNaverPayPaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |

### `v02_CheckoutOxxoPaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `expiresAfterDays` | `expiresAfterDays` | `Integer` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CheckoutP24PaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CheckoutPMOMandateOptionsBacsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `referencePrefix` | `referencePrefix` | `String` |

### `v02_CheckoutPMOMandateOptionsSepaDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `referencePrefix` | `referencePrefix` | `String` |

### `v02_CheckoutPaycoPaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |

### `v02_CheckoutPaynowPaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CheckoutPaypalPaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `preferredLocale` | `preferredLocale` | `String` |
| `reference` | `reference` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CheckoutPixPaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `expiresAfterSeconds` | `expiresAfterSeconds` | `Integer` |

### `v02_CheckoutRevolutPayPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CheckoutSamsungPayPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |

### `v02_CheckoutSepaDebitPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_CheckoutPMOMandateOptionsSepaDebit` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |

### `v02_CheckoutSession`

| Field | Stripe API Name | Type |
|---|---|---|
| `adaptivePricing` | `adaptive_pricing` | `v02_PaymentPagesCOSAdaptivePricing` |
| `afterExpiration` | `after_expiration` | `v02_PaymentPagesCheckoutSessionAfterExp` |
| `allowPromotionCodes` | `allow_promotion_codes` | `Boolean` |
| `amountSubtotal` | `amount_subtotal` | `Integer` |
| `amountTotal` | `amount_total` | `Integer` |
| `automaticTax` | `automatic_tax` | `v02_PaymentPagesCOSAutomaticTax` |
| `billingAddressCollection` | `billing_address_collection` | `String` |
| `cancelUrl` | `cancel_url` | `String` |
| `clientReferenceId` | `client_reference_id` | `String` |
| `clientSecret` | `client_secret` | `String` |
| `collectedInformation` | `collected_information` | `v02_PaymentPagesCOSCollectedInformation` |
| `consent` | `consent` | `v02_PaymentPagesCheckoutSessionConsent` |
| `consentCollection` | `consent_collection` | `v02_PaymentPagesCOSConsentCollection` |
| `created` | `created` | `Integer` |
| `r_currency` | `currency` | `String` |
| `currencyConversion` | `currency_conversion` | `v02_PaymentPagesCOSCurrencyConversion` |
| `customFields` | `custom_fields` | `List<v02_PaymentPagesCOSCustomFields>` |
| `customText` | `custom_text` | `v02_PaymentPagesCOSCustomText` |
| `customer` | `customer` | `String` |
| `customerCreation` | `customer_creation` | `String` |
| `customerDetails` | `customer_details` | `v02_PaymentPagesCOSCustomerDetails` |
| `customerEmail` | `customer_email` | `String` |
| `discounts` | `discounts` | `List<v02_PaymentPagesCheckoutSessionDiscount>` |
| `expiresAt` | `expires_at` | `Integer` |
| `id` | `id` | `String` |
| `invoice` | `invoice` | `String` |
| `invoiceCreation` | `invoice_creation` | `v02_PaymentPagesCheckoutSessionInvCrtn` |
| `lineItems` | `line_items` | `v02_PaymentPagesCOSListLineItems` |
| `livemode` | `livemode` | `Boolean` |
| `locale` | `locale` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `mode` | `mode` | `String` |
| `r_object` | `object` | `String` |
| `optionalItems` | `optional_items` | `List<v02_PaymentPagesCOSOptionalItem>` |
| `paymentIntent` | `payment_intent` | `String` |
| `paymentLink` | `payment_link` | `String` |
| `paymentMethodCollection` | `payment_method_collection` | `String` |
| `paymentMethodConfigurationDetails` | `payment_method_configuration_details` | `v02_PmConfigBizPmConfigurationDetails` |
| `paymentMethodOptions` | `payment_method_options` | `v02_CheckoutSessionPaymentMethodOptions` |
| `paymentMethodTypes` | `payment_method_types` | `List<String>` |
| `paymentStatus` | `payment_status` | `String` |
| `permissions` | `permissions` | `v02_PaymentPagesCOSPermissions` |
| `phoneNumberCollection` | `phone_number_collection` | `v02_PaymentPagesCOSPhoneNumberCollection` |
| `presentmentDetails` | `presentment_details` | `v02_PaymentFlowsPiPresentmentDetails` |
| `recoveredFrom` | `recovered_from` | `String` |
| `redirectOnCompletion` | `redirect_on_completion` | `String` |
| `returnUrl` | `return_url` | `String` |
| `savedPaymentMethodOptions` | `saved_payment_method_options` | `v02_PaymentPagesCheckoutSessionSavedPMO` |
| `setupIntent` | `setup_intent` | `String` |
| `shippingAddressCollection` | `shipping_address_collection` | `v02_PaymentPagesCOSShippingAddressCol` |
| `shippingCost` | `shipping_cost` | `v02_PaymentPagesCOSShippingCost` |
| `shippingOptions` | `shipping_options` | `List<v02_PaymentPagesCOSShippingOption>` |
| `status` | `status` | `String` |
| `submitType` | `submit_type` | `String` |
| `subscription` | `subscription` | `String` |
| `successUrl` | `success_url` | `String` |
| `taxIdCollection` | `tax_id_collection` | `v02_PaymentPagesCOSTaxIdCollection` |
| `totalDetails` | `total_details` | `v02_PaymentPagesCOSTotalDetails` |
| `uiMode` | `ui_mode` | `String` |
| `url` | `url` | `String` |
| `walletOptions` | `wallet_options` | `v02_CheckoutSessionWalletOptions` |

### `v02_CheckoutSessionPaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `acssDebit` | `acssDebit` | `v02_CheckoutAcssDebitPMO` |
| `affirm` | `affirm` | `v02_CheckoutAffirmPaymentMethodOptions` |
| `afterpayClearpay` | `afterpayClearpay` | `v02_CheckoutAfterpayClearpayPMO` |
| `alipay` | `alipay` | `v02_CheckoutAlipayPaymentMethodOptions` |
| `amazonPay` | `amazonPay` | `v02_CheckoutAmazonPayPMO` |
| `auBecsDebit` | `auBecsDebit` | `v02_CheckoutAuBecsDebitPMO` |
| `bacsDebit` | `bacsDebit` | `v02_CheckoutBacsDebitPMO` |
| `bancontact` | `bancontact` | `v02_CheckoutBancontactPMO` |
| `boleto` | `boleto` | `v02_CheckoutBoletoPaymentMethodOptions` |
| `card` | `card` | `v02_CheckoutCardPaymentMethodOptions` |
| `cashapp` | `cashapp` | `v02_CheckoutCashappPaymentMethodOptions` |
| `customerBalance` | `customerBalance` | `v02_CheckoutCustomerBalancePMO` |
| `eps` | `eps` | `v02_CheckoutEpsPaymentMethodOptions` |
| `fpx` | `fpx` | `v02_CheckoutFpxPaymentMethodOptions` |
| `giropay` | `giropay` | `v02_CheckoutGiropayPaymentMethodOptions` |
| `grabpay` | `grabpay` | `v02_CheckoutGrabPayPaymentMethodOptions` |
| `ideal` | `ideal` | `v02_CheckoutIdealPaymentMethodOptions` |
| `kakaoPay` | `kakaoPay` | `v02_CheckoutKakaoPayPaymentMethodOptions` |
| `klarna` | `klarna` | `v02_CheckoutKlarnaPaymentMethodOptions` |
| `konbini` | `konbini` | `v02_CheckoutKonbiniPaymentMethodOptions` |
| `krCard` | `krCard` | `v02_CheckoutKrCardPaymentMethodOptions` |
| `link` | `link` | `v02_CheckoutLinkPaymentMethodOptions` |
| `mobilepay` | `mobilepay` | `v02_CheckoutMobilepayPMO` |
| `multibanco` | `multibanco` | `v02_CheckoutMultibancoPMO` |
| `naverPay` | `naverPay` | `v02_CheckoutNaverPayPaymentMethodOptions` |
| `oxxo` | `oxxo` | `v02_CheckoutOxxoPaymentMethodOptions` |
| `p24` | `p24` | `v02_CheckoutP24PaymentMethodOptions` |
| `payco` | `payco` | `v02_CheckoutPaycoPaymentMethodOptions` |
| `paynow` | `paynow` | `v02_CheckoutPaynowPaymentMethodOptions` |
| `paypal` | `paypal` | `v02_CheckoutPaypalPaymentMethodOptions` |
| `pix` | `pix` | `v02_CheckoutPixPaymentMethodOptions` |
| `revolutPay` | `revolutPay` | `v02_CheckoutRevolutPayPMO` |
| `samsungPay` | `samsungPay` | `v02_CheckoutSamsungPayPMO` |
| `sepaDebit` | `sepaDebit` | `v02_CheckoutSepaDebitPMO` |
| `sofort` | `sofort` | `v02_CheckoutSofortPaymentMethodOptions` |
| `swish` | `swish` | `v02_CheckoutSwishPaymentMethodOptions` |
| `usBankAccount` | `usBankAccount` | `v02_CheckoutUsBankAccountPMO` |

### `v02_CheckoutSessionWalletOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `link` | `link` | `v02_CheckoutLinkWalletOptions` |

### `v02_CheckoutSofortPaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CheckoutSwishPaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `reference` | `reference` | `String` |

### `v02_CheckoutUsBankAccountPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `financialConnections` | `financialConnections` | `v02_LinkedAccountOptionsCommon` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |
| `verificationMethod` | `verificationMethod` | `String` |

## Climate

### `v02_ClimateProduct`

| Field | Stripe API Name | Type |
|---|---|---|
| `created` | `created` | `Integer` |
| `currentPricesPerMetricTon` | `current_prices_per_metric_ton` | `List<v02_AdditionalClimateRemovalsProdsPrice>` |
| `deliveryYear` | `delivery_year` | `Integer` |
| `id` | `id` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `metricTonsAvailable` | `metric_tons_available (String)` | `String` |
| `name` | `name` | `String` |
| `r_object` | `object` | `String` |
| `suppliers` | `suppliers` | `List<v02_ClimateSupplier>` |

### `v02_ClimateRemovalsLocation`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `latitude` | `latitude` | `Double` |
| `longitude` | `longitude` | `Double` |
| `region` | `region` | `String` |

### `v02_ClimateRemovalsProductsPrice`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountFees` | `amountFees` | `Integer` |
| `amountSubtotal` | `amountSubtotal` | `Integer` |
| `amountTotal` | `amountTotal` | `Integer` |

### `v02_ClimateSupplier`

| Field | Stripe API Name | Type |
|---|---|---|
| `id` | `id` | `String` |
| `infoUrl` | `info_url` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `locations` | `locations` | `List<v02_ClimateRemovalsLocation>` |
| `name` | `name` | `String` |
| `r_object` | `object` | `String` |
| `removalPathway` | `removal_pathway` | `String` |

## Coupon

### `v02_Coupon`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountOff` | `amount_off` | `Integer` |
| `appliesTo` | `applies_to` | `v02_CouponAppliesTo` |
| `created` | `created` | `Integer` |
| `r_currency` | `currency` | `String` |
| `currencyOptions` | `currency_options` | `List<v02_AdditionalCouponCurrencyOption>` |
| `duration` | `duration` | `String` |
| `durationInMonths` | `duration_in_months` | `Integer` |
| `id` | `id` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `maxRedemptions` | `max_redemptions` | `Integer` |
| `metadata` | `metadata` | `v02_Metadata` |
| `name` | `name` | `String` |
| `r_object` | `object` | `String` |
| `percentOff` | `percent_off` | `Double` |
| `redeemBy` | `redeem_by` | `Integer` |
| `timesRedeemed` | `times_redeemed` | `Integer` |
| `valid` | `valid` | `Boolean` |

### `v02_CouponAppliesTo`

| Field | Stripe API Name | Type |
|---|---|---|
| `products` | `products` | `List<String>` |

### `v02_CouponCurrencyOption`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountOff` | `amountOff` | `Integer` |

### `v02_CouponCurrencyOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `listAdditionalCreateCouponsReqCurrOptsField` | `listAdditionalCreateCouponsReqCurrOptsField` | `List<v02_AdditionalCreateCouponsReqCurrOpts>` |

### `v02_CouponCurrencyOptions1`

| Field | Stripe API Name | Type |
|---|---|---|
| `listAdditionalUpdateCouponsReqCurrOptsField` | `listAdditionalUpdateCouponsReqCurrOptsField` | `List<v02_AdditionalUpdateCouponsReqCurrOpts>` |

## Credit Note

### `v02_CreditNote`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `amountShipping` | `amount_shipping` | `Integer` |
| `created` | `created` | `Integer` |
| `r_currency` | `currency` | `String` |
| `customer` | `customer` | `String` |
| `customerBalanceTransaction` | `customer_balance_transaction` | `String` |
| `discountAmount` | `discount_amount` | `Integer` |
| `discountAmounts` | `discount_amounts` | `List<v02_DiscountsResourceDiscountAmount>` |
| `effectiveAt` | `effective_at` | `Integer` |
| `id` | `id` | `String` |
| `invoice` | `invoice` | `String` |
| `lines` | `lines` | `v02_CreditNoteLinesList` |
| `livemode` | `livemode` | `Boolean` |
| `memo` | `memo` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `r_number` | `number` | `String` |
| `r_object` | `object` | `String` |
| `outOfBandAmount` | `out_of_band_amount` | `Integer` |
| `pdf` | `pdf` | `String` |
| `pretaxCreditAmounts` | `pretax_credit_amounts` | `List<v02_CreditNotesPretaxCreditAmount>` |
| `reason` | `reason` | `String` |
| `refunds` | `refunds` | `List<v02_CreditNoteRefund>` |
| `shippingCost` | `shipping_cost` | `v02_InvoicesResourceShippingCost` |
| `status` | `status` | `String` |
| `subtotal` | `subtotal` | `Integer` |
| `subtotalExcludingTax` | `subtotal_excluding_tax` | `Integer` |
| `total` | `total` | `Integer` |
| `totalExcludingTax` | `total_excluding_tax` | `Integer` |
| `totalTaxes` | `total_taxes` | `List<v02_BillingBillResourceInvoicingTaxesTax>` |
| `type` | `type` | `String` |
| `voidedAt` | `voided_at` | `Integer` |

### `v02_CreditNoteLineItem`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `description` | `description` | `String` |
| `discountAmount` | `discount_amount` | `Integer` |
| `discountAmounts` | `discount_amounts` | `List<v02_DiscountsResourceDiscountAmount>` |
| `id` | `id` | `String` |
| `invoiceLineItem` | `invoice_line_item` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `r_object` | `object` | `String` |
| `pretaxCreditAmounts` | `pretax_credit_amounts` | `List<v02_CreditNotesPretaxCreditAmount>` |
| `quantity` | `quantity` | `Integer` |
| `taxRates` | `tax_rates` | `List<v02_TaxRate>` |
| `taxes` | `taxes` | `List<v02_BillingBillResourceInvoicingTaxesTax>` |
| `type` | `type` | `String` |
| `unitAmount` | `unit_amount` | `Integer` |
| `unitAmountDecimal` | `unit_amount_decimal (String)` | `String` |

### `v02_CreditNoteLineItemParams`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `description` | `description` | `String` |
| `invoiceLineItem` | `invoiceLineItem` | `String` |
| `quantity` | `quantity` | `Integer` |
| `taxAmounts` | `taxAmounts` | `List<v02_TaxAmountWithTaxRateParam>` |
| `taxRates` | `taxRates` | `List<String>` |
| `type` | `type` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_CreditNoteRefund`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountRefunded` | `amountRefunded` | `Integer` |
| `refund` | `refund` | `String` |

### `v02_CreditNoteRefundParams`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountRefunded` | `amountRefunded` | `Integer` |
| `refund` | `refund` | `String` |

### `v02_CreditNotesPretaxCreditAmount`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `creditBalanceTransaction` | `creditBalanceTransaction` | `String` |
| `discount` | `discount` | `String` |
| `type` | `type` | `String` |

## Customer

### `v02_CashBalance`

| Field | Stripe API Name | Type |
|---|---|---|
| `available` | `available` | `List<v02_AdditionalInteger>` |
| `customer` | `customer` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `r_object` | `object` | `String` |
| `settings` | `settings` | `v02_CustbalCustbalSettings` |

### `v02_Customer`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_Address` |
| `balance` | `balance` | `Integer` |
| `cashBalance` | `cash_balance` | `v02_CashBalance` |
| `created` | `created` | `Integer` |
| `r_currency` | `currency` | `String` |
| `defaultSource` | `default_source` | `String` |
| `delinquent` | `delinquent` | `Boolean` |
| `description` | `description` | `String` |
| `discount` | `discount` | `v02_Discount` |
| `email` | `email` | `String` |
| `id` | `id` | `String` |
| `invoiceCreditBalance` | `invoice_credit_balance` | `List<v02_AdditionalInteger>` |
| `invoicePrefix` | `invoice_prefix` | `String` |
| `invoiceSettings` | `invoice_settings` | `v02_InvoiceSettingCustomerSetting` |
| `livemode` | `livemode` | `Boolean` |
| `metadata` | `metadata` | `v02_Metadata` |
| `name` | `name` | `String` |
| `nextInvoiceSequence` | `next_invoice_sequence` | `Integer` |
| `r_object` | `object` | `String` |
| `phone` | `phone` | `String` |
| `preferredLocales` | `preferred_locales` | `List<String>` |
| `shipping` | `shipping` | `v02_Shipping` |
| `sources` | `sources` | `v02_ApmsSourcesSourceList` |
| `subscriptions` | `subscriptions` | `v02_SubscriptionList` |
| `tax` | `tax` | `v02_CustomerTax` |
| `taxExempt` | `tax_exempt` | `String` |
| `taxIds` | `tax_ids` | `v02_TaxIDsList` |
| `testClock` | `test_clock` | `String` |

### `v02_CustomerAcceptanceParam`

| Field | Stripe API Name | Type |
|---|---|---|
| `acceptedAt` | `acceptedAt` | `Integer` |
| `offline` | `offline` | `List<v02_AdditionalString>` |
| `online` | `online` | `v02_OnlineParam` |
| `type` | `type` | `String` |

### `v02_CustomerBalanceTransaction`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `checkoutSession` | `checkout_session` | `String` |
| `created` | `created` | `Integer` |
| `creditNote` | `credit_note` | `String` |
| `r_currency` | `currency` | `String` |
| `customer` | `customer` | `String` |
| `description` | `description` | `String` |
| `endingBalance` | `ending_balance` | `Integer` |
| `id` | `id` | `String` |
| `invoice` | `invoice` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `metadata` | `metadata` | `v02_Metadata` |
| `r_object` | `object` | `String` |
| `type` | `type` | `String` |

### `v02_CustomerCashBalanceTransaction`

| Field | Stripe API Name | Type |
|---|---|---|
| `adjustedForOverdraft` | `adjusted_for_overdraft` | `v02_CustbalCBalTrxAdjustedForOverdraft` |
| `appliedToPayment` | `applied_to_payment` | `v02_CustbalCBalTrxAppliedToPaymentTrx` |
| `created` | `created` | `Integer` |
| `r_currency` | `currency` | `String` |
| `customer` | `customer` | `String` |
| `endingBalance` | `ending_balance` | `Integer` |
| `funded` | `funded` | `v02_CustbalCBalTrxFundedTrx` |
| `id` | `id` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `netAmount` | `net_amount` | `Integer` |
| `r_object` | `object` | `String` |
| `refundedFromPayment` | `refunded_from_payment` | `v02_CustbalCBalTrxRefundedFromPaymentTrx` |
| `transferredToBalance` | `transferred_to_balance` | `v02_CustbalCBalTrxXferredToBal` |
| `type` | `type` | `String` |
| `unappliedFromPayment` | `unapplied_from_payment` | `v02_CustbalCBalTrxUnappliedFromPymtTrx` |

### `v02_CustomerSession`

| Field | Stripe API Name | Type |
|---|---|---|
| `clientSecret` | `client_secret` | `String` |
| `components` | `components` | `v02_CustomerSessionResourceComponents` |
| `created` | `created` | `Integer` |
| `customer` | `customer` | `String` |
| `expiresAt` | `expires_at` | `Integer` |
| `livemode` | `livemode` | `Boolean` |
| `r_object` | `object` | `String` |

### `v02_CustomerSessionResourceComponents`

| Field | Stripe API Name | Type |
|---|---|---|
| `buyButton` | `buyButton` | `v02_CusSessionComponentsBuyButton` |
| `paymentElement` | `paymentElement` | `v02_CusSessionComponentsPaymentElement` |
| `pricingTable` | `pricingTable` | `v02_CusSessionComponentsPricingTable` |

### `v02_CustomerTax`

| Field | Stripe API Name | Type |
|---|---|---|
| `automaticTax` | `automaticTax` | `String` |
| `ipAddress` | `ipAddress` | `String` |
| `location` | `location` | `v02_CustomerTaxLocation` |

### `v02_CustomerTaxLocation`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |
| `source` | `source` | `String` |
| `state` | `state` | `String` |

### `v02_FundingInstructions`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankTransfer` | `bank_transfer` | `v02_FundingInstructionsBankTransfer` |
| `r_currency` | `currency` | `String` |
| `fundingType` | `funding_type` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `r_object` | `object` | `String` |

### `v02_FundingInstructionsBankTransfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |
| `financialAddresses` | `financialAddresses` | `List<v02_FundingInsBankXferFinAddress>` |
| `type` | `type` | `String` |

### `v02_FundingInstructionsBankXferAbaRecord`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderAddress` | `accountHolderAddress` | `v02_Address` |
| `accountHolderName` | `accountHolderName` | `String` |
| `accountNumber` | `accountNumber` | `String` |
| `accountType` | `accountType` | `String` |
| `bankAddress` | `bankAddress` | `v02_Address` |
| `bankName` | `bankName` | `String` |
| `routingNumber` | `routingNumber` | `String` |

## Deleted Types

### `v02_DeletedAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `deleted` | `deleted` | `Boolean` |
| `id` | `id` | `String` |
| `r_object` | `object` | `String` |

### `v02_DeletedCoupon`

| Field | Stripe API Name | Type |
|---|---|---|
| `deleted` | `deleted` | `Boolean` |
| `id` | `id` | `String` |
| `r_object` | `object` | `String` |

### `v02_DeletedCustomer`

| Field | Stripe API Name | Type |
|---|---|---|
| `deleted` | `deleted` | `Boolean` |
| `id` | `id` | `String` |
| `r_object` | `object` | `String` |

### `v02_DeletedDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `checkoutSession` | `checkout_session` | `String` |
| `coupon` | `coupon` | `v02_Coupon` |
| `customer` | `customer` | `String` |
| `deleted` | `deleted` | `Boolean` |
| `id` | `id` | `String` |
| `invoice` | `invoice` | `String` |
| `invoiceItem` | `invoice_item` | `String` |
| `r_object` | `object` | `String` |
| `promotionCode` | `promotion_code` | `String` |
| `start` | `start` | `Integer` |
| `subscription` | `subscription` | `String` |
| `subscriptionItem` | `subscription_item` | `String` |

### `v02_DeletedExternalAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `currency` | `String` |
| `deleted` | `deleted` | `Boolean` |
| `id` | `id` | `String` |
| `r_object` | `object` | `String` |

### `v02_DeletedInvoice`

| Field | Stripe API Name | Type |
|---|---|---|
| `deleted` | `deleted` | `Boolean` |
| `id` | `id` | `String` |
| `r_object` | `object` | `String` |

### `v02_DeletedInvoiceitem`

| Field | Stripe API Name | Type |
|---|---|---|
| `deleted` | `deleted` | `Boolean` |
| `id` | `id` | `String` |
| `r_object` | `object` | `String` |

### `v02_DeletedPerson`

| Field | Stripe API Name | Type |
|---|---|---|
| `deleted` | `deleted` | `Boolean` |
| `id` | `id` | `String` |
| `r_object` | `object` | `String` |

### `v02_DeletedPlan`

| Field | Stripe API Name | Type |
|---|---|---|
| `deleted` | `deleted` | `Boolean` |
| `id` | `id` | `String` |
| `r_object` | `object` | `String` |

### `v02_DeletedProduct`

| Field | Stripe API Name | Type |
|---|---|---|
| `deleted` | `deleted` | `Boolean` |
| `id` | `id` | `String` |
| `r_object` | `object` | `String` |

### `v02_DeletedProductFeature`

| Field | Stripe API Name | Type |
|---|---|---|
| `deleted` | `deleted` | `Boolean` |
| `id` | `id` | `String` |
| `r_object` | `object` | `String` |

### `v02_DeletedSubscriptionItem`

| Field | Stripe API Name | Type |
|---|---|---|
| `deleted` | `deleted` | `Boolean` |
| `id` | `id` | `String` |
| `r_object` | `object` | `String` |

### `v02_DeletedTaxId`

| Field | Stripe API Name | Type |
|---|---|---|
| `deleted` | `deleted` | `Boolean` |
| `id` | `id` | `String` |
| `r_object` | `object` | `String` |

## Discount

### `v02_Discount`

| Field | Stripe API Name | Type |
|---|---|---|
| `checkoutSession` | `checkoutSession` | `String` |
| `coupon` | `coupon` | `v02_Coupon` |
| `customer` | `customer` | `String` |
| `r_end` | `r_end` | `Integer` |
| `id` | `id` | `String` |
| `invoice` | `invoice` | `String` |
| `invoiceItem` | `invoiceItem` | `String` |
| `r_object` | `r_object` | `String` |
| `promotionCode` | `promotionCode` | `String` |
| `start` | `start` | `Integer` |
| `subscription` | `subscription` | `String` |
| `subscriptionItem` | `subscriptionItem` | `String` |

### `v02_DiscountsResourceDiscountAmount`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `discount` | `discount` | `String` |

### `v02_DiscountsResourceStackableDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

## Event

### `v02_Event`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `apiVersion` | `api_version` | `String` |
| `context` | `context` | `String` |
| `created` | `created` | `Integer` |
| `data` | `data` | `v02_NotificationEventData` |
| `id` | `id` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `r_object` | `object` | `String` |
| `pendingWebhooks` | `pending_webhooks` | `Integer` |
| `request` | `request` | `v02_NotificationEventRequest` |
| `type` | `type` | `String` |

## File

### `v02_File`

| Field | Stripe API Name | Type |
|---|---|---|
| `created` | `created` | `Integer` |
| `expiresAt` | `expires_at` | `Integer` |
| `filename` | `filename` | `String` |
| `id` | `id` | `String` |
| `links` | `links` | `v02_FileResourceFileLinkList` |
| `r_object` | `object` | `String` |
| `purpose` | `purpose` | `String` |
| `size` | `size` | `Integer` |
| `title` | `title` | `String` |
| `type` | `type` | `String` |
| `url` | `url` | `String` |

### `v02_FileLink`

| Field | Stripe API Name | Type |
|---|---|---|
| `created` | `created` | `Integer` |
| `expired` | `expired` | `Boolean` |
| `expiresAt` | `expires_at` | `Integer` |
| `file` | `file` | `String` |
| `id` | `id` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `metadata` | `metadata` | `v02_Metadata` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

## Invoice

### `v02_Invoice`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountCountry` | `account_country` | `String` |
| `accountName` | `account_name` | `String` |
| `accountTaxIds` | `account_tax_ids` | `List<v02_InvoiceAccountTaxIdsInner>` |
| `amountDue` | `amount_due` | `Integer` |
| `amountOverpaid` | `amount_overpaid` | `Integer` |
| `amountPaid` | `amount_paid` | `Integer` |
| `amountRemaining` | `amount_remaining` | `Integer` |
| `amountShipping` | `amount_shipping` | `Integer` |
| `application` | `application` | `String` |
| `attemptCount` | `attempt_count` | `Integer` |
| `attempted` | `attempted` | `Boolean` |
| `autoAdvance` | `auto_advance` | `Boolean` |
| `automaticTax` | `automatic_tax` | `v02_AutomaticTax` |
| `automaticallyFinalizesAt` | `automatically_finalizes_at` | `Integer` |
| `billingReason` | `billing_reason` | `String` |
| `collectionMethod` | `collection_method` | `String` |
| `confirmationSecret` | `confirmation_secret` | `v02_InvoicesResourceConfirmationSecret` |
| `created` | `created` | `Integer` |
| `r_currency` | `currency` | `String` |
| `customFields` | `custom_fields` | `List<v02_InvoiceSettingCustomField>` |
| `customer` | `customer` | `String` |
| `customerAddress` | `customer_address` | `v02_Address` |
| `customerEmail` | `customer_email` | `String` |
| `customerName` | `customer_name` | `String` |
| `customerPhone` | `customer_phone` | `String` |
| `customerShipping` | `customer_shipping` | `v02_Shipping` |
| `customerTaxExempt` | `customer_tax_exempt` | `String` |
| `customerTaxIds` | `customer_tax_ids` | `List<v02_InvoicesResourceInvoiceTaxId>` |
| `defaultPaymentMethod` | `default_payment_method` | `String` |
| `defaultSource` | `default_source` | `String` |
| `defaultTaxRates` | `default_tax_rates` | `List<v02_TaxRate>` |
| `description` | `description` | `String` |
| `discounts` | `discounts` | `List<v02_InvoiceDiscountsInner>` |
| `dueDate` | `due_date` | `Integer` |
| `effectiveAt` | `effective_at` | `Integer` |
| `endingBalance` | `ending_balance` | `Integer` |
| `footer` | `footer` | `String` |
| `fromInvoice` | `from_invoice` | `v02_InvoicesResourceFromInvoice` |
| `hostedInvoiceUrl` | `hosted_invoice_url` | `String` |
| `id` | `id` | `String` |
| `invoicePdf` | `invoice_pdf` | `String` |
| `issuer` | `issuer` | `v02_ConnectAccountReference` |
| `lastFinalizationError` | `last_finalization_error` | `v02_ApiErrors` |
| `latestRevision` | `latest_revision` | `String` |
| `lines` | `lines` | `v02_InvoiceLinesList` |
| `livemode` | `livemode` | `Boolean` |
| `metadata` | `metadata` | `v02_Metadata` |
| `nextPaymentAttempt` | `next_payment_attempt` | `Integer` |
| `r_number` | `number` | `String` |
| `r_object` | `object` | `String` |
| `onBehalfOf` | `on_behalf_of` | `String` |
| `parent` | `parent` | `v02_BillingBillInvoicingParentsInvParent` |
| `paymentSettings` | `payment_settings` | `v02_InvoicesPaymentSettings` |
| `payments` | `payments` | `v02_InvoicesPaymentsListInvoicePayments` |
| `periodEnd` | `period_end` | `Integer` |
| `periodStart` | `period_start` | `Integer` |
| `postPaymentCreditNotesAmount` | `post_payment_credit_notes_amount` | `Integer` |
| `prePaymentCreditNotesAmount` | `pre_payment_credit_notes_amount` | `Integer` |
| `receiptNumber` | `receipt_number` | `String` |
| `rendering` | `rendering` | `v02_InvoicesResourceInvoiceRendering` |
| `shippingCost` | `shipping_cost` | `v02_InvoicesResourceShippingCost` |
| `shippingDetails` | `shipping_details` | `v02_Shipping` |
| `startingBalance` | `starting_balance` | `Integer` |
| `statementDescriptor` | `statement_descriptor` | `String` |
| `status` | `status` | `String` |
| `statusTransitions` | `status_transitions` | `v02_InvoicesResourceStatusTransitions` |
| `subscription` | `subscription` | `String` |
| `subtotal` | `subtotal` | `Integer` |
| `subtotalExcludingTax` | `subtotal_excluding_tax` | `Integer` |
| `testClock` | `test_clock` | `String` |
| `thresholdReason` | `threshold_reason` | `v02_InvoiceThresholdReason` |
| `total` | `total` | `Integer` |
| `totalDiscountAmounts` | `total_discount_amounts` | `List<v02_DiscountsResourceDiscountAmount>` |
| `totalExcludingTax` | `total_excluding_tax` | `Integer` |
| `totalPretaxCreditAmounts` | `total_pretax_credit_amounts` | `List<v02_InvoicesResourcePretaxCreditAmount>` |
| `totalTaxes` | `total_taxes` | `List<v02_BillingBillResourceInvoicingTaxesTax>` |
| `webhooksDeliveredAt` | `webhooks_delivered_at` | `Integer` |

### `v02_InvoiceAccountTaxIdsInner`

| Field | Stripe API Name | Type |
|---|---|---|
| `stringField` | `stringField` | `String` |
| `country` | `country` | `String` |
| `created` | `created` | `Integer` |
| `customer` | `customer` | `String` |
| `id` | `id` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `r_object` | `r_object` | `String` |
| `owner` | `owner` | `v02_TaxIDsOwner` |
| `type` | `type` | `String` |
| `value` | `value` | `String` |
| `verification` | `verification` | `v02_TaxIdVerification` |
| `deleted` | `deleted` | `Boolean` |

### `v02_InvoiceDiscountsInner`

| Field | Stripe API Name | Type |
|---|---|---|
| `stringField` | `stringField` | `String` |
| `checkoutSession` | `checkoutSession` | `String` |
| `coupon` | `coupon` | `v02_Coupon` |
| `customer` | `customer` | `String` |
| `r_end` | `r_end` | `Integer` |
| `id` | `id` | `String` |
| `invoice` | `invoice` | `String` |
| `invoiceItem` | `invoiceItem` | `String` |
| `r_object` | `r_object` | `String` |
| `promotionCode` | `promotionCode` | `String` |
| `start` | `start` | `Integer` |
| `subscription` | `subscription` | `String` |
| `subscriptionItem` | `subscriptionItem` | `String` |
| `deleted` | `deleted` | `Boolean` |

### `v02_InvoiceInstallmentsCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |

### `v02_InvoiceInvoiceMetadata`

| Field | Stripe API Name | Type |
|---|---|---|
| `listAdditionalStringField` | `listAdditionalStringField` | `List<v02_AdditionalString>` |

### `v02_InvoiceInvoiceMetadata1`

| Field | Stripe API Name | Type |
|---|---|---|
| `listAdditionalStringField` | `listAdditionalStringField` | `List<v02_AdditionalString>` |

### `v02_InvoiceInvoiceMetadata2`

| Field | Stripe API Name | Type |
|---|---|---|
| `listAdditionalStringField` | `listAdditionalStringField` | `List<v02_AdditionalString>` |

### `v02_InvoiceItemThresholdReason`

| Field | Stripe API Name | Type |
|---|---|---|
| `lineItemIds` | `lineItemIds` | `List<String>` |
| `usageGte` | `usageGte` | `Integer` |

### `v02_InvoiceLineItemPeriod`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_end` | `r_end` | `Integer` |
| `start` | `start` | `Integer` |

### `v02_InvoiceMandateOptionsCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `amountType` | `amountType` | `String` |
| `description` | `description` | `String` |

### `v02_InvoicePMOAcssDebitMandateOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `transactionType` | `transactionType` | `String` |

### `v02_InvoicePMOBancontact`

| Field | Stripe API Name | Type |
|---|---|---|
| `preferredLanguage` | `preferredLanguage` | `String` |

### `v02_InvoicePMOCustbalBankTransfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `euBankTransfer` | `euBankTransfer` | `v02_InvoicePMOCustomerBalanceEuTransfer` |
| `type` | `type` | `String` |

### `v02_InvoicePMOCustomerBalance`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankTransfer` | `bankTransfer` | `v02_InvoicePMOCustbalBankTransfer` |
| `fundingType` | `fundingType` | `String` |

### `v02_InvoicePMOCustomerBalanceEuTransfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |

### `v02_InvoicePMOUsBacctLinkedAccOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `filters` | `filters` | `v02_InvPMOUsBacctLinkedAccOptionsFilters` |
| `permissions` | `permissions` | `List<String>` |
| `prefetch` | `prefetch` | `List<String>` |

### `v02_InvoicePMOUsBankAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `financialConnections` | `financialConnections` | `v02_InvoicePMOUsBacctLinkedAccOptions` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_InvoicePayment`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountPaid` | `amount_paid` | `Integer` |
| `amountRequested` | `amount_requested` | `Integer` |
| `created` | `created` | `Integer` |
| `r_currency` | `currency` | `String` |
| `id` | `id` | `String` |
| `invoice` | `invoice` | `String` |
| `isDefault` | `is_default` | `Boolean` |
| `livemode` | `livemode` | `Boolean` |
| `r_object` | `object` | `String` |
| `payment` | `payment` | `v02_InvsPymtsInvPymtAssociatedPymt` |
| `status` | `status` | `String` |
| `statusTransitions` | `status_transitions` | `v02_InvsPymtsInvPymtStatusTransitions` |

### `v02_InvoicePaymentMethodOptionsAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_InvoicePMOAcssDebitMandateOptions` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_InvoicePaymentMethodOptionsCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `installments` | `installments` | `v02_InvoiceInstallmentsCard` |
| `requestThreeDSecure` | `requestThreeDSecure` | `String` |

### `v02_InvoiceRenderingPdf`

| Field | Stripe API Name | Type |
|---|---|---|
| `pageSize` | `pageSize` | `String` |

### `v02_InvoiceRenderingTemplate`

| Field | Stripe API Name | Type |
|---|---|---|
| `created` | `created` | `Integer` |
| `id` | `id` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `metadata` | `metadata` | `v02_Metadata` |
| `nickname` | `nickname` | `String` |
| `r_object` | `object` | `String` |
| `status` | `status` | `String` |
| `version` | `version` | `Integer` |

### `v02_InvoiceSettingCheckoutRndrOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountTaxDisplay` | `amountTaxDisplay` | `String` |

### `v02_InvoiceSettingCustomField`

| Field | Stripe API Name | Type |
|---|---|---|
| `name` | `name` | `String` |
| `value` | `value` | `String` |

### `v02_InvoiceSettingCustomerRndrOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountTaxDisplay` | `amountTaxDisplay` | `String` |
| `template` | `template` | `String` |

### `v02_InvoiceSettingCustomerSetting`

| Field | Stripe API Name | Type |
|---|---|---|
| `customFields` | `customFields` | `List<v02_InvoiceSettingCustomField>` |
| `defaultPaymentMethod` | `defaultPaymentMethod` | `String` |
| `footer` | `footer` | `String` |
| `renderingOptions` | `renderingOptions` | `v02_InvoiceSettingCustomerRndrOpts` |

### `v02_InvoiceSettingQuoteSetting`

| Field | Stripe API Name | Type |
|---|---|---|
| `daysUntilDue` | `daysUntilDue` | `Integer` |
| `issuer` | `issuer` | `v02_ConnectAccountReference` |

### `v02_InvoiceSettingSubSchPhaseSetting`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountTaxIds` | `accountTaxIds` | `List<v02_InvoiceAccountTaxIdsInner>` |
| `daysUntilDue` | `daysUntilDue` | `Integer` |
| `issuer` | `issuer` | `v02_ConnectAccountReference` |

### `v02_InvoiceSettingSubScheduleSetting`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountTaxIds` | `accountTaxIds` | `List<v02_InvoiceAccountTaxIdsInner>` |
| `daysUntilDue` | `daysUntilDue` | `Integer` |
| `issuer` | `issuer` | `v02_ConnectAccountReference` |

### `v02_InvoiceThresholdReason`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountGte` | `amountGte` | `Integer` |
| `itemReasons` | `itemReasons` | `List<v02_InvoiceItemThresholdReason>` |

### `v02_Invoiceitem`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `r_currency` | `currency` | `String` |
| `customer` | `customer` | `String` |
| `r_date` | `date` | `Integer` |
| `description` | `description` | `String` |
| `discountable` | `discountable` | `Boolean` |
| `discounts` | `discounts` | `List<v02_InvoiceitemDiscountsInner>` |
| `id` | `id` | `String` |
| `invoice` | `invoice` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `metadata` | `metadata` | `v02_Metadata` |
| `r_object` | `object` | `String` |
| `parent` | `parent` | `v02_BlngBillInvItemParentsInvItemParent` |
| `period` | `period` | `v02_InvoiceLineItemPeriod` |
| `pricing` | `pricing` | `v02_BillingBillInvoicingPricingPricing` |
| `proration` | `proration` | `Boolean` |
| `quantity` | `quantity` | `Integer` |
| `taxRates` | `tax_rates` | `List<v02_TaxRate>` |
| `testClock` | `test_clock` | `String` |

### `v02_InvoiceitemDiscountsInner`

| Field | Stripe API Name | Type |
|---|---|---|
| `stringField` | `stringField` | `String` |
| `checkoutSession` | `checkoutSession` | `String` |
| `coupon` | `coupon` | `v02_Coupon` |
| `customer` | `customer` | `String` |
| `r_end` | `r_end` | `Integer` |
| `id` | `id` | `String` |
| `invoice` | `invoice` | `String` |
| `invoiceItem` | `invoiceItem` | `String` |
| `r_object` | `r_object` | `String` |
| `promotionCode` | `promotionCode` | `String` |
| `start` | `start` | `Integer` |
| `subscription` | `subscription` | `String` |
| `subscriptionItem` | `subscriptionItem` | `String` |

### `v02_InvoicesPaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `acssDebit` | `acssDebit` | `v02_InvoicePaymentMethodOptionsAcssDebit` |
| `bancontact` | `bancontact` | `v02_InvoicePMOBancontact` |
| `card` | `card` | `v02_InvoicePaymentMethodOptionsCard` |
| `customerBalance` | `customerBalance` | `v02_InvoicePMOCustomerBalance` |
| `konbini` | `konbini` | `List<v02_AdditionalString>` |
| `sepaDebit` | `sepaDebit` | `List<v02_AdditionalString>` |
| `usBankAccount` | `usBankAccount` | `v02_InvoicePMOUsBankAccount` |

### `v02_InvoicesPaymentSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `defaultMandate` | `defaultMandate` | `String` |
| `paymentMethodOptions` | `paymentMethodOptions` | `v02_InvoicesPaymentMethodOptions` |
| `paymentMethodTypes` | `paymentMethodTypes` | `List<String>` |

### `v02_InvoicesResourceConfirmationSecret`

| Field | Stripe API Name | Type |
|---|---|---|
| `clientSecret` | `clientSecret` | `String` |
| `type` | `type` | `String` |

### `v02_InvoicesResourceFromInvoice`

| Field | Stripe API Name | Type |
|---|---|---|
| `action` | `action` | `String` |
| `invoice` | `invoice` | `String` |

### `v02_InvoicesResourceInvoiceRendering`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountTaxDisplay` | `amountTaxDisplay` | `String` |
| `pdf` | `pdf` | `v02_InvoiceRenderingPdf` |
| `template` | `template` | `String` |
| `templateVersion` | `templateVersion` | `Integer` |

### `v02_InvoicesResourceInvoiceTaxId`

| Field | Stripe API Name | Type |
|---|---|---|
| `type` | `type` | `String` |
| `value` | `value` | `String` |

### `v02_InvoicesResourcePretaxCreditAmount`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `creditBalanceTransaction` | `creditBalanceTransaction` | `String` |
| `discount` | `discount` | `String` |
| `type` | `type` | `String` |

### `v02_InvoicesResourceShippingCost`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountSubtotal` | `amountSubtotal` | `Integer` |
| `amountTax` | `amountTax` | `Integer` |
| `amountTotal` | `amountTotal` | `Integer` |
| `shippingRate` | `shippingRate` | `String` |
| `taxes` | `taxes` | `List<v02_LineItemsTaxAmount>` |

### `v02_InvoicesResourceStatusTransitions`

| Field | Stripe API Name | Type |
|---|---|---|
| `finalizedAt` | `finalizedAt` | `Integer` |
| `markedUncollectibleAt` | `markedUncollectibleAt` | `Integer` |
| `paidAt` | `paidAt` | `Integer` |
| `voidedAt` | `voidedAt` | `Integer` |

## Issuing

### `v02_IssuingAuthorizationMerchantData`

| Field | Stripe API Name | Type |
|---|---|---|
| `category` | `category` | `String` |
| `categoryCode` | `categoryCode` | `String` |
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `name` | `name` | `String` |
| `networkId` | `networkId` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |
| `taxId` | `taxId` | `String` |
| `terminalId` | `terminalId` | `String` |
| `url` | `url` | `String` |

### `v02_IssuingTransaction`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `amountDetails` | `amount_details` | `v02_IssuingTransactionAmountDetails` |
| `authorization` | `authorization` | `String` |
| `balanceTransaction` | `balance_transaction` | `String` |
| `card` | `card` | `String` |
| `cardholder` | `cardholder` | `String` |
| `created` | `created` | `Integer` |
| `r_currency` | `currency` | `String` |
| `dispute` | `dispute` | `String` |
| `id` | `id` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `merchantAmount` | `merchant_amount` | `Integer` |
| `merchantCurrency` | `merchant_currency` | `String` |
| `merchantData` | `merchant_data` | `v02_IssuingAuthorizationMerchantData` |
| `metadata` | `metadata` | `v02_Metadata` |
| `networkData` | `network_data` | `v02_IssuingTransactionNetworkData` |
| `r_object` | `object` | `String` |
| `purchaseDetails` | `purchase_details` | `v02_IssuingTransactionPurchaseDetails` |
| `token` | `token` | `String` |
| `treasury` | `treasury` | `v02_IssuingTransactionTreasury` |
| `type` | `type` | `String` |
| `wallet` | `wallet` | `String` |

### `v02_IssuingTransactionAmountDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `atmFee` | `atmFee` | `Integer` |
| `cashbackAmount` | `cashbackAmount` | `Integer` |

### `v02_IssuingTransactionFleetData`

| Field | Stripe API Name | Type |
|---|---|---|
| `cardholderPromptData` | `cardholderPromptData` | `v02_IssuingTrxFleetCardholderPromptData` |
| `purchaseType` | `purchaseType` | `String` |
| `reportedBreakdown` | `reportedBreakdown` | `v02_IssuingTrxFleetReportedBreakdown` |
| `serviceType` | `serviceType` | `String` |

### `v02_IssuingTransactionFleetFuelPriceData`

| Field | Stripe API Name | Type |
|---|---|---|
| `grossAmountDecimal` | `grossAmountDecimal` | `String` |

### `v02_IssuingTransactionFleetNonFuelPdata`

| Field | Stripe API Name | Type |
|---|---|---|
| `grossAmountDecimal` | `grossAmountDecimal` | `String` |

### `v02_IssuingTransactionFleetTaxData`

| Field | Stripe API Name | Type |
|---|---|---|
| `localAmountDecimal` | `localAmountDecimal` | `String` |
| `nationalAmountDecimal` | `nationalAmountDecimal` | `String` |

### `v02_IssuingTransactionFlightData`

| Field | Stripe API Name | Type |
|---|---|---|
| `departureAt` | `departureAt` | `Integer` |
| `passengerName` | `passengerName` | `String` |
| `refundable` | `refundable` | `Boolean` |
| `segments` | `segments` | `List<v02_IssuingTransactionFlightDataLeg>` |
| `travelAgency` | `travelAgency` | `String` |

### `v02_IssuingTransactionFlightDataLeg`

| Field | Stripe API Name | Type |
|---|---|---|
| `arrivalAirportCode` | `arrivalAirportCode` | `String` |
| `carrier` | `carrier` | `String` |
| `departureAirportCode` | `departureAirportCode` | `String` |
| `flightNumber` | `flightNumber` | `String` |
| `serviceClass` | `serviceClass` | `String` |
| `stopoverAllowed` | `stopoverAllowed` | `Boolean` |

### `v02_IssuingTransactionFuelData`

| Field | Stripe API Name | Type |
|---|---|---|
| `industryProductCode` | `industryProductCode` | `String` |
| `quantityDecimal` | `quantityDecimal` | `String` |
| `type` | `type` | `String` |
| `unit` | `unit` | `String` |
| `unitCostDecimal` | `unitCostDecimal` | `String` |

### `v02_IssuingTransactionLodgingData`

| Field | Stripe API Name | Type |
|---|---|---|
| `checkInAt` | `checkInAt` | `Integer` |
| `nights` | `nights` | `Integer` |

### `v02_IssuingTransactionNetworkData`

| Field | Stripe API Name | Type |
|---|---|---|
| `authorizationCode` | `authorizationCode` | `String` |
| `processingDate` | `processingDate` | `String` |
| `transactionId` | `transactionId` | `String` |

### `v02_IssuingTransactionPurchaseDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `fleet` | `fleet` | `v02_IssuingTransactionFleetData` |
| `flight` | `flight` | `v02_IssuingTransactionFlightData` |
| `fuel` | `fuel` | `v02_IssuingTransactionFuelData` |
| `lodging` | `lodging` | `v02_IssuingTransactionLodgingData` |
| `receipt` | `receipt` | `List<v02_IssuingTransactionReceiptData>` |
| `reference` | `reference` | `String` |

### `v02_IssuingTransactionReceiptData`

| Field | Stripe API Name | Type |
|---|---|---|
| `description` | `description` | `String` |
| `quantity` | `quantity` | `Double` |
| `total` | `total` | `Integer` |
| `unitCost` | `unitCost` | `Integer` |

### `v02_IssuingTransactionTreasury`

| Field | Stripe API Name | Type |
|---|---|---|
| `receivedCredit` | `receivedCredit` | `String` |
| `receivedDebit` | `receivedDebit` | `String` |

### `v02_IssuingTrxFleetCardholderPromptData`

| Field | Stripe API Name | Type |
|---|---|---|
| `driverId` | `driverId` | `String` |
| `odometer` | `odometer` | `Integer` |
| `unspecifiedId` | `unspecifiedId` | `String` |
| `userId` | `userId` | `String` |
| `vehicleNumber` | `vehicleNumber` | `String` |

### `v02_IssuingTrxFleetReportedBreakdown`

| Field | Stripe API Name | Type |
|---|---|---|
| `fuel` | `fuel` | `v02_IssuingTransactionFleetFuelPriceData` |
| `nonFuel` | `nonFuel` | `v02_IssuingTransactionFleetNonFuelPdata` |
| `tax` | `tax` | `v02_IssuingTransactionFleetTaxData` |

## Line Item

### `v02_LineItem`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `r_currency` | `currency` | `String` |
| `description` | `description` | `String` |
| `discountAmounts` | `discount_amounts` | `List<v02_DiscountsResourceDiscountAmount>` |
| `discountable` | `discountable` | `Boolean` |
| `discounts` | `discounts` | `List<v02_InvoiceitemDiscountsInner>` |
| `id` | `id` | `String` |
| `invoice` | `invoice` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `metadata` | `metadata` | `v02_Metadata` |
| `r_object` | `object` | `String` |
| `parent` | `parent` | `v02_BlngBillInvoicingLinesParentsInvL` |
| `period` | `period` | `v02_InvoiceLineItemPeriod` |
| `pretaxCreditAmounts` | `pretax_credit_amounts` | `List<v02_InvoicesResourcePretaxCreditAmount>` |
| `pricing` | `pricing` | `v02_BillingBillInvoicingPricingPricing` |
| `quantity` | `quantity` | `Integer` |
| `subscription` | `subscription` | `String` |
| `taxes` | `taxes` | `List<v02_BillingBillResourceInvoicingTaxesTax>` |

### `v02_LineItemsDiscountAmount`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `discount` | `discount` | `v02_Discount` |

### `v02_LineItemsTaxAmount`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `rate` | `rate` | `v02_TaxRate` |
| `taxabilityReason` | `taxabilityReason` | `String` |
| `taxableAmount` | `taxableAmount` | `Integer` |

## List & Search Types

### `v02_APIMethodRefundList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Refund>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_AccountList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Account>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_ApmsSourcesSourceList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_PaymentSource>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_BalanceTransactionsList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_BalanceTransaction>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_BillingCreditGrantsBalTrxList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_BillingCreditBalanceTransaction>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_ChargeList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Charge>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_ChargeSearchResult`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Charge>` |
| `hasMore` | `has_more` | `Boolean` |
| `nextPage` | `next_page` | `String` |
| `r_object` | `object` | `String` |
| `totalCount` | `total_count` | `Integer` |
| `url` | `url` | `String` |

### `v02_ClimateRemovalsProductsList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_ClimateProduct>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_ConnectEmbeddedIssCrdsListConfig`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `features` | `features` | `v02_ConnectEmbeddedIssCrdsListFeatures` |

### `v02_ConnectEmbeddedIssCrdsListFeatures`

| Field | Stripe API Name | Type |
|---|---|---|
| `cardManagement` | `cardManagement` | `Boolean` |
| `cardSpendDisputeManagement` | `cardSpendDisputeManagement` | `Boolean` |
| `cardholderManagement` | `cardholderManagement` | `Boolean` |
| `disableStripeUserAuthentication` | `disableStripeUserAuthentication` | `Boolean` |
| `spendControlManagement` | `spendControlManagement` | `Boolean` |

### `v02_CouponsResourceCouponList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Coupon>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_CreditNoteLinesList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_CreditNoteLineItem>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_CreditNotesList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_CreditNote>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_CustomerBalanceTransactionList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_CustomerBalanceTransaction>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_CustomerCashBalanceTransactionList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_CustomerCashBalanceTransaction>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_CustomerPaymentMethodResourceList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_PaymentMethod>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_CustomerResourceCustomerList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Customer>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_CustomerSearchResult`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Customer>` |
| `hasMore` | `has_more` | `Boolean` |
| `nextPage` | `next_page` | `String` |
| `r_object` | `object` | `String` |
| `totalCount` | `total_count` | `Integer` |
| `url` | `url` | `String` |

### `v02_EntitlementsResourceProdFeatureList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_ProductFeature>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_ExternalAccountList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_ExternalAccount>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_FeeRefundList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_FeeRefund>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_FileResourceFileLinkList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_FileLink>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_InvoiceLinesList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_LineItem>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_InvoiceRenderingTemplatesList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_InvoiceRenderingTemplate>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_InvoiceSearchResult`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Invoice>` |
| `hasMore` | `has_more` | `Boolean` |
| `nextPage` | `next_page` | `String` |
| `r_object` | `object` | `String` |
| `totalCount` | `total_count` | `Integer` |
| `url` | `url` | `String` |

### `v02_InvoicesItemsList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Invoiceitem>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_InvoicesPaymentsListInvoicePayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_InvoicePayment>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_InvoicesResourceList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Invoice>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_ListAccountCapability`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Capability>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_ListCreatedParameter`

| Field | Stripe API Name | Type |
|---|---|---|
| `integerField` | `integerField` | `Integer` |
| `gt` | `gt` | `Integer` |
| `gte` | `gte` | `Integer` |
| `lt` | `lt` | `Integer` |
| `lte` | `lte` | `Integer` |

### `v02_NotificationEventList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Event>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_PaymentFlowsPaymentIntentList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_PaymentIntent>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_PaymentFlowsPaymentMethodList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_PaymentMethod>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_PaymentFlowsSetupIntentList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_SetupIntent>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_PaymentIntentSearchResult`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_PaymentIntent>` |
| `hasMore` | `has_more` | `Boolean` |
| `nextPage` | `next_page` | `String` |
| `r_object` | `object` | `String` |
| `totalCount` | `total_count` | `Integer` |
| `url` | `url` | `String` |

### `v02_PaymentLinksResourceListLineItems`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Item>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_PaymentLinksResourcePaymentLinkList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_PaymentLink>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_PaymentPagesCOSListLineItems`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Item>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_PaymentPagesCheckoutSessionList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_CheckoutSession>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_PayoutList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Payout>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_PersonList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Person>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_PlanList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Plan>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_PriceList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Price>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_PriceSearchResult`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Price>` |
| `hasMore` | `has_more` | `Boolean` |
| `nextPage` | `next_page` | `String` |
| `r_object` | `object` | `String` |
| `totalCount` | `total_count` | `Integer` |
| `url` | `url` | `String` |

### `v02_ProductList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Product>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_ProductSearchResult`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Product>` |
| `hasMore` | `has_more` | `Boolean` |
| `nextPage` | `next_page` | `String` |
| `r_object` | `object` | `String` |
| `totalCount` | `total_count` | `Integer` |
| `url` | `url` | `String` |

### `v02_PromotionCodesPromotionCodeList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_PromotionCode>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_PymtMethodConfigPymtMethodConfsList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_PaymentMethodConfiguration>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_PymtMethodDomainPymtMethodDomainList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_PaymentMethodDomain>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_QuotesResourceListLineItems`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Item>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_QuotesResourceQuoteList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Quote>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_RefundList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Refund>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_SubSchedulesResourceScheduleList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_SubscriptionSchedule>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_SubsItemsSubItemList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_SubscriptionItem>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_SubscriptionItemList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_SubscriptionItem>` |
| `hasMore` | `hasMore` | `Boolean` |
| `r_object` | `r_object` | `String` |
| `url` | `url` | `String` |

### `v02_SubscriptionList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Subscription>` |
| `hasMore` | `hasMore` | `Boolean` |
| `r_object` | `r_object` | `String` |
| `url` | `url` | `String` |

### `v02_SubscriptionSearchResult`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Subscription>` |
| `hasMore` | `has_more` | `Boolean` |
| `nextPage` | `next_page` | `String` |
| `r_object` | `object` | `String` |
| `totalCount` | `total_count` | `Integer` |
| `url` | `url` | `String` |

### `v02_SubscriptionsSubscriptionList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Subscription>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_TaxIDsList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_TaxId>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_TransferList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_Transfer>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_TransferReversalList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_TransferReversal>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_TresInbXfersResourceInbXferList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_TreasuryInboundTransfer>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

### `v02_TresObXfersResourceObXferList`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `List<v02_TreasuryOutboundTransfer>` |
| `hasMore` | `has_more` | `Boolean` |
| `r_object` | `object` | `String` |
| `url` | `url` | `String` |

## Other

### `v02_AccUnificationAccControllerFees`

| Field | Stripe API Name | Type |
|---|---|---|
| `payer` | `payer` | `String` |

### `v02_AccUnificationAccControllerLosses`

| Field | Stripe API Name | Type |
|---|---|---|
| `payments` | `payments` | `String` |

### `v02_AccUnificationAccControllerStripe`

| Field | Stripe API Name | Type |
|---|---|---|
| `type` | `type` | `String` |

### `v02_AdditionalClimateRemovalsProdsPrice`

| Field | Stripe API Name | Type |
|---|---|---|
| `key` | `key` | `String` |
| `value` | `value` | `v02_ClimateRemovalsProductsPrice` |

### `v02_AdditionalCouponCurrencyOption`

| Field | Stripe API Name | Type |
|---|---|---|
| `key` | `key` | `String` |
| `value` | `value` | `v02_CouponCurrencyOption` |

### `v02_AdditionalCreateCouponsReqCurrOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `key` | `key` | `String` |
| `value` | `value` | `v02_CreateCouponsReqCurrencyOptions` |

### `v02_AdditionalCreatePricesReqCurrOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `key` | `key` | `String` |
| `value` | `value` | `v02_CreatePricesReqCurrencyOptions` |

### `v02_AdditionalCreateProdsReqDefPdtCOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `key` | `key` | `String` |
| `value` | `value` | `v02_CreateProdsReqDefPdataCOpts` |

### `v02_AdditionalCurrencyOption`

| Field | Stripe API Name | Type |
|---|---|---|
| `key` | `key` | `String` |
| `value` | `value` | `v02_CurrencyOption` |

### `v02_AdditionalInteger`

| Field | Stripe API Name | Type |
|---|---|---|
| `key` | `key` | `String` |
| `value` | `value` | `Integer` |

### `v02_AdditionalPromotionCodeCurrencyOpt`

| Field | Stripe API Name | Type |
|---|---|---|
| `key` | `key` | `String` |
| `value` | `value` | `v02_PromotionCodeCurrencyOption` |

### `v02_AdditionalString`

| Field | Stripe API Name | Type |
|---|---|---|
| `key` | `key` | `String` |
| `value` | `value` | `String` |

### `v02_AdditionalUpdateCouponsReqCurrOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `key` | `key` | `String` |
| `value` | `value` | `v02_UpdateCouponsReqCurrencyOptions` |

### `v02_AdditionalUpdatePricesReqCurrOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `key` | `key` | `String` |
| `value` | `value` | `v02_UpdatePricesReqCurrencyOptions` |

### `v02_Address`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_AdtlCreateCOSsReqShpOptRateFxdAmtCOp`

| Field | Stripe API Name | Type |
|---|---|---|
| `key` | `key` | `String` |
| `value` | `value` | `v02_CreateCOSsReqShpOptRateFxdAmtCOpts` |

### `v02_AdtlCreateInvsReqShpCostRateFxdAmtCO`

| Field | Stripe API Name | Type |
|---|---|---|
| `key` | `key` | `String` |
| `value` | `value` | `v02_CreateInvsReqShpCostRateFxdAmtCOpts` |

### `v02_AdtlCreatePcodesReqRestrictionsCOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `key` | `key` | `String` |
| `value` | `value` | `v02_CreatePcodesReqRestrictionsCOpts` |

### `v02_AdtlUpdateCOSsReqShpOptRateFxdAmtCOp`

| Field | Stripe API Name | Type |
|---|---|---|
| `key` | `key` | `String` |
| `value` | `value` | `v02_UpdateCOSsReqShpOptRateFxdAmtCOpts` |

### `v02_AdtlUpdateInvsReqShpCostRateFxdAmtCO`

| Field | Stripe API Name | Type |
|---|---|---|
| `key` | `key` | `String` |
| `value` | `value` | `v02_UpdateInvsReqShpCostRateFxdAmtCOpts` |

### `v02_AdtlUpdatePcodesReqRestrictionsCOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `key` | `key` | `String` |
| `value` | `value` | `v02_UpdatePcodesReqRestrictionsCOpts` |

### `v02_AmazonPayUnderlyingPmFundingDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `card` | `card` | `v02_PaymentMethodDetailsPassthroughCard` |
| `type` | `type` | `String` |

### `v02_ApiErrors`

| Field | Stripe API Name | Type |
|---|---|---|
| `adviceCode` | `adviceCode` | `String` |
| `charge` | `charge` | `String` |
| `code` | `code` | `String` |
| `declineCode` | `declineCode` | `String` |
| `docUrl` | `docUrl` | `String` |
| `message` | `message` | `String` |
| `networkAdviceCode` | `networkAdviceCode` | `String` |
| `networkDeclineCode` | `networkDeclineCode` | `String` |
| `param` | `param` | `String` |
| `paymentIntent` | `paymentIntent` | `v02_PaymentIntent` |
| `paymentMethod` | `paymentMethod` | `v02_PaymentMethod` |
| `paymentMethodType` | `paymentMethodType` | `String` |
| `requestLogUrl` | `requestLogUrl` | `String` |
| `setupIntent` | `setupIntent` | `v02_SetupIntent` |
| `source` | `source` | `v02_PaymentSource` |
| `type` | `type` | `String` |

### `v02_AutomaticTax`

| Field | Stripe API Name | Type |
|---|---|---|
| `disabledReason` | `disabledReason` | `String` |
| `enabled` | `enabled` | `Boolean` |
| `liability` | `liability` | `v02_ConnectAccountReference` |
| `provider` | `provider` | `String` |
| `status` | `status` | `String` |

### `v02_BankAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `accountHolderName` | `account_holder_name` | `String` |
| `accountHolderType` | `account_holder_type` | `String` |
| `accountType` | `account_type` | `String` |
| `availablePayoutMethods` | `available_payout_methods` | `List<String>` |
| `bankName` | `bank_name` | `String` |
| `country` | `country` | `String` |
| `r_currency` | `currency` | `String` |
| `customer` | `customer` | `String` |
| `defaultForCurrency` | `default_for_currency` | `Boolean` |
| `fingerprint` | `fingerprint` | `String` |
| `futureRequirements` | `future_requirements` | `v02_ExternalAccountRequirements` |
| `id` | `id` | `String` |
| `last4` | `last4` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `r_object` | `object` | `String` |
| `requirements` | `requirements` | `v02_ExternalAccountRequirements` |
| `routingNumber` | `routing_number` | `String` |
| `status` | `status` | `String` |

### `v02_BillingBillInvoicingParentsInvParent`

| Field | Stripe API Name | Type |
|---|---|---|
| `quoteDetails` | `quoteDetails` | `v02_BlngBillInvoicingParentsInvQuote` |
| `subscriptionDetails` | `subscriptionDetails` | `v02_BlngBillInvoicingParentsInvSubParent` |
| `type` | `type` | `String` |

### `v02_BillingBillInvoicingPricingPricing`

| Field | Stripe API Name | Type |
|---|---|---|
| `priceDetails` | `priceDetails` | `v02_BlngBillInvoicingPricingPricingP` |
| `type` | `type` | `String` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_BillingBillResourceInvoicingTaxesTax`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `taxBehavior` | `taxBehavior` | `String` |
| `taxRateDetails` | `taxRateDetails` | `v02_BlngBillInvoicingTaxesTaxRateDetails` |
| `taxabilityReason` | `taxabilityReason` | `String` |
| `taxableAmount` | `taxableAmount` | `Integer` |
| `type` | `type` | `String` |

### `v02_BillingDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_Address` |
| `email` | `email` | `String` |
| `name` | `name` | `String` |
| `phone` | `phone` | `String` |
| `taxId` | `taxId` | `String` |

### `v02_BlngBillInvItemParentsInvItemParent`

| Field | Stripe API Name | Type |
|---|---|---|
| `subscriptionDetails` | `subscriptionDetails` | `v02_BlngBillInvItemParentsInvItemS` |
| `type` | `type` | `String` |

### `v02_BlngBillInvItemParentsInvItemS`

| Field | Stripe API Name | Type |
|---|---|---|
| `subscription` | `subscription` | `String` |
| `subscriptionItem` | `subscriptionItem` | `String` |

### `v02_BlngBillInvoicingLinesCommonCred`

| Field | Stripe API Name | Type |
|---|---|---|
| `invoice` | `invoice` | `String` |
| `invoiceLineItems` | `invoiceLineItems` | `List<String>` |

### `v02_BlngBillInvoicingLinesCommonPror`

| Field | Stripe API Name | Type |
|---|---|---|
| `creditedItems` | `creditedItems` | `v02_BlngBillInvoicingLinesCommonCred` |

### `v02_BlngBillInvoicingLinesParentsInvL`

| Field | Stripe API Name | Type |
|---|---|---|
| `invoiceItemDetails` | `invoiceItemDetails` | `v02_BlngBillInvoicingLinesParentsInvLin` |
| `subscriptionItemDetails` | `subscriptionItemDetails` | `v02_BlngBillInvoicingLinesParentsInvLin` |
| `type` | `type` | `String` |

### `v02_BlngBillInvoicingLinesParentsInvLin`

| Field | Stripe API Name | Type |
|---|---|---|
| `invoiceItem` | `invoiceItem` | `String` |
| `proration` | `proration` | `Boolean` |
| `prorationDetails` | `prorationDetails` | `v02_BlngBillInvoicingLinesCommonPror` |
| `subscription` | `subscription` | `String` |
| `subscriptionItem` | `subscriptionItem` | `String` |

### `v02_BlngBillInvoicingParentsInvQuote`

| Field | Stripe API Name | Type |
|---|---|---|
| `quote` | `quote` | `String` |

### `v02_BlngBillInvoicingParentsInvSubParent`

| Field | Stripe API Name | Type |
|---|---|---|
| `stringField` | `stringField` | `String` |
| `application` | `application` | `String` |
| `applicationFeePercent` | `applicationFeePercent` | `Double` |
| `automaticTax` | `automaticTax` | `v02_SubscriptionAutomaticTax` |
| `billingCycleAnchor` | `billingCycleAnchor` | `Integer` |
| `billingCycleAnchorConfig` | `billingCycleAnchorConfig` | `v02_SubsResourceBillingCycleAnchorConfig` |
| `cancelAt` | `cancelAt` | `Integer` |
| `cancelAtPeriodEnd` | `cancelAtPeriodEnd` | `Boolean` |
| `canceledAt` | `canceledAt` | `Integer` |
| `cancellationDetails` | `cancellationDetails` | `v02_CancellationDetails` |
| `collectionMethod` | `collectionMethod` | `String` |
| `created` | `created` | `Integer` |
| `r_currency` | `r_currency` | `String` |
| `customer` | `customer` | `String` |
| `daysUntilDue` | `daysUntilDue` | `Integer` |
| `defaultPaymentMethod` | `defaultPaymentMethod` | `String` |
| `defaultSource` | `defaultSource` | `String` |
| `defaultTaxRates` | `defaultTaxRates` | `List<v02_TaxRate>` |
| `description` | `description` | `String` |
| `discounts` | `discounts` | `List<v02_InvoiceitemDiscountsInner>` |
| `endedAt` | `endedAt` | `Integer` |
| `id` | `id` | `String` |
| `invoiceSettings` | `invoiceSettings` | `v02_SubsResourceSubInvoiceSettings` |
| `items` | `items` | `v02_SubscriptionItemList` |
| `latestInvoice` | `latestInvoice` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `metadata` | `metadata` | `v02_Metadata` |
| `subscription` | `subscription` | `String` |
| `nextPendingInvoiceItemInvoice` | `nextPendingInvoiceItemInvoice` | `Integer` |
| `r_object` | `r_object` | `String` |
| `onBehalfOf` | `onBehalfOf` | `String` |
| `pauseCollection` | `pauseCollection` | `v02_SubscriptionsResourcePauseCollection` |
| `paymentSettings` | `paymentSettings` | `v02_SubscriptionsResourcePaymentSettings` |
| `pendingInvoiceItemInterval` | `pendingInvoiceItemInterval` | `v02_SubPendingInvoiceItemInterval` |
| `pendingSetupIntent` | `pendingSetupIntent` | `String` |
| `pendingUpdate` | `pendingUpdate` | `v02_SubscriptionsResourcePendingUpdate` |
| `schedule` | `schedule` | `String` |
| `startDate` | `startDate` | `Integer` |
| `status` | `status` | `String` |
| `testClock` | `testClock` | `String` |
| `transferData` | `transferData` | `v02_SubscriptionTransferData` |
| `trialEnd` | `trialEnd` | `Integer` |
| `trialSettings` | `trialSettings` | `v02_SubsTrialsResourceTrialSettings` |
| `trialStart` | `trialStart` | `Integer` |

### `v02_BlngBillInvoicingPricingPricingP`

| Field | Stripe API Name | Type |
|---|---|---|
| `price` | `price` | `String` |
| `product` | `product` | `String` |

### `v02_BlngBillInvoicingTaxesTaxRateDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `taxRate` | `taxRate` | `String` |

### `v02_BlngCreditGrantsBalCreditsApplica`

| Field | Stripe API Name | Type |
|---|---|---|
| `invoice` | `invoice` | `String` |
| `invoiceLineItem` | `invoiceLineItem` | `String` |

### `v02_CancellationDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `comment` | `comment` | `String` |
| `feedback` | `feedback` | `String` |
| `reason` | `reason` | `String` |

### `v02_CardGeneratedFromPMDs`

| Field | Stripe API Name | Type |
|---|---|---|
| `cardPresent` | `cardPresent` | `v02_PaymentMethodDetailsCardPresent` |
| `type` | `type` | `String` |

### `v02_CardIssuingAccountTermsOfService`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_date` | `r_date` | `Integer` |
| `ip` | `ip` | `String` |
| `userAgent` | `userAgent` | `String` |

### `v02_ConnectAccountReference`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_ConnectEmbeddedAccSessionCreate`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountManagement` | `accountManagement` | `v02_ConnectEmbeddedAccountConfigClaim` |
| `accountOnboarding` | `accountOnboarding` | `v02_ConnectEmbeddedAccountConfigClaim` |
| `balances` | `balances` | `v02_ConnectEmbeddedPayoutsConfig` |
| `documents` | `documents` | `v02_ConnectEmbeddedBaseConfigClaim` |
| `financialAccount` | `financialAccount` | `v02_ConnectEmbeddedFinAccountConfigClaim` |
| `financialAccountTransactions` | `financialAccountTransactions` | `v02_ConnectEmbeddedFinAccTrxsConfigClaim` |
| `issuingCard` | `issuingCard` | `v02_ConnectEmbeddedIssCrdConfigClaim` |
| `issuingCardsList` | `issuingCardsList` | `v02_ConnectEmbeddedIssCrdsListConfig` |
| `notificationBanner` | `notificationBanner` | `v02_ConnectEmbeddedAccountConfigClaim` |
| `paymentDetails` | `paymentDetails` | `v02_ConnectEmbeddedPaymentsConfigClaim` |
| `payments` | `payments` | `v02_ConnectEmbeddedPaymentsConfigClaim` |
| `payouts` | `payouts` | `v02_ConnectEmbeddedPayoutsConfig` |
| `payoutsList` | `payoutsList` | `v02_ConnectEmbeddedBaseConfigClaim` |
| `taxRegistrations` | `taxRegistrations` | `v02_ConnectEmbeddedBaseConfigClaim` |
| `taxSettings` | `taxSettings` | `v02_ConnectEmbeddedBaseConfigClaim` |

### `v02_ConnectEmbeddedAccountConfigClaim`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `features` | `features` | `v02_ConnectEmbeddedAccountFeaturesClaim` |

### `v02_ConnectEmbeddedAccountFeaturesClaim`

| Field | Stripe API Name | Type |
|---|---|---|
| `disableStripeUserAuthentication` | `disableStripeUserAuthentication` | `Boolean` |
| `externalAccountCollection` | `externalAccountCollection` | `Boolean` |

### `v02_ConnectEmbeddedBaseConfigClaim`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `features` | `features` | `List<v02_AdditionalString>` |

### `v02_ConnectEmbeddedFinAccTrxsConfigClaim`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `features` | `features` | `v02_ConnectEmbeddedFinAccTrxsFeatures` |

### `v02_ConnectEmbeddedFinAccTrxsFeatures`

| Field | Stripe API Name | Type |
|---|---|---|
| `cardSpendDisputeManagement` | `cardSpendDisputeManagement` | `Boolean` |

### `v02_ConnectEmbeddedFinAccountConfigClaim`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `features` | `features` | `v02_ConnectEmbeddedFinAccountFeatures` |

### `v02_ConnectEmbeddedFinAccountFeatures`

| Field | Stripe API Name | Type |
|---|---|---|
| `disableStripeUserAuthentication` | `disableStripeUserAuthentication` | `Boolean` |
| `externalAccountCollection` | `externalAccountCollection` | `Boolean` |
| `sendMoney` | `sendMoney` | `Boolean` |
| `transferBalance` | `transferBalance` | `Boolean` |

### `v02_ConnectEmbeddedIssCrdConfigClaim`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `features` | `features` | `v02_ConnectEmbeddedIssuingCardFeatures` |

### `v02_ConnectEmbeddedIssuingCardFeatures`

| Field | Stripe API Name | Type |
|---|---|---|
| `cardManagement` | `cardManagement` | `Boolean` |
| `cardSpendDisputeManagement` | `cardSpendDisputeManagement` | `Boolean` |
| `cardholderManagement` | `cardholderManagement` | `Boolean` |
| `spendControlManagement` | `spendControlManagement` | `Boolean` |

### `v02_ConnectEmbeddedPaymentsConfigClaim`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `features` | `features` | `v02_ConnectEmbeddedPaymentsFeatures` |

### `v02_ConnectEmbeddedPaymentsFeatures`

| Field | Stripe API Name | Type |
|---|---|---|
| `capturePayments` | `capturePayments` | `Boolean` |
| `destinationOnBehalfOfChargeManagement` | `destinationOnBehalfOfChargeManagement` | `Boolean` |
| `disputeManagement` | `disputeManagement` | `Boolean` |
| `refundManagement` | `refundManagement` | `Boolean` |

### `v02_ConnectEmbeddedPayoutsConfig`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `features` | `features` | `v02_ConnectEmbeddedPayoutsFeatures` |

### `v02_ConnectEmbeddedPayoutsFeatures`

| Field | Stripe API Name | Type |
|---|---|---|
| `disableStripeUserAuthentication` | `disableStripeUserAuthentication` | `Boolean` |
| `editPayoutSchedule` | `editPayoutSchedule` | `Boolean` |
| `externalAccountCollection` | `externalAccountCollection` | `Boolean` |
| `instantPayouts` | `instantPayouts` | `Boolean` |
| `standardPayouts` | `standardPayouts` | `Boolean` |

### `v02_CreateAccSessionsReqComponentsAc`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `features` | `features` | `v02_CreateAccSessionsReqComponentsAcc` |

### `v02_CreateAccSessionsReqComponentsAc1`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `features` | `features` | `v02_CreateAccSessionsReqComponentsAcc` |

### `v02_CreateAccSessionsReqComponentsAcc`

| Field | Stripe API Name | Type |
|---|---|---|
| `disableStripeUserAuthentication` | `disableStripeUserAuthentication` | `Boolean` |
| `externalAccountCollection` | `externalAccountCollection` | `Boolean` |

### `v02_CreateAccSessionsReqComponentsBa`

| Field | Stripe API Name | Type |
|---|---|---|
| `disableStripeUserAuthentication` | `disableStripeUserAuthentication` | `Boolean` |
| `editPayoutSchedule` | `editPayoutSchedule` | `Boolean` |
| `externalAccountCollection` | `externalAccountCollection` | `Boolean` |
| `instantPayouts` | `instantPayouts` | `Boolean` |
| `standardPayouts` | `standardPayouts` | `Boolean` |

### `v02_CreateAccSessionsReqComponentsBals`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `features` | `features` | `v02_CreateAccSessionsReqComponentsBa` |

### `v02_CreateAccSessionsReqComponentsDocs`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `features` | `features` | `List<v02_AdditionalString>` |

### `v02_CreateAccSessionsReqComponentsFin`

| Field | Stripe API Name | Type |
|---|---|---|
| `cardSpendDisputeManagement` | `cardSpendDisputeManagement` | `Boolean` |

### `v02_CreateAccSessionsReqComponentsFin1`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `features` | `features` | `v02_CreateAccSessionsReqComponentsFin` |

### `v02_CreateAccSessionsReqComponentsFinAcc`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `features` | `features` | `v02_CreateAccSessionsReqComponentsFin` |

### `v02_CreateAccSessionsReqComponentsIss`

| Field | Stripe API Name | Type |
|---|---|---|
| `cardManagement` | `cardManagement` | `Boolean` |
| `cardSpendDisputeManagement` | `cardSpendDisputeManagement` | `Boolean` |
| `cardholderManagement` | `cardholderManagement` | `Boolean` |
| `disableStripeUserAuthentication` | `disableStripeUserAuthentication` | `Boolean` |
| `spendControlManagement` | `spendControlManagement` | `Boolean` |

### `v02_CreateAccSessionsReqComponentsIss1`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `features` | `features` | `v02_CreateAccSessionsReqComponentsIss` |

### `v02_CreateAccSessionsReqComponentsIssCrd`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `features` | `features` | `v02_CreateAccSessionsReqComponentsIss` |

### `v02_CreateAccSessionsReqComponentsNt`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `features` | `features` | `v02_CreateAccSessionsReqComponentsNtf` |

### `v02_CreateAccSessionsReqComponentsNtf`

| Field | Stripe API Name | Type |
|---|---|---|
| `disableStripeUserAuthentication` | `disableStripeUserAuthentication` | `Boolean` |
| `externalAccountCollection` | `externalAccountCollection` | `Boolean` |

### `v02_CreateAccSessionsReqComponentsP`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `features` | `features` | `v02_CreateAccSessionsReqComponentsPa` |

### `v02_CreateAccSessionsReqComponentsPa`

| Field | Stripe API Name | Type |
|---|---|---|
| `disableStripeUserAuthentication` | `disableStripeUserAuthentication` | `Boolean` |
| `editPayoutSchedule` | `editPayoutSchedule` | `Boolean` |
| `externalAccountCollection` | `externalAccountCollection` | `Boolean` |
| `instantPayouts` | `instantPayouts` | `Boolean` |
| `standardPayouts` | `standardPayouts` | `Boolean` |

### `v02_CreateAccSessionsReqComponentsPa1`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `features` | `features` | `List<v02_AdditionalString>` |

### `v02_CreateAccSessionsReqComponentsPy`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `features` | `features` | `v02_CreateAccSessionsReqComponentsPym` |

### `v02_CreateAccSessionsReqComponentsPy1`

| Field | Stripe API Name | Type |
|---|---|---|
| `capturePayments` | `capturePayments` | `Boolean` |
| `destinationOnBehalfOfChargeManagement` | `destinationOnBehalfOfChargeManagement` | `Boolean` |
| `disputeManagement` | `disputeManagement` | `Boolean` |
| `refundManagement` | `refundManagement` | `Boolean` |

### `v02_CreateAccSessionsReqComponentsPym`

| Field | Stripe API Name | Type |
|---|---|---|
| `capturePayments` | `capturePayments` | `Boolean` |
| `destinationOnBehalfOfChargeManagement` | `destinationOnBehalfOfChargeManagement` | `Boolean` |
| `disputeManagement` | `disputeManagement` | `Boolean` |
| `refundManagement` | `refundManagement` | `Boolean` |

### `v02_CreateAccSessionsReqComponentsPymts`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `features` | `features` | `v02_CreateAccSessionsReqComponentsPy1` |

### `v02_CreateAccSessionsReqComponentsTa`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `features` | `features` | `List<v02_AdditionalString>` |

### `v02_CreateAccSessionsReqComponentsTa1`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `features` | `features` | `List<v02_AdditionalString>` |

### `v02_CreateAccountLinksReqColOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `fields` | `fields` | `String` |
| `futureRequirements` | `futureRequirements` | `String` |

### `v02_CreateAccountSessionsReqComponents`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountManagement` | `accountManagement` | `v02_CreateAccSessionsReqComponentsAc` |
| `accountOnboarding` | `accountOnboarding` | `v02_CreateAccSessionsReqComponentsAc1` |
| `balances` | `balances` | `v02_CreateAccSessionsReqComponentsBals` |
| `documents` | `documents` | `v02_CreateAccSessionsReqComponentsDocs` |
| `financialAccount` | `financialAccount` | `v02_CreateAccSessionsReqComponentsFinAcc` |
| `financialAccountTransactions` | `financialAccountTransactions` | `v02_CreateAccSessionsReqComponentsFin1` |
| `issuingCard` | `issuingCard` | `v02_CreateAccSessionsReqComponentsIssCrd` |
| `issuingCardsList` | `issuingCardsList` | `v02_CreateAccSessionsReqComponentsIss1` |
| `notificationBanner` | `notificationBanner` | `v02_CreateAccSessionsReqComponentsNt` |
| `paymentDetails` | `paymentDetails` | `v02_CreateAccSessionsReqComponentsPy` |
| `payments` | `payments` | `v02_CreateAccSessionsReqComponentsPymts` |
| `payouts` | `payouts` | `v02_CreateAccSessionsReqComponentsP` |
| `payoutsList` | `payoutsList` | `v02_CreateAccSessionsReqComponentsPa1` |
| `taxRegistrations` | `taxRegistrations` | `v02_CreateAccSessionsReqComponentsTa` |
| `taxSettings` | `taxSettings` | `v02_CreateAccSessionsReqComponentsTa1` |

### `v02_CreateAccountsPersonsReqDocsCmpAuth`

| Field | Stripe API Name | Type |
|---|---|---|
| `files` | `files` | `List<String>` |

### `v02_CreateAccountsPersonsReqDocsPassport`

| Field | Stripe API Name | Type |
|---|---|---|
| `files` | `files` | `List<String>` |

### `v02_CreateAccountsPersonsReqDocsVisa`

| Field | Stripe API Name | Type |
|---|---|---|
| `files` | `files` | `List<String>` |

### `v02_CreateAccountsPersonsReqDocuments`

| Field | Stripe API Name | Type |
|---|---|---|
| `companyAuthorization` | `companyAuthorization` | `v02_CreateAccountsPersonsReqDocsCmpAuth` |
| `passport` | `passport` | `v02_CreateAccountsPersonsReqDocsPassport` |
| `visa` | `visa` | `v02_CreateAccountsPersonsReqDocsVisa` |

### `v02_CreateAccountsPersonsReqUsCfpbData`

| Field | Stripe API Name | Type |
|---|---|---|
| `ethnicityDetails` | `ethnicityDetails` | `v02_CreateAccsPersonsReqUsCfpbDtEt` |
| `raceDetails` | `raceDetails` | `v02_CreateAccsPersonsReqUsCfpbDtRa` |
| `selfIdentifiedGender` | `selfIdentifiedGender` | `String` |

### `v02_CreateAccountsPersonsReqVerification`

| Field | Stripe API Name | Type |
|---|---|---|
| `additionalDocument` | `additionalDocument` | `v02_CreateAccsPersonsReqVerifyAdtlDoc` |
| `document` | `document` | `v02_CreateAccountsPersonsReqVerifyDoc` |

### `v02_CreateAccountsPersonsReqVerifyDoc`

| Field | Stripe API Name | Type |
|---|---|---|
| `back` | `back` | `String` |
| `front` | `front` | `String` |

### `v02_CreateAccountsReqBprofileSupportAddr`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_CreateAccountsReqBusinessProfile`

| Field | Stripe API Name | Type |
|---|---|---|
| `annualRevenue` | `annualRevenue` | `v02_CreateAccsReqBusinessProfileAnnu` |
| `estimatedWorkerCount` | `estimatedWorkerCount` | `Integer` |
| `mcc` | `mcc` | `String` |
| `minorityOwnedBusinessDesignation` | `minorityOwnedBusinessDesignation` | `List<String>` |
| `monthlyEstimatedRevenue` | `monthlyEstimatedRevenue` | `v02_CreateAccsReqBusinessProfileMonth` |
| `name` | `name` | `String` |
| `productDescription` | `productDescription` | `String` |
| `supportAddress` | `supportAddress` | `v02_CreateAccountsReqBprofileSupportAddr` |
| `supportEmail` | `supportEmail` | `String` |
| `supportPhone` | `supportPhone` | `String` |
| `supportUrl` | `supportUrl` | `String` |
| `url` | `url` | `String` |

### `v02_CreateAccountsReqCapabilities`

| Field | Stripe API Name | Type |
|---|---|---|
| `acssDebitPayments` | `acssDebitPayments` | `v02_CreateAccsReqCpbtAcssDebitPayments` |
| `affirmPayments` | `affirmPayments` | `v02_CreateAccountsReqCpbtAffirmPayments` |
| `afterpayClearpayPayments` | `afterpayClearpayPayments` | `v02_CreateAccsReqCpbtAftClrpayPayments` |
| `almaPayments` | `almaPayments` | `v02_CreateAccountsReqCpbtAlmaPayments` |
| `amazonPayPayments` | `amazonPayPayments` | `v02_CreateAccsReqCpbtAmazonPayPayments` |
| `auBecsDebitPayments` | `auBecsDebitPayments` | `v02_CreateAccsReqCpbtAuBecsDebitPayments` |
| `bacsDebitPayments` | `bacsDebitPayments` | `v02_CreateAccsReqCpbtBacsDebitPayments` |
| `bancontactPayments` | `bancontactPayments` | `v02_CreateAccsReqCpbtBancontactPayments` |
| `bankTransferPayments` | `bankTransferPayments` | `v02_CreateAccsReqCpbtBankXferPayments` |
| `billiePayments` | `billiePayments` | `v02_CreateAccountsReqCpbtBilliePayments` |
| `blikPayments` | `blikPayments` | `v02_CreateAccountsReqCpbtBlikPayments` |
| `boletoPayments` | `boletoPayments` | `v02_CreateAccountsReqCpbtBoletoPayments` |
| `cardIssuing` | `cardIssuing` | `v02_CreateAccountsReqCpbtCardIssuing` |
| `cardPayments` | `cardPayments` | `v02_CreateAccountsReqCpbtCardPayments` |
| `cartesBancairesPayments` | `cartesBancairesPayments` | `v02_CreateAccountsReqCpbtCBPayments` |
| `cashappPayments` | `cashappPayments` | `v02_CreateAccountsReqCpbtCashappPayments` |
| `epsPayments` | `epsPayments` | `v02_CreateAccountsReqCpbtEpsPayments` |
| `fpxPayments` | `fpxPayments` | `v02_CreateAccountsReqCpbtFpxPayments` |
| `gbBankTransferPayments` | `gbBankTransferPayments` | `v02_CreateAccsReqCpbtGbBankXferPayments` |
| `giropayPayments` | `giropayPayments` | `v02_CreateAccountsReqCpbtGiropayPayments` |
| `grabpayPayments` | `grabpayPayments` | `v02_CreateAccountsReqCpbtGrabpayPayments` |
| `idealPayments` | `idealPayments` | `v02_CreateAccountsReqCpbtIdealPayments` |
| `indiaInternationalPayments` | `indiaInternationalPayments` | `v02_CreateAccsReqCpbtIndiaInterPayments` |
| `jcbPayments` | `jcbPayments` | `v02_CreateAccountsReqCpbtJcbPayments` |
| `jpBankTransferPayments` | `jpBankTransferPayments` | `v02_CreateAccsReqCpbtJpBankXferPayments` |
| `kakaoPayPayments` | `kakaoPayPayments` | `v02_CreateAccsReqCpbtKakaoPayPayments` |
| `klarnaPayments` | `klarnaPayments` | `v02_CreateAccountsReqCpbtKlarnaPayments` |
| `konbiniPayments` | `konbiniPayments` | `v02_CreateAccountsReqCpbtKonbiniPayments` |
| `krCardPayments` | `krCardPayments` | `v02_CreateAccountsReqCpbtKrCardPayments` |
| `legacyPayments` | `legacyPayments` | `v02_CreateAccountsReqCpbtLegacyPayments` |
| `linkPayments` | `linkPayments` | `v02_CreateAccountsReqCpbtLinkPayments` |
| `mobilepayPayments` | `mobilepayPayments` | `v02_CreateAccsReqCpbtMobilepayPayments` |
| `multibancoPayments` | `multibancoPayments` | `v02_CreateAccsReqCpbtMultibancoPayments` |
| `mxBankTransferPayments` | `mxBankTransferPayments` | `v02_CreateAccsReqCpbtMxBankXferPayments` |
| `naverPayPayments` | `naverPayPayments` | `v02_CreateAccsReqCpbtNaverPayPayments` |
| `nzBankAccountBecsDebitPayments` | `nzBankAccountBecsDebitPayments` | `v02_CreateAccsReqCpbtNzBacctBecsDbtPymts` |
| `oxxoPayments` | `oxxoPayments` | `v02_CreateAccountsReqCpbtOxxoPayments` |
| `p24Payments` | `p24Payments` | `v02_CreateAccountsReqCpbtP24Payments` |
| `payByBankPayments` | `payByBankPayments` | `v02_CreateAccsReqCpbtPayByBankPayments` |
| `paycoPayments` | `paycoPayments` | `v02_CreateAccountsReqCpbtPaycoPayments` |
| `paynowPayments` | `paynowPayments` | `v02_CreateAccountsReqCpbtPaynowPayments` |
| `promptpayPayments` | `promptpayPayments` | `v02_CreateAccsReqCpbtPromptpayPayments` |
| `revolutPayPayments` | `revolutPayPayments` | `v02_CreateAccsReqCpbtRevolutPayPayments` |
| `samsungPayPayments` | `samsungPayPayments` | `v02_CreateAccsReqCpbtSamsungPayPayments` |
| `satispayPayments` | `satispayPayments` | `v02_CreateAccsReqCpbtSatispayPayments` |
| `sepaBankTransferPayments` | `sepaBankTransferPayments` | `v02_CreateAccsReqCpbtSepaBankXferPymts` |
| `sepaDebitPayments` | `sepaDebitPayments` | `v02_CreateAccsReqCpbtSepaDebitPayments` |
| `sofortPayments` | `sofortPayments` | `v02_CreateAccountsReqCpbtSofortPayments` |
| `swishPayments` | `swishPayments` | `v02_CreateAccountsReqCpbtSwishPayments` |
| `taxReportingUs1099K` | `taxReportingUs1099K` | `v02_CreateAccsReqCpbtTaxReportingUs1099K` |
| `taxReportingUs1099Misc` | `taxReportingUs1099Misc` | `v02_CreateAccsReqCpbtTaxRptngUs1099Misc` |
| `transfers` | `transfers` | `v02_CreateAccountsReqCapabilitiesXfers` |
| `treasury` | `treasury` | `v02_CreateAccountsReqCapabilitiesTres` |
| `twintPayments` | `twintPayments` | `v02_CreateAccountsReqCpbtTwintPayments` |
| `usBankAccountAchPayments` | `usBankAccountAchPayments` | `v02_CreateAccsReqCpbtUsBacctAchPayments` |
| `usBankTransferPayments` | `usBankTransferPayments` | `v02_CreateAccsReqCpbtUsBankXferPayments` |
| `zipPayments` | `zipPayments` | `v02_CreateAccountsReqCpbtZipPayments` |

### `v02_CreateAccountsReqCapabilitiesTres`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCapabilitiesXfers`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCompany`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_CreateAccountsReqCompanyAddress` |
| `addressKana` | `addressKana` | `v02_CreateAccountsReqCompanyAddressKana` |
| `addressKanji` | `addressKanji` | `v02_CreateAccountsReqCompanyAddressKanji` |
| `directorsProvided` | `directorsProvided` | `Boolean` |
| `directorshipDeclaration` | `directorshipDeclaration` | `v02_CreateAccsReqCmpDirectorshipDecl` |
| `executivesProvided` | `executivesProvided` | `Boolean` |
| `exportLicenseId` | `exportLicenseId` | `String` |
| `exportPurposeCode` | `exportPurposeCode` | `String` |
| `name` | `name` | `String` |
| `nameKana` | `nameKana` | `String` |
| `nameKanji` | `nameKanji` | `String` |
| `ownersProvided` | `ownersProvided` | `Boolean` |
| `ownershipDeclaration` | `ownershipDeclaration` | `v02_CreateAccsReqCmpOwnrshpDeclaration` |
| `ownershipExemptionReason` | `ownershipExemptionReason` | `String` |
| `phone` | `phone` | `String` |
| `registrationDate` | `registrationDate` | `v02_CreateAccountsReqCompanyRegDate` |
| `registrationNumber` | `registrationNumber` | `String` |
| `structure` | `structure` | `String` |
| `taxId` | `taxId` | `String` |
| `taxIdRegistrar` | `taxIdRegistrar` | `String` |
| `vatId` | `vatId` | `String` |
| `verification` | `verification` | `v02_CreateAccountsReqCompanyVerification` |

### `v02_CreateAccountsReqCompanyAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_CreateAccountsReqCompanyAddressKana`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |
| `town` | `town` | `String` |

### `v02_CreateAccountsReqCompanyAddressKanji`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |
| `town` | `town` | `String` |

### `v02_CreateAccountsReqCompanyRegDate`

| Field | Stripe API Name | Type |
|---|---|---|
| `day` | `day` | `Integer` |
| `month` | `month` | `Integer` |
| `year` | `year` | `Integer` |

### `v02_CreateAccountsReqCompanyVerification`

| Field | Stripe API Name | Type |
|---|---|---|
| `document` | `document` | `v02_CreateAccountsReqCompanyVerifyDoc` |

### `v02_CreateAccountsReqCompanyVerifyDoc`

| Field | Stripe API Name | Type |
|---|---|---|
| `back` | `back` | `String` |
| `front` | `front` | `String` |

### `v02_CreateAccountsReqController`

| Field | Stripe API Name | Type |
|---|---|---|
| `fees` | `fees` | `v02_CreateAccountsReqControllerFees` |
| `losses` | `losses` | `v02_CreateAccountsReqControllerLosses` |
| `requirementCollection` | `requirementCollection` | `String` |
| `stripeDashboard` | `stripeDashboard` | `v02_CreateAccsReqControllerStripeDa` |

### `v02_CreateAccountsReqControllerFees`

| Field | Stripe API Name | Type |
|---|---|---|
| `payer` | `payer` | `String` |

### `v02_CreateAccountsReqControllerLosses`

| Field | Stripe API Name | Type |
|---|---|---|
| `payments` | `payments` | `String` |

### `v02_CreateAccountsReqCpbtAffirmPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCpbtAlmaPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCpbtBilliePayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCpbtBlikPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCpbtBoletoPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCpbtCBPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCpbtCardIssuing`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCpbtCardPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCpbtCashappPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCpbtEpsPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCpbtFpxPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCpbtGiropayPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCpbtGrabpayPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCpbtIdealPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCpbtJcbPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCpbtKlarnaPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCpbtKonbiniPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCpbtKrCardPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCpbtLegacyPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCpbtLinkPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCpbtOxxoPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCpbtP24Payments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCpbtPaycoPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCpbtPaynowPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCpbtSofortPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCpbtSwishPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCpbtTwintPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqCpbtZipPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccountsReqDocsCmpMemoAssoc`

| Field | Stripe API Name | Type |
|---|---|---|
| `files` | `files` | `List<String>` |

### `v02_CreateAccountsReqDocsCmpRegVerify`

| Field | Stripe API Name | Type |
|---|---|---|
| `files` | `files` | `List<String>` |

### `v02_CreateAccountsReqDocsCmpTaxIdVerify`

| Field | Stripe API Name | Type |
|---|---|---|
| `files` | `files` | `List<String>` |

### `v02_CreateAccountsReqDocsCompanyLicense`

| Field | Stripe API Name | Type |
|---|---|---|
| `files` | `files` | `List<String>` |

### `v02_CreateAccountsReqDocsCompanyMnstrDcr`

| Field | Stripe API Name | Type |
|---|---|---|
| `files` | `files` | `List<String>` |

### `v02_CreateAccountsReqDocsProofOfReg`

| Field | Stripe API Name | Type |
|---|---|---|
| `files` | `files` | `List<String>` |

### `v02_CreateAccountsReqDocuments`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankAccountOwnershipVerification` | `bankAccountOwnershipVerification` | `v02_CreateAccsReqDocsBacctOwnrshpVerify` |
| `companyLicense` | `companyLicense` | `v02_CreateAccountsReqDocsCompanyLicense` |
| `companyMemorandumOfAssociation` | `companyMemorandumOfAssociation` | `v02_CreateAccountsReqDocsCmpMemoAssoc` |
| `companyMinisterialDecree` | `companyMinisterialDecree` | `v02_CreateAccountsReqDocsCompanyMnstrDcr` |
| `companyRegistrationVerification` | `companyRegistrationVerification` | `v02_CreateAccountsReqDocsCmpRegVerify` |
| `companyTaxIdVerification` | `companyTaxIdVerification` | `v02_CreateAccountsReqDocsCmpTaxIdVerify` |
| `proofOfRegistration` | `proofOfRegistration` | `v02_CreateAccountsReqDocsProofOfReg` |
| `proofOfUltimateBeneficialOwnership` | `proofOfUltimateBeneficialOwnership` | `v02_CreateAccsReqDocsProofOfUltimate` |

### `v02_CreateAccountsReqIndividual`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_CreateAccountsReqIndividualAddress` |
| `addressKana` | `addressKana` | `v02_CreateAccsReqIndividualAddressKana` |
| `addressKanji` | `addressKanji` | `v02_CreateAccsReqIndividualAddressKanji` |
| `dob` | `dob` | `v02_CreateAccountsReqIndividualDob` |
| `email` | `email` | `String` |
| `firstName` | `firstName` | `String` |
| `firstNameKana` | `firstNameKana` | `String` |
| `firstNameKanji` | `firstNameKanji` | `String` |
| `fullNameAliases` | `fullNameAliases` | `List<String>` |
| `gender` | `gender` | `String` |
| `idNumber` | `idNumber` | `String` |
| `idNumberSecondary` | `idNumberSecondary` | `String` |
| `lastName` | `lastName` | `String` |
| `lastNameKana` | `lastNameKana` | `String` |
| `lastNameKanji` | `lastNameKanji` | `String` |
| `maidenName` | `maidenName` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `phone` | `phone` | `String` |
| `politicalExposure` | `politicalExposure` | `String` |
| `registeredAddress` | `registeredAddress` | `v02_CreateAccsReqIndRegisteredAddress` |
| `relationship` | `relationship` | `v02_CreateAccsReqIndividualRelationship` |
| `ssnLast4` | `ssnLast4` | `String` |
| `verification` | `verification` | `v02_CreateAccountsReqIndividualVerify` |

### `v02_CreateAccountsReqIndividualAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_CreateAccountsReqIndividualDob`

| Field | Stripe API Name | Type |
|---|---|---|
| `day` | `day` | `Integer` |
| `month` | `month` | `Integer` |
| `year` | `year` | `Integer` |

### `v02_CreateAccountsReqIndividualVerify`

| Field | Stripe API Name | Type |
|---|---|---|
| `additionalDocument` | `additionalDocument` | `v02_CreateAccsReqIndVerifyAdditionalDoc` |
| `document` | `document` | `v02_CreateAccountsReqIndividualVerifyDoc` |

### `v02_CreateAccountsReqIndividualVerifyDoc`

| Field | Stripe API Name | Type |
|---|---|---|
| `back` | `back` | `String` |
| `front` | `front` | `String` |

### `v02_CreateAccountsReqSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `bacsDebitPayments` | `bacsDebitPayments` | `v02_CreateAccsReqSetsBacsDebitPayments` |
| `branding` | `branding` | `v02_CreateAccountsReqSettingsBranding` |
| `cardIssuing` | `cardIssuing` | `v02_CreateAccountsReqSettingsCardIssuing` |
| `cardPayments` | `cardPayments` | `v02_CreateAccsReqSettingsCardPayments` |
| `invoices` | `invoices` | `v02_CreateAccountsReqSettingsInvoices` |
| `payments` | `payments` | `v02_CreateAccountsReqSettingsPayments` |
| `payouts` | `payouts` | `v02_CreateAccountsReqSettingsPayouts` |
| `treasury` | `treasury` | `v02_CreateAccountsReqSettingsTreasury` |

### `v02_CreateAccountsReqSettingsBranding`

| Field | Stripe API Name | Type |
|---|---|---|
| `icon` | `icon` | `String` |
| `logo` | `logo` | `String` |
| `primaryColor` | `primaryColor` | `String` |
| `secondaryColor` | `secondaryColor` | `String` |

### `v02_CreateAccountsReqSettingsCardIssuing`

| Field | Stripe API Name | Type |
|---|---|---|
| `tosAcceptance` | `tosAcceptance` | `v02_CreateAccsReqSetsCardIssuingTosAccpt` |

### `v02_CreateAccountsReqSettingsInvoices`

| Field | Stripe API Name | Type |
|---|---|---|
| `hostedPaymentMethodSave` | `hostedPaymentMethodSave` | `String` |

### `v02_CreateAccountsReqSettingsPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `statementDescriptor` | `statementDescriptor` | `String` |
| `statementDescriptorKana` | `statementDescriptorKana` | `String` |
| `statementDescriptorKanji` | `statementDescriptorKanji` | `String` |

### `v02_CreateAccountsReqSettingsPayouts`

| Field | Stripe API Name | Type |
|---|---|---|
| `debitNegativeBalances` | `debitNegativeBalances` | `Boolean` |
| `schedule` | `schedule` | `v02_CreateAccountsReqSettingsPayoutsSch` |
| `statementDescriptor` | `statementDescriptor` | `String` |

### `v02_CreateAccountsReqSettingsPayoutsSch`

| Field | Stripe API Name | Type |
|---|---|---|
| `delayDays` | `delayDays` | `v02_CreateAccsReqSetsPayoutsSchDelayDays` |
| `interval` | `interval` | `String` |
| `monthlyAnchor` | `monthlyAnchor` | `Integer` |
| `weeklyAnchor` | `weeklyAnchor` | `String` |

### `v02_CreateAccountsReqSettingsTreasury`

| Field | Stripe API Name | Type |
|---|---|---|
| `tosAcceptance` | `tosAcceptance` | `v02_CreateAccsReqSettingsTresTosAccpt` |

### `v02_CreateAccsPersonsReqAdtlTosAccpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `v02_CreateAccsPersonsReqAdtlTosAccptsAcc` |

### `v02_CreateAccsPersonsReqAdtlTosAccptsAcc`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_date` | `r_date` | `Integer` |
| `ip` | `ip` | `String` |
| `userAgent` | `userAgent` | `String` |

### `v02_CreateAccsPersonsReqUsCfpbDtEt`

| Field | Stripe API Name | Type |
|---|---|---|
| `ethnicity` | `ethnicity` | `List<String>` |
| `ethnicityOther` | `ethnicityOther` | `String` |

### `v02_CreateAccsPersonsReqUsCfpbDtRa`

| Field | Stripe API Name | Type |
|---|---|---|
| `race` | `race` | `List<String>` |
| `raceOther` | `raceOther` | `String` |

### `v02_CreateAccsPersonsReqVerifyAdtlDoc`

| Field | Stripe API Name | Type |
|---|---|---|
| `back` | `back` | `String` |
| `front` | `front` | `String` |

### `v02_CreateAccsReqBusinessProfileAnnu`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `r_currency` | `r_currency` | `String` |
| `fiscalYearEnd` | `fiscalYearEnd` | `String` |

### `v02_CreateAccsReqBusinessProfileMonth`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `r_currency` | `r_currency` | `String` |

### `v02_CreateAccsReqCmpDirectorshipDecl`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_date` | `r_date` | `Integer` |
| `ip` | `ip` | `String` |
| `userAgent` | `userAgent` | `String` |

### `v02_CreateAccsReqCmpOwnrshpDeclaration`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_date` | `r_date` | `Integer` |
| `ip` | `ip` | `String` |
| `userAgent` | `userAgent` | `String` |

### `v02_CreateAccsReqControllerStripeDa`

| Field | Stripe API Name | Type |
|---|---|---|
| `type` | `type` | `String` |

### `v02_CreateAccsReqCpbtAcssDebitPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccsReqCpbtAftClrpayPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccsReqCpbtAmazonPayPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccsReqCpbtAuBecsDebitPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccsReqCpbtBacsDebitPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccsReqCpbtBancontactPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccsReqCpbtBankXferPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccsReqCpbtGbBankXferPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccsReqCpbtIndiaInterPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccsReqCpbtJpBankXferPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccsReqCpbtKakaoPayPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccsReqCpbtMobilepayPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccsReqCpbtMultibancoPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccsReqCpbtMxBankXferPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccsReqCpbtNaverPayPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccsReqCpbtNzBacctBecsDbtPymts`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccsReqCpbtPayByBankPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccsReqCpbtPromptpayPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccsReqCpbtRevolutPayPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccsReqCpbtSamsungPayPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccsReqCpbtSatispayPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccsReqCpbtSepaBankXferPymts`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccsReqCpbtSepaDebitPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccsReqCpbtTaxReportingUs1099K`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccsReqCpbtTaxRptngUs1099Misc`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccsReqCpbtUsBacctAchPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccsReqCpbtUsBankXferPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_CreateAccsReqDocsBacctOwnrshpVerify`

| Field | Stripe API Name | Type |
|---|---|---|
| `files` | `files` | `List<String>` |

### `v02_CreateAccsReqDocsProofOfUltimate`

| Field | Stripe API Name | Type |
|---|---|---|
| `files` | `files` | `List<String>` |

### `v02_CreateAccsReqIndRegisteredAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_CreateAccsReqIndVerifyAdditionalDoc`

| Field | Stripe API Name | Type |
|---|---|---|
| `back` | `back` | `String` |
| `front` | `front` | `String` |

### `v02_CreateAccsReqIndividualAddressKana`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |
| `town` | `town` | `String` |

### `v02_CreateAccsReqIndividualAddressKanji`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |
| `town` | `town` | `String` |

### `v02_CreateAccsReqIndividualRelationship`

| Field | Stripe API Name | Type |
|---|---|---|
| `director` | `director` | `Boolean` |
| `executive` | `executive` | `Boolean` |
| `owner` | `owner` | `Boolean` |
| `percentOwnership` | `percentOwnership` | `Double` |
| `title` | `title` | `String` |

### `v02_CreateAccsReqSetsBacsDebitPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayName` | `displayName` | `String` |

### `v02_CreateAccsReqSetsCardIssuingTosAccpt`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_date` | `r_date` | `Integer` |
| `ip` | `ip` | `String` |
| `userAgent` | `userAgent` | `String` |

### `v02_CreateAccsReqSetsCardPymtsDeclineOn`

| Field | Stripe API Name | Type |
|---|---|---|
| `avsFailure` | `avsFailure` | `Boolean` |
| `cvcFailure` | `cvcFailure` | `Boolean` |

### `v02_CreateAccsReqSetsPayoutsSchDelayDays`

| Field | Stripe API Name | Type |
|---|---|---|
| `stringField` | `stringField` | `String` |
| `integerField` | `integerField` | `Integer` |

### `v02_CreateAccsReqSettingsCardPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `declineOn` | `declineOn` | `v02_CreateAccsReqSetsCardPymtsDeclineOn` |
| `statementDescriptorPrefix` | `statementDescriptorPrefix` | `String` |
| `statementDescriptorPrefixKana` | `statementDescriptorPrefixKana` | `String` |
| `statementDescriptorPrefixKanji` | `statementDescriptorPrefixKanji` | `String` |

### `v02_CreateAccsReqSettingsTresTosAccpt`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_date` | `r_date` | `Integer` |
| `ip` | `ip` | `String` |
| `userAgent` | `userAgent` | `String` |

### `v02_CreateBpSessReqFlowData`

| Field | Stripe API Name | Type |
|---|---|---|
| `afterCompletion` | `afterCompletion` | `v02_CreateBpSessReqFlowDataAftCmpl` |
| `subscriptionCancel` | `subscriptionCancel` | `v02_CreateBpSessReqFlowDataSubCancel` |
| `subscriptionUpdate` | `subscriptionUpdate` | `v02_CreateBpSessReqFlowDataSubUpdate` |
| `subscriptionUpdateConfirm` | `subscriptionUpdateConfirm` | `v02_CreateBpSessReqFlowDtSubUpdate` |
| `type` | `type` | `String` |

### `v02_CreateBpSessReqFlowDataAftCmpl`

| Field | Stripe API Name | Type |
|---|---|---|
| `hostedConfirmation` | `hostedConfirmation` | `v02_CreateBpSessReqFlowDtAftCmplHstCfrm` |
| `redirect` | `redirect` | `v02_CreateBpSessReqFlowDataAftCmplRedir` |
| `type` | `type` | `String` |

### `v02_CreateBpSessReqFlowDataAftCmplRedir`

| Field | Stripe API Name | Type |
|---|---|---|
| `returnUrl` | `returnUrl` | `String` |

### `v02_CreateBpSessReqFlowDataSubCancel`

| Field | Stripe API Name | Type |
|---|---|---|
| `retention` | `retention` | `v02_CreateBpSessReqFlowDtSubCancel` |
| `subscription` | `subscription` | `String` |

### `v02_CreateBpSessReqFlowDataSubUpdate`

| Field | Stripe API Name | Type |
|---|---|---|
| `subscription` | `subscription` | `String` |

### `v02_CreateBpSessReqFlowDtAftCmplHstCfrm`

| Field | Stripe API Name | Type |
|---|---|---|
| `customMessage` | `customMessage` | `String` |

### `v02_CreateBpSessReqFlowDtSubCancel`

| Field | Stripe API Name | Type |
|---|---|---|
| `couponOffer` | `couponOffer` | `v02_CreateBpSessReqFlowDtSubCancelR` |
| `type` | `type` | `String` |

### `v02_CreateBpSessReqFlowDtSubCancelR`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |

### `v02_CreateBpSessReqFlowDtSubUpdate`

| Field | Stripe API Name | Type |
|---|---|---|
| `discounts` | `discounts` | `List<v02_CreateBpSessReqFlowDtSubUpdate>` |
| `items` | `items` | `List<v02_CreateBpSessReqFlowDtSubUpdate1>` |
| `subscription` | `subscription` | `String` |

### `v02_CreateBpSessReqFlowDtSubUpdate1`

| Field | Stripe API Name | Type |
|---|---|---|
| `id` | `id` | `String` |
| `price` | `price` | `String` |
| `quantity` | `quantity` | `Integer` |

### `v02_CreateCOSsReqAfterExpRecovery`

| Field | Stripe API Name | Type |
|---|---|---|
| `allowPromotionCodes` | `allowPromotionCodes` | `Boolean` |
| `enabled` | `enabled` | `Boolean` |

### `v02_CreateCOSsReqAutomaticTax`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `liability` | `liability` | `v02_CreateCOSsReqAutomaticTaxLiability` |

### `v02_CreateCOSsReqAutomaticTaxLiability`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_CreateCOSsReqCFieldDropdownOption`

| Field | Stripe API Name | Type |
|---|---|---|
| `label` | `label` | `String` |
| `value` | `value` | `String` |

### `v02_CreateCOSsReqConsentColPmReuse`

| Field | Stripe API Name | Type |
|---|---|---|
| `position` | `position` | `String` |

### `v02_CreateCOSsReqConsentCollection`

| Field | Stripe API Name | Type |
|---|---|---|
| `paymentMethodReuseAgreement` | `paymentMethodReuseAgreement` | `v02_CreateCOSsReqConsentColPmReuse` |
| `promotions` | `promotions` | `String` |
| `termsOfService` | `termsOfService` | `String` |

### `v02_CreateCOSsReqCustomFieldDropdown`

| Field | Stripe API Name | Type |
|---|---|---|
| `defaultValue` | `defaultValue` | `String` |
| `options` | `options` | `List<v02_CreateCOSsReqCFieldDropdownOption>` |

### `v02_CreateCOSsReqCustomFieldLabel`

| Field | Stripe API Name | Type |
|---|---|---|
| `custom` | `custom` | `String` |
| `type` | `type` | `String` |

### `v02_CreateCOSsReqCustomFieldNumeric`

| Field | Stripe API Name | Type |
|---|---|---|
| `defaultValue` | `defaultValue` | `String` |
| `maximumLength` | `maximumLength` | `Integer` |
| `minimumLength` | `minimumLength` | `Integer` |

### `v02_CreateCOSsReqCustomFieldText`

| Field | Stripe API Name | Type |
|---|---|---|
| `defaultValue` | `defaultValue` | `String` |
| `maximumLength` | `maximumLength` | `Integer` |
| `minimumLength` | `minimumLength` | `Integer` |

### `v02_CreateCOSsReqCustomTextAfterSubmit`

| Field | Stripe API Name | Type |
|---|---|---|
| `message` | `message` | `String` |

### `v02_CreateCOSsReqCustomTextShpAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `message` | `message` | `String` |

### `v02_CreateCOSsReqCustomTextSubmit`

| Field | Stripe API Name | Type |
|---|---|---|
| `message` | `message` | `String` |

### `v02_CreateCOSsReqCustomTextTermsOfS`

| Field | Stripe API Name | Type |
|---|---|---|
| `message` | `message` | `String` |

### `v02_CreateCOSsReqCustomerUpdate`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `String` |
| `name` | `name` | `String` |
| `shipping` | `shipping` | `String` |

### `v02_CreateCOSsReqInvCrtnInvDataCField`

| Field | Stripe API Name | Type |
|---|---|---|
| `name` | `name` | `String` |
| `value` | `value` | `String` |

### `v02_CreateCOSsReqInvCrtnInvDataIssuer`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_CreateCOSsReqInvCrtnInvDataRndrOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountTaxDisplay` | `amountTaxDisplay` | `String` |

### `v02_CreateCOSsReqInvCrtnInvoiceData`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountTaxIds` | `accountTaxIds` | `List<String>` |
| `customFields` | `customFields` | `List<v02_CreateCOSsReqInvCrtnInvDataCField>` |
| `description` | `description` | `String` |
| `footer` | `footer` | `String` |
| `issuer` | `issuer` | `v02_CreateCOSsReqInvCrtnInvDataIssuer` |
| `metadata` | `metadata` | `v02_Metadata` |
| `renderingOptions` | `renderingOptions` | `v02_CreateCOSsReqInvCrtnInvDataRndrOpts` |

### `v02_CreateCOSsReqLineItemAdjustableQuan`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `maximum` | `maximum` | `Integer` |
| `minimum` | `minimum` | `Integer` |

### `v02_CreateCOSsReqLineItemPdata`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `product` | `product` | `String` |
| `productData` | `productData` | `v02_CreateCOSsReqLineItemPdataProdData` |
| `recurring` | `recurring` | `v02_CreateCOSsReqLineItemPdataRecurring` |
| `taxBehavior` | `taxBehavior` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_CreateCOSsReqLineItemPdataProdData`

| Field | Stripe API Name | Type |
|---|---|---|
| `description` | `description` | `String` |
| `images` | `images` | `List<String>` |
| `metadata` | `metadata` | `v02_Metadata` |
| `name` | `name` | `String` |
| `taxCode` | `taxCode` | `String` |

### `v02_CreateCOSsReqLineItemPdataRecurring`

| Field | Stripe API Name | Type |
|---|---|---|
| `interval` | `interval` | `String` |
| `intervalCount` | `intervalCount` | `Integer` |

### `v02_CreateCOSsReqOptalItemAdjustableQuan`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `maximum` | `maximum` | `Integer` |
| `minimum` | `minimum` | `Integer` |

### `v02_CreateCOSsReqOptionalItem`

| Field | Stripe API Name | Type |
|---|---|---|
| `adjustableQuantity` | `adjustableQuantity` | `v02_CreateCOSsReqOptalItemAdjustableQuan` |
| `price` | `price` | `String` |
| `quantity` | `quantity` | `Integer` |

### `v02_CreateCOSsReqPMOAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `mandateOptions` | `mandateOptions` | `v02_CreateCOSsReqPMOAcssDebitManOpts` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_CreateCOSsReqPMOAcssDebitManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `customMandateUrl` | `customMandateUrl` | `String` |
| `defaultFor` | `defaultFor` | `List<String>` |
| `intervalDescription` | `intervalDescription` | `String` |
| `paymentSchedule` | `paymentSchedule` | `String` |
| `transactionType` | `transactionType` | `String` |

### `v02_CreateCOSsReqPMOAftClrpay`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreateCOSsReqPMOAmazonPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreateCOSsReqPMOAuBecsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |

### `v02_CreateCOSsReqPMOBacsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_CreateCOSsReqPMOBacsDebitManOpts` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |

### `v02_CreateCOSsReqPMOBacsDebitManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `referencePrefix` | `referencePrefix` | `String` |

### `v02_CreateCOSsReqPMOBancontact`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreateCOSsReqPMOCardInstallments`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |

### `v02_CreateCOSsReqPMOCardRestrictions`

| Field | Stripe API Name | Type |
|---|---|---|
| `brandsBlocked` | `brandsBlocked` | `List<String>` |

### `v02_CreateCOSsReqPMOCustbalBankXfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `euBankTransfer` | `euBankTransfer` | `v02_CreateCOSsReqPMOCustbalEuXfer` |
| `requestedAddressTypes` | `requestedAddressTypes` | `List<String>` |
| `type` | `type` | `String` |

### `v02_CreateCOSsReqPMOCustbalEuXfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |

### `v02_CreateCOSsReqPMOMobilepay`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreateCOSsReqPMOMultibanco`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreateCOSsReqPMORevolutPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreateCOSsReqPMOSamsungPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |

### `v02_CreateCOSsReqPMOSepaDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_CreateCOSsReqPMOSepaDebitManOpts` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |

### `v02_CreateCOSsReqPMOSepaDebitManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `referencePrefix` | `referencePrefix` | `String` |

### `v02_CreateCOSsReqPMOUsBankAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `financialConnections` | `financialConnections` | `v02_CreateCOSsReqPMOUsBankAccountFinConn` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_CreateCOSsReqPMOUsBankAccountFinConn`

| Field | Stripe API Name | Type |
|---|---|---|
| `permissions` | `permissions` | `List<String>` |
| `prefetch` | `prefetch` | `List<String>` |

### `v02_CreateCOSsReqPMOWechatPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `appId` | `appId` | `String` |
| `client` | `client` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreateCOSsReqPaymentMethodData`

| Field | Stripe API Name | Type |
|---|---|---|
| `allowRedisplay` | `allowRedisplay` | `String` |

### `v02_CreateCOSsReqPiDataShipping`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_CreateCOSsReqPiDataShippingAddress` |
| `carrier` | `carrier` | `String` |
| `name` | `name` | `String` |
| `phone` | `phone` | `String` |
| `trackingNumber` | `trackingNumber` | `String` |

### `v02_CreateCOSsReqPiDataShippingAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_CreateCOSsReqPiDataXferData`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `destination` | `destination` | `String` |

### `v02_CreateCOSsReqShippingOption`

| Field | Stripe API Name | Type |
|---|---|---|
| `shippingRate` | `shippingRate` | `String` |
| `shippingRateData` | `shippingRateData` | `v02_CreateCOSsReqShippingOptionRate` |

### `v02_CreateCOSsReqShippingOptionRate`

| Field | Stripe API Name | Type |
|---|---|---|
| `deliveryEstimate` | `deliveryEstimate` | `v02_CreateCOSsReqShpOptionRateDlvEst` |
| `displayName` | `displayName` | `String` |
| `fixedAmount` | `fixedAmount` | `v02_CreateCOSsReqShpOptionRateFxdAmt` |
| `metadata` | `metadata` | `v02_Metadata` |
| `taxBehavior` | `taxBehavior` | `String` |
| `taxCode` | `taxCode` | `String` |
| `type` | `type` | `String` |

### `v02_CreateCOSsReqShpOptRateFxdAmtCOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `taxBehavior` | `taxBehavior` | `String` |

### `v02_CreateCOSsReqShpOptionRateDlvEst`

| Field | Stripe API Name | Type |
|---|---|---|
| `maximum` | `maximum` | `v02_CreateCOSsReqShpOptionRateDlvEstMax` |
| `minimum` | `minimum` | `v02_CreateCOSsReqShpOptionRateDlvEstMin` |

### `v02_CreateCOSsReqShpOptionRateDlvEstMax`

| Field | Stripe API Name | Type |
|---|---|---|
| `unit` | `unit` | `String` |
| `value` | `value` | `Integer` |

### `v02_CreateCOSsReqShpOptionRateDlvEstMin`

| Field | Stripe API Name | Type |
|---|---|---|
| `unit` | `unit` | `String` |
| `value` | `value` | `Integer` |

### `v02_CreateCOSsReqShpOptionRateFxdAmt`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `r_currency` | `r_currency` | `String` |
| `currencyOptions` | `currencyOptions` | `List<v02_AdtlCreateCOSsReqShpOptRateFxdAmtCOp>` |

### `v02_CreateCOSsReqSubDataInvSetsIssuer`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_CreateCOSsReqSubDataInvoiceSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `issuer` | `issuer` | `v02_CreateCOSsReqSubDataInvSetsIssuer` |

### `v02_CreateCOSsReqSubDataTrialSetsEndBhvr`

| Field | Stripe API Name | Type |
|---|---|---|
| `missingPaymentMethod` | `missingPaymentMethod` | `String` |

### `v02_CreateCOSsReqSubDataTrialSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `endBehavior` | `endBehavior` | `v02_CreateCOSsReqSubDataTrialSetsEndBhvr` |

### `v02_CreateCOSsReqSubDataXferData`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountPercent` | `amountPercent` | `Double` |
| `destination` | `destination` | `String` |

### `v02_CreateCOSsReqWalletOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `link` | `link` | `v02_CreateCOSsReqWalletOptionsLink` |

### `v02_CreateCOSsReqWalletOptionsLink`

| Field | Stripe API Name | Type |
|---|---|---|
| `display` | `display` | `String` |

### `v02_CreateChargesReqDestination`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `amount` | `amount` | `Integer` |

### `v02_CreateChargesReqShipping`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_CreateChargesReqShippingAddress` |
| `carrier` | `carrier` | `String` |
| `name` | `name` | `String` |
| `phone` | `phone` | `String` |
| `trackingNumber` | `trackingNumber` | `String` |

### `v02_CreateChargesReqShippingAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_CreateChargesReqTransferData`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `destination` | `destination` | `String` |

### `v02_CreateCheckoutSessionsReqAfterExp`

| Field | Stripe API Name | Type |
|---|---|---|
| `recovery` | `recovery` | `v02_CreateCOSsReqAfterExpRecovery` |

### `v02_CreateCheckoutSessionsReqCustomField`

| Field | Stripe API Name | Type |
|---|---|---|
| `dropdown` | `dropdown` | `v02_CreateCOSsReqCustomFieldDropdown` |
| `key` | `key` | `String` |
| `label` | `label` | `v02_CreateCOSsReqCustomFieldLabel` |
| `numeric` | `numeric` | `v02_CreateCOSsReqCustomFieldNumeric` |
| `optional` | `optional` | `Boolean` |
| `text` | `text` | `v02_CreateCOSsReqCustomFieldText` |
| `type` | `type` | `String` |

### `v02_CreateCheckoutSessionsReqCustomText`

| Field | Stripe API Name | Type |
|---|---|---|
| `afterSubmit` | `afterSubmit` | `v02_CreateCOSsReqCustomTextAfterSubmit` |
| `shippingAddress` | `shippingAddress` | `v02_CreateCOSsReqCustomTextShpAddress` |
| `submit` | `submit` | `v02_CreateCOSsReqCustomTextSubmit` |
| `termsOfServiceAcceptance` | `termsOfServiceAcceptance` | `v02_CreateCOSsReqCustomTextTermsOfS` |

### `v02_CreateCheckoutSessionsReqDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_CreateCheckoutSessionsReqInvCrtn`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `invoiceData` | `invoiceData` | `v02_CreateCOSsReqInvCrtnInvoiceData` |

### `v02_CreateCheckoutSessionsReqLineItem`

| Field | Stripe API Name | Type |
|---|---|---|
| `adjustableQuantity` | `adjustableQuantity` | `v02_CreateCOSsReqLineItemAdjustableQuan` |
| `dynamicTaxRates` | `dynamicTaxRates` | `List<String>` |
| `price` | `price` | `String` |
| `priceData` | `priceData` | `v02_CreateCOSsReqLineItemPdata` |
| `quantity` | `quantity` | `Integer` |
| `taxRates` | `taxRates` | `List<String>` |

### `v02_CreateCheckoutSessionsReqPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `acssDebit` | `acssDebit` | `v02_CreateCOSsReqPMOAcssDebit` |
| `affirm` | `affirm` | `v02_CreateCheckoutSessionsReqPMOAffirm` |
| `afterpayClearpay` | `afterpayClearpay` | `v02_CreateCOSsReqPMOAftClrpay` |
| `alipay` | `alipay` | `v02_CreateCheckoutSessionsReqPMOAlipay` |
| `amazonPay` | `amazonPay` | `v02_CreateCOSsReqPMOAmazonPay` |
| `auBecsDebit` | `auBecsDebit` | `v02_CreateCOSsReqPMOAuBecsDebit` |
| `bacsDebit` | `bacsDebit` | `v02_CreateCOSsReqPMOBacsDebit` |
| `bancontact` | `bancontact` | `v02_CreateCOSsReqPMOBancontact` |
| `boleto` | `boleto` | `v02_CreateCheckoutSessionsReqPMOBoleto` |
| `card` | `card` | `v02_CreateCheckoutSessionsReqPMOCard` |
| `cashapp` | `cashapp` | `v02_CreateCheckoutSessionsReqPMOCashapp` |
| `customerBalance` | `customerBalance` | `v02_CreateCheckoutSessionsReqPMOCustbal` |
| `eps` | `eps` | `v02_CreateCheckoutSessionsReqPMOEps` |
| `fpx` | `fpx` | `v02_CreateCheckoutSessionsReqPMOFpx` |
| `giropay` | `giropay` | `v02_CreateCheckoutSessionsReqPMOGiropay` |
| `grabpay` | `grabpay` | `v02_CreateCheckoutSessionsReqPMOGrabpay` |
| `ideal` | `ideal` | `v02_CreateCheckoutSessionsReqPMOIdeal` |
| `kakaoPay` | `kakaoPay` | `v02_CreateCheckoutSessionsReqPMOKakaoPay` |
| `klarna` | `klarna` | `v02_CreateCheckoutSessionsReqPMOKlarna` |
| `konbini` | `konbini` | `v02_CreateCheckoutSessionsReqPMOKonbini` |
| `krCard` | `krCard` | `v02_CreateCheckoutSessionsReqPMOKrCard` |
| `link` | `link` | `v02_CreateCheckoutSessionsReqPMOLink` |
| `mobilepay` | `mobilepay` | `v02_CreateCOSsReqPMOMobilepay` |
| `multibanco` | `multibanco` | `v02_CreateCOSsReqPMOMultibanco` |
| `naverPay` | `naverPay` | `v02_CreateCheckoutSessionsReqPMONaverPay` |
| `oxxo` | `oxxo` | `v02_CreateCheckoutSessionsReqPMOOxxo` |
| `p24` | `p24` | `v02_CreateCheckoutSessionsReqPMOP24` |
| `payByBank` | `payByBank` | `List<v02_AdditionalString>` |
| `payco` | `payco` | `v02_CreateCheckoutSessionsReqPMOPayco` |
| `paynow` | `paynow` | `v02_CreateCheckoutSessionsReqPMOPaynow` |
| `paypal` | `paypal` | `v02_CreateCheckoutSessionsReqPMOPaypal` |
| `pix` | `pix` | `v02_CreateCheckoutSessionsReqPMOPix` |
| `revolutPay` | `revolutPay` | `v02_CreateCOSsReqPMORevolutPay` |
| `samsungPay` | `samsungPay` | `v02_CreateCOSsReqPMOSamsungPay` |
| `sepaDebit` | `sepaDebit` | `v02_CreateCOSsReqPMOSepaDebit` |
| `sofort` | `sofort` | `v02_CreateCheckoutSessionsReqPMOSofort` |
| `swish` | `swish` | `v02_CreateCheckoutSessionsReqPMOSwish` |
| `usBankAccount` | `usBankAccount` | `v02_CreateCOSsReqPMOUsBankAccount` |
| `wechatPay` | `wechatPay` | `v02_CreateCOSsReqPMOWechatPay` |

### `v02_CreateCheckoutSessionsReqPMOAffirm`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreateCheckoutSessionsReqPMOAlipay`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreateCheckoutSessionsReqPMOBoleto`

| Field | Stripe API Name | Type |
|---|---|---|
| `expiresAfterDays` | `expiresAfterDays` | `Integer` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreateCheckoutSessionsReqPMOCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `installments` | `installments` | `v02_CreateCOSsReqPMOCardInstallments` |
| `requestExtendedAuthorization` | `requestExtendedAuthorization` | `String` |
| `requestIncrementalAuthorization` | `requestIncrementalAuthorization` | `String` |
| `requestMulticapture` | `requestMulticapture` | `String` |
| `requestOvercapture` | `requestOvercapture` | `String` |
| `requestThreeDSecure` | `requestThreeDSecure` | `String` |
| `restrictions` | `restrictions` | `v02_CreateCOSsReqPMOCardRestrictions` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `statementDescriptorSuffixKana` | `statementDescriptorSuffixKana` | `String` |
| `statementDescriptorSuffixKanji` | `statementDescriptorSuffixKanji` | `String` |

### `v02_CreateCheckoutSessionsReqPMOCashapp`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreateCheckoutSessionsReqPMOCustbal`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankTransfer` | `bankTransfer` | `v02_CreateCOSsReqPMOCustbalBankXfer` |
| `fundingType` | `fundingType` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreateCheckoutSessionsReqPMOEps`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreateCheckoutSessionsReqPMOFpx`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreateCheckoutSessionsReqPMOGiropay`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreateCheckoutSessionsReqPMOGrabpay`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreateCheckoutSessionsReqPMOIdeal`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreateCheckoutSessionsReqPMOKakaoPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreateCheckoutSessionsReqPMOKlarna`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreateCheckoutSessionsReqPMOKonbini`

| Field | Stripe API Name | Type |
|---|---|---|
| `expiresAfterDays` | `expiresAfterDays` | `Integer` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreateCheckoutSessionsReqPMOKrCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreateCheckoutSessionsReqPMOLink`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreateCheckoutSessionsReqPMONaverPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreateCheckoutSessionsReqPMOOxxo`

| Field | Stripe API Name | Type |
|---|---|---|
| `expiresAfterDays` | `expiresAfterDays` | `Integer` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreateCheckoutSessionsReqPMOP24`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `tosShownAndAccepted` | `tosShownAndAccepted` | `Boolean` |

### `v02_CreateCheckoutSessionsReqPMOPayco`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |

### `v02_CreateCheckoutSessionsReqPMOPaynow`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreateCheckoutSessionsReqPMOPaypal`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `preferredLocale` | `preferredLocale` | `String` |
| `reference` | `reference` | `String` |
| `riskCorrelationId` | `riskCorrelationId` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreateCheckoutSessionsReqPMOPix`

| Field | Stripe API Name | Type |
|---|---|---|
| `expiresAfterSeconds` | `expiresAfterSeconds` | `Integer` |

### `v02_CreateCheckoutSessionsReqPMOSofort`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreateCheckoutSessionsReqPMOSwish`

| Field | Stripe API Name | Type |
|---|---|---|
| `reference` | `reference` | `String` |

### `v02_CreateCheckoutSessionsReqPiData`

| Field | Stripe API Name | Type |
|---|---|---|
| `applicationFeeAmount` | `applicationFeeAmount` | `Integer` |
| `captureMethod` | `captureMethod` | `String` |
| `description` | `description` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `onBehalfOf` | `onBehalfOf` | `String` |
| `receiptEmail` | `receiptEmail` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `shipping` | `shipping` | `v02_CreateCOSsReqPiDataShipping` |
| `statementDescriptor` | `statementDescriptor` | `String` |
| `statementDescriptorSuffix` | `statementDescriptorSuffix` | `String` |
| `transferData` | `transferData` | `v02_CreateCOSsReqPiDataXferData` |
| `transferGroup` | `transferGroup` | `String` |

### `v02_CreateCheckoutSessionsReqSavedPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `allowRedisplayFilters` | `allowRedisplayFilters` | `List<String>` |
| `paymentMethodSave` | `paymentMethodSave` | `String` |

### `v02_CreateCheckoutSessionsReqSiData`

| Field | Stripe API Name | Type |
|---|---|---|
| `description` | `description` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `onBehalfOf` | `onBehalfOf` | `String` |

### `v02_CreateCheckoutSessionsReqSubData`

| Field | Stripe API Name | Type |
|---|---|---|
| `applicationFeePercent` | `applicationFeePercent` | `Double` |
| `billingCycleAnchor` | `billingCycleAnchor` | `Integer` |
| `defaultTaxRates` | `defaultTaxRates` | `List<String>` |
| `description` | `description` | `String` |
| `invoiceSettings` | `invoiceSettings` | `v02_CreateCOSsReqSubDataInvoiceSettings` |
| `metadata` | `metadata` | `v02_Metadata` |
| `onBehalfOf` | `onBehalfOf` | `String` |
| `prorationBehavior` | `prorationBehavior` | `String` |
| `transferData` | `transferData` | `v02_CreateCOSsReqSubDataXferData` |
| `trialEnd` | `trialEnd` | `Integer` |
| `trialPeriodDays` | `trialPeriodDays` | `Integer` |
| `trialSettings` | `trialSettings` | `v02_CreateCOSsReqSubDataTrialSettings` |

### `v02_CreateCouponsReqCurrencyOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountOff` | `amountOff` | `Integer` |

### `v02_CreateCreditNotesReqLine`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `description` | `description` | `String` |
| `invoiceLineItem` | `invoiceLineItem` | `String` |
| `quantity` | `quantity` | `Integer` |
| `taxAmounts` | `taxAmounts` | `List<v02_CreateCreditNotesReqLineTaxAmount>` |
| `taxRates` | `taxRates` | `List<String>` |
| `type` | `type` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_CreateCreditNotesReqLineTaxAmount`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `taxRate` | `taxRate` | `String` |
| `taxableAmount` | `taxableAmount` | `Integer` |

### `v02_CreateCreditNotesReqRefund`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountRefunded` | `amountRefunded` | `Integer` |
| `refund` | `refund` | `String` |

### `v02_CreateCreditNotesReqShippingCost`

| Field | Stripe API Name | Type |
|---|---|---|
| `shippingRate` | `shippingRate` | `String` |

### `v02_CreateCusSessionsReqComponentsBu`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |

### `v02_CreateCusSessionsReqComponentsPr`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |

### `v02_CreateCusSessionsReqComponentsPy`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `features` | `features` | `v02_CreateCusSessionsReqComponentsPym` |

### `v02_CreateCusSessionsReqComponentsPym`

| Field | Stripe API Name | Type |
|---|---|---|
| `paymentMethodAllowRedisplayFilters` | `paymentMethodAllowRedisplayFilters` | `List<String>` |
| `paymentMethodRedisplay` | `paymentMethodRedisplay` | `String` |
| `paymentMethodRedisplayLimit` | `paymentMethodRedisplayLimit` | `Integer` |
| `paymentMethodRemove` | `paymentMethodRemove` | `String` |
| `paymentMethodSave` | `paymentMethodSave` | `String` |
| `paymentMethodSaveUsage` | `paymentMethodSaveUsage` | `String` |

### `v02_CreateCussReqInvoiceSettingsCField`

| Field | Stripe API Name | Type |
|---|---|---|
| `name` | `name` | `String` |
| `value` | `value` | `String` |

### `v02_CreateCussReqInvoiceSettingsRndrOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountTaxDisplay` | `amountTaxDisplay` | `String` |
| `template` | `template` | `String` |

### `v02_CreateCustomerSessionsReqComponents`

| Field | Stripe API Name | Type |
|---|---|---|
| `buyButton` | `buyButton` | `v02_CreateCusSessionsReqComponentsBu` |
| `paymentElement` | `paymentElement` | `v02_CreateCusSessionsReqComponentsPy` |
| `pricingTable` | `pricingTable` | `v02_CreateCusSessionsReqComponentsPr` |

### `v02_CreateCustomersReqCBalSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `reconciliationMode` | `reconciliationMode` | `String` |

### `v02_CreateCustomersReqCashBalance`

| Field | Stripe API Name | Type |
|---|---|---|
| `settings` | `settings` | `v02_CreateCustomersReqCBalSettings` |

### `v02_CreateCustomersReqInvoiceSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `customFields` | `customFields` | `List<v02_CreateCussReqInvoiceSettingsCField>` |
| `defaultPaymentMethod` | `defaultPaymentMethod` | `String` |
| `footer` | `footer` | `String` |
| `renderingOptions` | `renderingOptions` | `v02_CreateCussReqInvoiceSettingsRndrOpts` |

### `v02_CreateCustomersReqShipping`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_CreateCustomersReqShippingAddress` |
| `name` | `name` | `String` |
| `phone` | `phone` | `String` |

### `v02_CreateCustomersReqShippingAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_CreateCustomersReqTax`

| Field | Stripe API Name | Type |
|---|---|---|
| `ipAddress` | `ipAddress` | `String` |
| `validateLocation` | `validateLocation` | `String` |

### `v02_CreateCustomersReqTaxIdData`

| Field | Stripe API Name | Type |
|---|---|---|
| `type` | `type` | `String` |
| `value` | `value` | `String` |

### `v02_CreateInvoiceitemsReqDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_CreateInvoiceitemsReqPriceData`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `product` | `product` | `String` |
| `taxBehavior` | `taxBehavior` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_CreateInvoiceitemsReqPricing`

| Field | Stripe API Name | Type |
|---|---|---|
| `price` | `price` | `String` |

### `v02_CreateInvoicesReqAutomaticTax`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `liability` | `liability` | `v02_CreateInvsReqAutomaticTaxLiability` |

### `v02_CreateInvoicesReqCustomField`

| Field | Stripe API Name | Type |
|---|---|---|
| `name` | `name` | `String` |
| `value` | `value` | `String` |

### `v02_CreateInvoicesReqDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_CreateInvoicesReqFromInvoice`

| Field | Stripe API Name | Type |
|---|---|---|
| `action` | `action` | `String` |
| `invoice` | `invoice` | `String` |

### `v02_CreateInvoicesReqIssuer`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_CreateInvoicesReqPaymentSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `defaultMandate` | `defaultMandate` | `String` |
| `paymentMethodOptions` | `paymentMethodOptions` | `v02_CreateInvoicesReqPaymentSettingsPMO` |
| `paymentMethodTypes` | `paymentMethodTypes` | `List<String>` |

### `v02_CreateInvoicesReqPaymentSettingsPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `acssDebit` | `acssDebit` | `v02_CreateInvoicesReqPsetsPMOAcssDebit` |
| `bancontact` | `bancontact` | `v02_CreateInvoicesReqPsetsPMOBancontact` |
| `card` | `card` | `v02_CreateInvoicesReqPsetsPMOCard` |
| `customerBalance` | `customerBalance` | `v02_CreateInvoicesReqPsetsPMOCustbal` |
| `konbini` | `konbini` | `List<v02_AdditionalString>` |
| `sepaDebit` | `sepaDebit` | `List<v02_AdditionalString>` |
| `usBankAccount` | `usBankAccount` | `v02_CreateInvoicesReqPsetsPMOUsBacct` |

### `v02_CreateInvoicesReqPsetsPMOAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_CreateInvsReqPsetsPMOAcssDbtManOpts` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_CreateInvoicesReqPsetsPMOBancontact`

| Field | Stripe API Name | Type |
|---|---|---|
| `preferredLanguage` | `preferredLanguage` | `String` |

### `v02_CreateInvoicesReqPsetsPMOCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `installments` | `installments` | `v02_CreateInvsReqPsetsPMOCardInstls` |
| `requestThreeDSecure` | `requestThreeDSecure` | `String` |

### `v02_CreateInvoicesReqPsetsPMOCustbal`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankTransfer` | `bankTransfer` | `v02_CreateInvsReqPsetsPMOCustbalBankXfer` |
| `fundingType` | `fundingType` | `String` |

### `v02_CreateInvoicesReqPsetsPMOUsBacct`

| Field | Stripe API Name | Type |
|---|---|---|
| `financialConnections` | `financialConnections` | `v02_CreateInvsReqPsetsPMOUsBacctFinConn` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_CreateInvoicesReqRendering`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountTaxDisplay` | `amountTaxDisplay` | `String` |
| `pdf` | `pdf` | `v02_CreateInvoicesReqRenderingPdf` |
| `template` | `template` | `String` |
| `templateVersion` | `templateVersion` | `Integer` |

### `v02_CreateInvoicesReqRenderingPdf`

| Field | Stripe API Name | Type |
|---|---|---|
| `pageSize` | `pageSize` | `String` |

### `v02_CreateInvoicesReqShippingCost`

| Field | Stripe API Name | Type |
|---|---|---|
| `shippingRate` | `shippingRate` | `String` |
| `shippingRateData` | `shippingRateData` | `v02_CreateInvoicesReqShippingCostRate` |

### `v02_CreateInvoicesReqShippingCostRate`

| Field | Stripe API Name | Type |
|---|---|---|
| `deliveryEstimate` | `deliveryEstimate` | `v02_CreateInvoicesReqShpCostRateDlvEst` |
| `displayName` | `displayName` | `String` |
| `fixedAmount` | `fixedAmount` | `v02_CreateInvoicesReqShpCostRateFxdAmt` |
| `metadata` | `metadata` | `v02_Metadata` |
| `taxBehavior` | `taxBehavior` | `String` |
| `taxCode` | `taxCode` | `String` |
| `type` | `type` | `String` |

### `v02_CreateInvoicesReqShippingDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_CreateInvoicesReqShpDetailsAddress` |
| `name` | `name` | `String` |
| `phone` | `phone` | `String` |

### `v02_CreateInvoicesReqShpCostRateDlvEst`

| Field | Stripe API Name | Type |
|---|---|---|
| `maximum` | `maximum` | `v02_CreateInvsReqShpCostRateDlvEstMax` |
| `minimum` | `minimum` | `v02_CreateInvsReqShpCostRateDlvEstMin` |

### `v02_CreateInvoicesReqShpCostRateFxdAmt`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `r_currency` | `r_currency` | `String` |
| `currencyOptions` | `currencyOptions` | `List<v02_AdtlCreateInvsReqShpCostRateFxdAmtCO>` |

### `v02_CreateInvoicesReqShpDetailsAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_CreateInvoicesReqTransferData`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `destination` | `destination` | `String` |

### `v02_CreateInvsReqAutomaticTaxLiability`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_CreateInvsReqPsetsPMOAcssDbtManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `transactionType` | `transactionType` | `String` |

### `v02_CreateInvsReqPsetsPMOCardInstls`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `plan` | `plan` | `v02_CreateInvsReqPsetsPMOCardInstlsPlan` |

### `v02_CreateInvsReqPsetsPMOCardInstlsPlan`

| Field | Stripe API Name | Type |
|---|---|---|
| `count` | `count` | `Integer` |
| `interval` | `interval` | `String` |
| `type` | `type` | `String` |

### `v02_CreateInvsReqPsetsPMOCustbalBankXfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `euBankTransfer` | `euBankTransfer` | `v02_CreateInvsReqPsetsPMOCustbalEuXfer` |
| `type` | `type` | `String` |

### `v02_CreateInvsReqPsetsPMOCustbalEuXfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |

### `v02_CreateInvsReqPsetsPMOUsBacctFin`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountSubcategories` | `accountSubcategories` | `List<String>` |

### `v02_CreateInvsReqPsetsPMOUsBacctFinConn`

| Field | Stripe API Name | Type |
|---|---|---|
| `filters` | `filters` | `v02_CreateInvsReqPsetsPMOUsBacctFin` |
| `permissions` | `permissions` | `List<String>` |
| `prefetch` | `prefetch` | `List<String>` |

### `v02_CreateInvsReqShpCostRateDlvEstMax`

| Field | Stripe API Name | Type |
|---|---|---|
| `unit` | `unit` | `String` |
| `value` | `value` | `Integer` |

### `v02_CreateInvsReqShpCostRateDlvEstMin`

| Field | Stripe API Name | Type |
|---|---|---|
| `unit` | `unit` | `String` |
| `value` | `value` | `Integer` |

### `v02_CreateInvsReqShpCostRateFxdAmtCOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `taxBehavior` | `taxBehavior` | `String` |

### `v02_CreatePaymentIntentsReqMandateData`

| Field | Stripe API Name | Type |
|---|---|---|
| `customerAcceptance` | `customerAcceptance` | `v02_CreatePisReqMandateDataCusAcceptance` |

### `v02_CreatePaymentIntentsReqOffSession`

| Field | Stripe API Name | Type |
|---|---|---|
| `booleanField` | `booleanField` | `Boolean` |
| `stringField` | `stringField` | `String` |

### `v02_CreatePaymentIntentsReqPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `acssDebit` | `acssDebit` | `v02_CreatePaymentIntentsReqPMOAcssDebit` |
| `affirm` | `affirm` | `v02_CreatePaymentIntentsReqPMOAffirm` |
| `afterpayClearpay` | `afterpayClearpay` | `v02_CreatePaymentIntentsReqPMOAftClrpay` |
| `alipay` | `alipay` | `v02_CreatePaymentIntentsReqPMOAlipay` |
| `alma` | `alma` | `v02_CreatePaymentIntentsReqPMOAlma` |
| `amazonPay` | `amazonPay` | `v02_CreatePaymentIntentsReqPMOAmazonPay` |
| `auBecsDebit` | `auBecsDebit` | `v02_CreatePisReqPMOAuBecsDebit` |
| `bacsDebit` | `bacsDebit` | `v02_CreatePaymentIntentsReqPMOBacsDebit` |
| `bancontact` | `bancontact` | `v02_CreatePaymentIntentsReqPMOBancontact` |
| `billie` | `billie` | `v02_CreatePaymentIntentsReqPMOBillie` |
| `blik` | `blik` | `v02_CreatePaymentIntentsReqPMOBlik` |
| `boleto` | `boleto` | `v02_CreatePaymentIntentsReqPMOBoleto` |
| `card` | `card` | `v02_CreatePaymentIntentsReqPMOCard` |
| `cardPresent` | `cardPresent` | `v02_CreatePisReqPMOCardPresent` |
| `cashapp` | `cashapp` | `v02_CreatePaymentIntentsReqPMOCashapp` |
| `customerBalance` | `customerBalance` | `v02_CreatePaymentIntentsReqPMOCustbal` |
| `eps` | `eps` | `v02_CreatePaymentIntentsReqPMOEps` |
| `fpx` | `fpx` | `v02_CreatePaymentIntentsReqPMOFpx` |
| `giropay` | `giropay` | `v02_CreatePaymentIntentsReqPMOGiropay` |
| `grabpay` | `grabpay` | `v02_CreatePaymentIntentsReqPMOGrabpay` |
| `ideal` | `ideal` | `v02_CreatePaymentIntentsReqPMOIdeal` |
| `interacPresent` | `interacPresent` | `List<v02_AdditionalString>` |
| `kakaoPay` | `kakaoPay` | `v02_CreatePaymentIntentsReqPMOKakaoPay` |
| `klarna` | `klarna` | `v02_CreatePaymentIntentsReqPMOKlarna` |
| `konbini` | `konbini` | `v02_CreatePaymentIntentsReqPMOKonbini` |
| `krCard` | `krCard` | `v02_CreatePaymentIntentsReqPMOKrCard` |
| `link` | `link` | `v02_CreatePaymentIntentsReqPMOLink` |
| `mobilepay` | `mobilepay` | `v02_CreatePaymentIntentsReqPMOMobilepay` |
| `multibanco` | `multibanco` | `v02_CreatePaymentIntentsReqPMOMultibanco` |
| `naverPay` | `naverPay` | `v02_CreatePaymentIntentsReqPMONaverPay` |
| `nzBankAccount` | `nzBankAccount` | `v02_CreatePisReqPMONzBankAccount` |
| `oxxo` | `oxxo` | `v02_CreatePaymentIntentsReqPMOOxxo` |
| `p24` | `p24` | `v02_CreatePaymentIntentsReqPMOP24` |
| `payByBank` | `payByBank` | `List<v02_AdditionalString>` |
| `payco` | `payco` | `v02_CreatePaymentIntentsReqPMOPayco` |
| `paynow` | `paynow` | `v02_CreatePaymentIntentsReqPMOPaynow` |
| `paypal` | `paypal` | `v02_CreatePaymentIntentsReqPMOPaypal` |
| `pix` | `pix` | `v02_CreatePaymentIntentsReqPMOPix` |
| `promptpay` | `promptpay` | `v02_CreatePaymentIntentsReqPMOPromptpay` |
| `revolutPay` | `revolutPay` | `v02_CreatePaymentIntentsReqPMORevolutPay` |
| `samsungPay` | `samsungPay` | `v02_CreatePaymentIntentsReqPMOSamsungPay` |
| `sepaDebit` | `sepaDebit` | `v02_CreatePaymentIntentsReqPMOSepaDebit` |
| `sofort` | `sofort` | `v02_CreatePaymentIntentsReqPMOSofort` |
| `swish` | `swish` | `v02_CreatePaymentIntentsReqPMOSwish` |
| `twint` | `twint` | `v02_CreatePaymentIntentsReqPMOTwint` |
| `usBankAccount` | `usBankAccount` | `v02_CreatePisReqPMOUsBankAccount` |
| `wechatPay` | `wechatPay` | `v02_CreatePaymentIntentsReqPMOWechatPay` |
| `zip` | `zip` | `v02_CreatePaymentIntentsReqPMOZip` |

### `v02_CreatePaymentIntentsReqPMOAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_CreatePisReqPMOAcssDebitManOpts` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_CreatePaymentIntentsReqPMOAffirm`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `preferredLocale` | `preferredLocale` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOAftClrpay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `reference` | `reference` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOAlipay`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOAlma`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |

### `v02_CreatePaymentIntentsReqPMOAmazonPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOBacsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_CreatePisReqPMOBacsDebitManOpts` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |

### `v02_CreatePaymentIntentsReqPMOBancontact`

| Field | Stripe API Name | Type |
|---|---|---|
| `preferredLanguage` | `preferredLanguage` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOBillie`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |

### `v02_CreatePaymentIntentsReqPMOBlik`

| Field | Stripe API Name | Type |
|---|---|---|
| `code` | `code` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOBoleto`

| Field | Stripe API Name | Type |
|---|---|---|
| `expiresAfterDays` | `expiresAfterDays` | `Integer` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `cvcToken` | `cvcToken` | `String` |
| `installments` | `installments` | `v02_CreatePisReqPMOCardInstallments` |
| `mandateOptions` | `mandateOptions` | `v02_CreatePisReqPMOCardMandateOptions` |
| `moto` | `moto` | `Boolean` |
| `network` | `network` | `String` |
| `requestExtendedAuthorization` | `requestExtendedAuthorization` | `String` |
| `requestIncrementalAuthorization` | `requestIncrementalAuthorization` | `String` |
| `requestMulticapture` | `requestMulticapture` | `String` |
| `requestOvercapture` | `requestOvercapture` | `String` |
| `requestThreeDSecure` | `requestThreeDSecure` | `String` |
| `requireCvcRecollection` | `requireCvcRecollection` | `Boolean` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `statementDescriptorSuffixKana` | `statementDescriptorSuffixKana` | `String` |
| `statementDescriptorSuffixKanji` | `statementDescriptorSuffixKanji` | `String` |
| `threeDSecure` | `threeDSecure` | `v02_CreatePisReqPMOCardThreeDSecure` |

### `v02_CreatePaymentIntentsReqPMOCashapp`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOCustbal`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankTransfer` | `bankTransfer` | `v02_CreatePisReqPMOCustbalBankXfer` |
| `fundingType` | `fundingType` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOEps`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOFpx`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOGiropay`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOGrabpay`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOIdeal`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOKakaoPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOKlarna`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `preferredLocale` | `preferredLocale` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOKonbini`

| Field | Stripe API Name | Type |
|---|---|---|
| `confirmationNumber` | `confirmationNumber` | `String` |
| `expiresAfterDays` | `expiresAfterDays` | `Integer` |
| `expiresAt` | `expiresAt` | `Integer` |
| `productDescription` | `productDescription` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOKrCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOLink`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `persistentToken` | `persistentToken` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOMobilepay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOMultibanco`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMONaverPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOOxxo`

| Field | Stripe API Name | Type |
|---|---|---|
| `expiresAfterDays` | `expiresAfterDays` | `Integer` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOP24`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `tosShownAndAccepted` | `tosShownAndAccepted` | `Boolean` |

### `v02_CreatePaymentIntentsReqPMOPayco`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |

### `v02_CreatePaymentIntentsReqPMOPaynow`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOPaypal`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `preferredLocale` | `preferredLocale` | `String` |
| `reference` | `reference` | `String` |
| `riskCorrelationId` | `riskCorrelationId` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOPix`

| Field | Stripe API Name | Type |
|---|---|---|
| `expiresAfterSeconds` | `expiresAfterSeconds` | `Integer` |
| `expiresAt` | `expiresAt` | `Integer` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOPromptpay`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMORevolutPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOSamsungPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |

### `v02_CreatePaymentIntentsReqPMOSepaDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_CreatePisReqPMOSepaDebitManOpts` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |

### `v02_CreatePaymentIntentsReqPMOSofort`

| Field | Stripe API Name | Type |
|---|---|---|
| `preferredLanguage` | `preferredLanguage` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOSwish`

| Field | Stripe API Name | Type |
|---|---|---|
| `reference` | `reference` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOTwint`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOWechatPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `appId` | `appId` | `String` |
| `client` | `client` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqPMOZip`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_CreatePaymentIntentsReqRadarOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `session` | `session` | `String` |

### `v02_CreatePaymentIntentsReqShipping`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_CreatePisReqShippingAddress` |
| `carrier` | `carrier` | `String` |
| `name` | `name` | `String` |
| `phone` | `phone` | `String` |
| `trackingNumber` | `trackingNumber` | `String` |

### `v02_CreatePaymentIntentsReqTransferData`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `destination` | `destination` | `String` |

### `v02_CreatePaymentLinksReqAftCmplHstCfrm`

| Field | Stripe API Name | Type |
|---|---|---|
| `customMessage` | `customMessage` | `String` |

### `v02_CreatePaymentLinksReqAftCmplRedirect`

| Field | Stripe API Name | Type |
|---|---|---|
| `url` | `url` | `String` |

### `v02_CreatePaymentLinksReqAfterCompletion`

| Field | Stripe API Name | Type |
|---|---|---|
| `hostedConfirmation` | `hostedConfirmation` | `v02_CreatePaymentLinksReqAftCmplHstCfrm` |
| `redirect` | `redirect` | `v02_CreatePaymentLinksReqAftCmplRedirect` |
| `type` | `type` | `String` |

### `v02_CreatePaymentLinksReqAutomaticTax`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `liability` | `liability` | `v02_CreatePlinksReqAutomaticTaxLiability` |

### `v02_CreatePaymentLinksReqConsentCol`

| Field | Stripe API Name | Type |
|---|---|---|
| `paymentMethodReuseAgreement` | `paymentMethodReuseAgreement` | `v02_CreatePlinksReqConsentColPmReus` |
| `promotions` | `promotions` | `String` |
| `termsOfService` | `termsOfService` | `String` |

### `v02_CreatePaymentLinksReqCustomField`

| Field | Stripe API Name | Type |
|---|---|---|
| `dropdown` | `dropdown` | `v02_CreatePlinksReqCustomFieldDropdown` |
| `key` | `key` | `String` |
| `label` | `label` | `v02_CreatePlinksReqCustomFieldLabel` |
| `numeric` | `numeric` | `v02_CreatePlinksReqCustomFieldNumeric` |
| `optional` | `optional` | `Boolean` |
| `text` | `text` | `v02_CreatePaymentLinksReqCustomFieldText` |
| `type` | `type` | `String` |

### `v02_CreatePaymentLinksReqCustomFieldText`

| Field | Stripe API Name | Type |
|---|---|---|
| `defaultValue` | `defaultValue` | `String` |
| `maximumLength` | `maximumLength` | `Integer` |
| `minimumLength` | `minimumLength` | `Integer` |

### `v02_CreatePaymentLinksReqCustomText`

| Field | Stripe API Name | Type |
|---|---|---|
| `afterSubmit` | `afterSubmit` | `v02_CreatePlinksReqCustomTextAfterSubmit` |
| `shippingAddress` | `shippingAddress` | `v02_CreatePlinksReqCustomTextShpAddress` |
| `submit` | `submit` | `v02_CreatePlinksReqCustomTextSubmit` |
| `termsOfServiceAcceptance` | `termsOfServiceAcceptance` | `v02_CreatePlinksReqCustomTextTermsOf` |

### `v02_CreatePaymentLinksReqInvoiceCreation`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `invoiceData` | `invoiceData` | `v02_CreatePlinksReqInvCrtnInvoiceData` |

### `v02_CreatePaymentLinksReqLineItem`

| Field | Stripe API Name | Type |
|---|---|---|
| `adjustableQuantity` | `adjustableQuantity` | `v02_CreatePlinksReqLineItemAdjstQuan` |
| `price` | `price` | `String` |
| `quantity` | `quantity` | `Integer` |

### `v02_CreatePaymentLinksReqOptionalItem`

| Field | Stripe API Name | Type |
|---|---|---|
| `adjustableQuantity` | `adjustableQuantity` | `v02_CreatePlinksReqOptalItemAdjstQuan` |
| `price` | `price` | `String` |
| `quantity` | `quantity` | `Integer` |

### `v02_CreatePaymentLinksReqPiData`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `description` | `description` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `statementDescriptor` | `statementDescriptor` | `String` |
| `statementDescriptorSuffix` | `statementDescriptorSuffix` | `String` |
| `transferGroup` | `transferGroup` | `String` |

### `v02_CreatePaymentLinksReqRestrictions`

| Field | Stripe API Name | Type |
|---|---|---|
| `completedSessions` | `completedSessions` | `v02_CreatePlinksReqRestrictionsComple` |

### `v02_CreatePaymentLinksReqShippingOption`

| Field | Stripe API Name | Type |
|---|---|---|
| `shippingRate` | `shippingRate` | `String` |

### `v02_CreatePaymentLinksReqSubData`

| Field | Stripe API Name | Type |
|---|---|---|
| `description` | `description` | `String` |
| `invoiceSettings` | `invoiceSettings` | `v02_CreatePlinksReqSubDataInvSettings` |
| `metadata` | `metadata` | `v02_Metadata` |
| `trialPeriodDays` | `trialPeriodDays` | `Integer` |
| `trialSettings` | `trialSettings` | `v02_CreatePlinksReqSubDataTrialSettings` |

### `v02_CreatePaymentLinksReqTransferData`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `destination` | `destination` | `String` |

### `v02_CreatePaymentMethodsReqAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountNumber` | `accountNumber` | `String` |
| `institutionNumber` | `institutionNumber` | `String` |
| `transitNumber` | `transitNumber` | `String` |

### `v02_CreatePaymentMethodsReqAuBecsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountNumber` | `accountNumber` | `String` |
| `bsbNumber` | `bsbNumber` | `String` |

### `v02_CreatePaymentMethodsReqBacsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountNumber` | `accountNumber` | `String` |
| `sortCode` | `sortCode` | `String` |

### `v02_CreatePaymentMethodsReqCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `cvc` | `cvc` | `String` |
| `expMonth` | `expMonth` | `Integer` |
| `expYear` | `expYear` | `Integer` |
| `networks` | `networks` | `v02_CreatePmsReqCardAnyofNetworks` |
| `r_number` | `r_number` | `String` |
| `token` | `token` | `String` |

### `v02_CreatePaymentMethodsReqIdeal`

| Field | Stripe API Name | Type |
|---|---|---|
| `bank` | `bank` | `String` |

### `v02_CreatePaymentMethodsReqKlarna`

| Field | Stripe API Name | Type |
|---|---|---|
| `dob` | `dob` | `v02_CreatePaymentMethodsReqKlarnaDob` |

### `v02_CreatePaymentMethodsReqKlarnaDob`

| Field | Stripe API Name | Type |
|---|---|---|
| `day` | `day` | `Integer` |
| `month` | `month` | `Integer` |
| `year` | `year` | `Integer` |

### `v02_CreatePaymentMethodsReqNaverPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `funding` | `funding` | `String` |

### `v02_CreatePaymentMethodsReqNzBankAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderName` | `accountHolderName` | `String` |
| `accountNumber` | `accountNumber` | `String` |
| `bankCode` | `bankCode` | `String` |
| `branchCode` | `branchCode` | `String` |
| `reference` | `reference` | `String` |
| `suffix` | `suffix` | `String` |

### `v02_CreatePaymentMethodsReqSepaDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `iban` | `iban` | `String` |

### `v02_CreatePaymentMethodsReqUsBankAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderType` | `accountHolderType` | `String` |
| `accountNumber` | `accountNumber` | `String` |
| `accountType` | `accountType` | `String` |
| `financialConnectionsAccount` | `financialConnectionsAccount` | `String` |
| `routingNumber` | `routingNumber` | `String` |

### `v02_CreatePcodesReqRestrictionsCOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `minimumAmount` | `minimumAmount` | `Integer` |

### `v02_CreatePisReqMandateDataCusAcceptance`

| Field | Stripe API Name | Type |
|---|---|---|
| `acceptedAt` | `acceptedAt` | `Integer` |
| `offline` | `offline` | `List<v02_AdditionalString>` |
| `online` | `online` | `v02_CreatePisReqMandateDtCusAccptOnline` |
| `type` | `type` | `String` |

### `v02_CreatePisReqMandateDtCusAccptOnline`

| Field | Stripe API Name | Type |
|---|---|---|
| `ipAddress` | `ipAddress` | `String` |
| `userAgent` | `userAgent` | `String` |

### `v02_CreatePisReqPMOAcssDebitManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `customMandateUrl` | `customMandateUrl` | `String` |
| `intervalDescription` | `intervalDescription` | `String` |
| `paymentSchedule` | `paymentSchedule` | `String` |
| `transactionType` | `transactionType` | `String` |

### `v02_CreatePisReqPMOAuBecsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |

### `v02_CreatePisReqPMOBacsDebitManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `referencePrefix` | `referencePrefix` | `String` |

### `v02_CreatePisReqPMOCardInstallments`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `plan` | `plan` | `v02_CreatePisReqPMOCardInstallmentsPlan` |

### `v02_CreatePisReqPMOCardInstallmentsPlan`

| Field | Stripe API Name | Type |
|---|---|---|
| `count` | `count` | `Integer` |
| `interval` | `interval` | `String` |
| `type` | `type` | `String` |

### `v02_CreatePisReqPMOCardMandateOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `amountType` | `amountType` | `String` |
| `description` | `description` | `String` |
| `endDate` | `endDate` | `Integer` |
| `interval` | `interval` | `String` |
| `intervalCount` | `intervalCount` | `Integer` |
| `reference` | `reference` | `String` |
| `startDate` | `startDate` | `Integer` |
| `supportedTypes` | `supportedTypes` | `List<String>` |

### `v02_CreatePisReqPMOCardPresent`

| Field | Stripe API Name | Type |
|---|---|---|
| `requestExtendedAuthorization` | `requestExtendedAuthorization` | `Boolean` |
| `requestIncrementalAuthorizationSupport` | `requestIncrementalAuthorizationSupport` | `Boolean` |
| `routing` | `routing` | `v02_CreatePisReqPMOCardPresentRouting` |

### `v02_CreatePisReqPMOCardPresentRouting`

| Field | Stripe API Name | Type |
|---|---|---|
| `requestedPriority` | `requestedPriority` | `String` |

### `v02_CreatePisReqPMOCardThreeDSecure`

| Field | Stripe API Name | Type |
|---|---|---|
| `aresTransStatus` | `aresTransStatus` | `String` |
| `cryptogram` | `cryptogram` | `String` |
| `electronicCommerceIndicator` | `electronicCommerceIndicator` | `String` |
| `exemptionIndicator` | `exemptionIndicator` | `String` |
| `networkOptions` | `networkOptions` | `v02_CreatePisReqPMOCardThreeDSecure` |
| `requestorChallengeIndicator` | `requestorChallengeIndicator` | `String` |
| `transactionId` | `transactionId` | `String` |
| `version` | `version` | `String` |

### `v02_CreatePisReqPMOCustbalBankXfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `euBankTransfer` | `euBankTransfer` | `v02_CreatePisReqPMOCustbalEuXfer` |
| `requestedAddressTypes` | `requestedAddressTypes` | `List<String>` |
| `type` | `type` | `String` |

### `v02_CreatePisReqPMOCustbalEuXfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |

### `v02_CreatePisReqPMONzBankAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |

### `v02_CreatePisReqPMOSepaDebitManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `referencePrefix` | `referencePrefix` | `String` |

### `v02_CreatePisReqPMOUsBacctFinConnFilters`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountSubcategories` | `accountSubcategories` | `List<String>` |

### `v02_CreatePisReqPMOUsBankAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `financialConnections` | `financialConnections` | `v02_CreatePisReqPMOUsBankAccountFinConn` |
| `mandateOptions` | `mandateOptions` | `v02_CreatePisReqPMOUsBankAccountManOpts` |
| `networks` | `networks` | `v02_CreatePisReqPMOUsBankAccountNetworks` |
| `preferredSettlementSpeed` | `preferredSettlementSpeed` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_CreatePisReqPMOUsBankAccountFinConn`

| Field | Stripe API Name | Type |
|---|---|---|
| `filters` | `filters` | `v02_CreatePisReqPMOUsBacctFinConnFilters` |
| `permissions` | `permissions` | `List<String>` |
| `prefetch` | `prefetch` | `List<String>` |
| `returnUrl` | `returnUrl` | `String` |

### `v02_CreatePisReqPMOUsBankAccountManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `collectionMethod` | `collectionMethod` | `String` |

### `v02_CreatePisReqPMOUsBankAccountNetworks`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `List<String>` |

### `v02_CreatePisReqPaymentMethodData`

| Field | Stripe API Name | Type |
|---|---|---|
| `acssDebit` | `acssDebit` | `v02_CreatePisReqPmDataAcssDebit` |
| `affirm` | `affirm` | `List<v02_AdditionalString>` |
| `afterpayClearpay` | `afterpayClearpay` | `List<v02_AdditionalString>` |
| `alipay` | `alipay` | `List<v02_AdditionalString>` |
| `allowRedisplay` | `allowRedisplay` | `String` |
| `alma` | `alma` | `List<v02_AdditionalString>` |
| `amazonPay` | `amazonPay` | `List<v02_AdditionalString>` |
| `auBecsDebit` | `auBecsDebit` | `v02_CreatePisReqPmDataAuBecsDebit` |
| `bacsDebit` | `bacsDebit` | `v02_CreatePisReqPmDataBacsDebit` |
| `bancontact` | `bancontact` | `List<v02_AdditionalString>` |
| `billie` | `billie` | `List<v02_AdditionalString>` |
| `billingDetails` | `billingDetails` | `v02_CreatePisReqPmDataBillingDetails` |
| `blik` | `blik` | `List<v02_AdditionalString>` |
| `boleto` | `boleto` | `v02_CreatePisReqPaymentMethodDataBoleto` |
| `cashapp` | `cashapp` | `List<v02_AdditionalString>` |
| `customerBalance` | `customerBalance` | `List<v02_AdditionalString>` |
| `eps` | `eps` | `v02_CreatePisReqPaymentMethodDataEps` |
| `fpx` | `fpx` | `v02_CreatePisReqPaymentMethodDataFpx` |
| `giropay` | `giropay` | `List<v02_AdditionalString>` |
| `grabpay` | `grabpay` | `List<v02_AdditionalString>` |
| `ideal` | `ideal` | `v02_CreatePisReqPaymentMethodDataIdeal` |
| `interacPresent` | `interacPresent` | `List<v02_AdditionalString>` |
| `kakaoPay` | `kakaoPay` | `List<v02_AdditionalString>` |
| `klarna` | `klarna` | `v02_CreatePisReqPaymentMethodDataKlarna` |
| `konbini` | `konbini` | `List<v02_AdditionalString>` |
| `krCard` | `krCard` | `List<v02_AdditionalString>` |
| `link` | `link` | `List<v02_AdditionalString>` |
| `metadata` | `metadata` | `v02_Metadata` |
| `mobilepay` | `mobilepay` | `List<v02_AdditionalString>` |
| `multibanco` | `multibanco` | `List<v02_AdditionalString>` |
| `naverPay` | `naverPay` | `v02_CreatePisReqPmDataNaverPay` |
| `nzBankAccount` | `nzBankAccount` | `v02_CreatePisReqPaymentMethodDataNzBacct` |
| `oxxo` | `oxxo` | `List<v02_AdditionalString>` |
| `p24` | `p24` | `v02_CreatePisReqPaymentMethodDataP24` |
| `payByBank` | `payByBank` | `List<v02_AdditionalString>` |
| `payco` | `payco` | `List<v02_AdditionalString>` |
| `paynow` | `paynow` | `List<v02_AdditionalString>` |
| `paypal` | `paypal` | `List<v02_AdditionalString>` |
| `pix` | `pix` | `List<v02_AdditionalString>` |
| `promptpay` | `promptpay` | `List<v02_AdditionalString>` |
| `radarOptions` | `radarOptions` | `v02_CreatePisReqPmDataRadarOptions` |
| `revolutPay` | `revolutPay` | `List<v02_AdditionalString>` |
| `samsungPay` | `samsungPay` | `List<v02_AdditionalString>` |
| `satispay` | `satispay` | `List<v02_AdditionalString>` |
| `sepaDebit` | `sepaDebit` | `v02_CreatePisReqPmDataSepaDebit` |
| `sofort` | `sofort` | `v02_CreatePisReqPaymentMethodDataSofort` |
| `swish` | `swish` | `List<v02_AdditionalString>` |
| `twint` | `twint` | `List<v02_AdditionalString>` |
| `type` | `type` | `String` |
| `usBankAccount` | `usBankAccount` | `v02_CreatePisReqPaymentMethodDataUsBacct` |
| `wechatPay` | `wechatPay` | `List<v02_AdditionalString>` |
| `zip` | `zip` | `List<v02_AdditionalString>` |

### `v02_CreatePisReqPaymentMethodDataBoleto`

| Field | Stripe API Name | Type |
|---|---|---|
| `taxId` | `taxId` | `String` |

### `v02_CreatePisReqPaymentMethodDataEps`

| Field | Stripe API Name | Type |
|---|---|---|
| `bank` | `bank` | `String` |

### `v02_CreatePisReqPaymentMethodDataFpx`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderType` | `accountHolderType` | `String` |
| `bank` | `bank` | `String` |

### `v02_CreatePisReqPaymentMethodDataIdeal`

| Field | Stripe API Name | Type |
|---|---|---|
| `bank` | `bank` | `String` |

### `v02_CreatePisReqPaymentMethodDataKlarna`

| Field | Stripe API Name | Type |
|---|---|---|
| `dob` | `dob` | `v02_CreatePisReqPmDataKlarnaDob` |

### `v02_CreatePisReqPaymentMethodDataNzBacct`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderName` | `accountHolderName` | `String` |
| `accountNumber` | `accountNumber` | `String` |
| `bankCode` | `bankCode` | `String` |
| `branchCode` | `branchCode` | `String` |
| `reference` | `reference` | `String` |
| `suffix` | `suffix` | `String` |

### `v02_CreatePisReqPaymentMethodDataP24`

| Field | Stripe API Name | Type |
|---|---|---|
| `bank` | `bank` | `String` |

### `v02_CreatePisReqPaymentMethodDataSofort`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |

### `v02_CreatePisReqPaymentMethodDataUsBacct`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderType` | `accountHolderType` | `String` |
| `accountNumber` | `accountNumber` | `String` |
| `accountType` | `accountType` | `String` |
| `financialConnectionsAccount` | `financialConnectionsAccount` | `String` |
| `routingNumber` | `routingNumber` | `String` |

### `v02_CreatePisReqPmDataAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountNumber` | `accountNumber` | `String` |
| `institutionNumber` | `institutionNumber` | `String` |
| `transitNumber` | `transitNumber` | `String` |

### `v02_CreatePisReqPmDataAuBecsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountNumber` | `accountNumber` | `String` |
| `bsbNumber` | `bsbNumber` | `String` |

### `v02_CreatePisReqPmDataBacsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountNumber` | `accountNumber` | `String` |
| `sortCode` | `sortCode` | `String` |

### `v02_CreatePisReqPmDataBdAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_CreatePisReqPmDataBillingDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_CreatePisReqPmDataBdAddress` |
| `email` | `email` | `String` |
| `name` | `name` | `String` |
| `phone` | `phone` | `String` |
| `taxId` | `taxId` | `String` |

### `v02_CreatePisReqPmDataKlarnaDob`

| Field | Stripe API Name | Type |
|---|---|---|
| `day` | `day` | `Integer` |
| `month` | `month` | `Integer` |
| `year` | `year` | `Integer` |

### `v02_CreatePisReqPmDataNaverPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `funding` | `funding` | `String` |

### `v02_CreatePisReqPmDataRadarOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `session` | `session` | `String` |

### `v02_CreatePisReqPmDataSepaDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `iban` | `iban` | `String` |

### `v02_CreatePisReqShippingAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_CreatePlansReqProduct`

| Field | Stripe API Name | Type |
|---|---|---|
| `stringField` | `stringField` | `String` |
| `active` | `active` | `Boolean` |
| `id` | `id` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `name` | `name` | `String` |
| `statementDescriptor` | `statementDescriptor` | `String` |
| `taxCode` | `taxCode` | `String` |
| `unitLabel` | `unitLabel` | `String` |

### `v02_CreatePlansReqTier`

| Field | Stripe API Name | Type |
|---|---|---|
| `flatAmount` | `flatAmount` | `Integer` |
| `flatAmountDecimal` | `flatAmountDecimal` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |
| `upTo` | `upTo` | `v02_CreatePlansReqTierUpTo` |

### `v02_CreatePlansReqTierUpTo`

| Field | Stripe API Name | Type |
|---|---|---|
| `stringField` | `stringField` | `String` |
| `integerField` | `integerField` | `Integer` |

### `v02_CreatePlinksReqAutomaticTaxLiability`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_CreatePlinksReqCFieldDropdownOption`

| Field | Stripe API Name | Type |
|---|---|---|
| `label` | `label` | `String` |
| `value` | `value` | `String` |

### `v02_CreatePlinksReqConsentColPmReus`

| Field | Stripe API Name | Type |
|---|---|---|
| `position` | `position` | `String` |

### `v02_CreatePlinksReqCustomFieldDropdown`

| Field | Stripe API Name | Type |
|---|---|---|
| `defaultValue` | `defaultValue` | `String` |
| `options` | `options` | `List<v02_CreatePlinksReqCFieldDropdownOption>` |

### `v02_CreatePlinksReqCustomFieldLabel`

| Field | Stripe API Name | Type |
|---|---|---|
| `custom` | `custom` | `String` |
| `type` | `type` | `String` |

### `v02_CreatePlinksReqCustomFieldNumeric`

| Field | Stripe API Name | Type |
|---|---|---|
| `defaultValue` | `defaultValue` | `String` |
| `maximumLength` | `maximumLength` | `Integer` |
| `minimumLength` | `minimumLength` | `Integer` |

### `v02_CreatePlinksReqCustomTextAfterSubmit`

| Field | Stripe API Name | Type |
|---|---|---|
| `message` | `message` | `String` |

### `v02_CreatePlinksReqCustomTextShpAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `message` | `message` | `String` |

### `v02_CreatePlinksReqCustomTextSubmit`

| Field | Stripe API Name | Type |
|---|---|---|
| `message` | `message` | `String` |

### `v02_CreatePlinksReqCustomTextTermsOf`

| Field | Stripe API Name | Type |
|---|---|---|
| `message` | `message` | `String` |

### `v02_CreatePlinksReqInvCrtnInvDataCField`

| Field | Stripe API Name | Type |
|---|---|---|
| `name` | `name` | `String` |
| `value` | `value` | `String` |

### `v02_CreatePlinksReqInvCrtnInvDataIssuer`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_CreatePlinksReqInvCrtnInvDtRndrOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountTaxDisplay` | `amountTaxDisplay` | `String` |

### `v02_CreatePlinksReqInvCrtnInvoiceData`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountTaxIds` | `accountTaxIds` | `List<String>` |
| `customFields` | `customFields` | `List<v02_CreatePlinksReqInvCrtnInvDataCField>` |
| `description` | `description` | `String` |
| `footer` | `footer` | `String` |
| `issuer` | `issuer` | `v02_CreatePlinksReqInvCrtnInvDataIssuer` |
| `metadata` | `metadata` | `v02_Metadata` |
| `renderingOptions` | `renderingOptions` | `v02_CreatePlinksReqInvCrtnInvDtRndrOpts` |

### `v02_CreatePlinksReqLineItemAdjstQuan`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `maximum` | `maximum` | `Integer` |
| `minimum` | `minimum` | `Integer` |

### `v02_CreatePlinksReqOptalItemAdjstQuan`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `maximum` | `maximum` | `Integer` |
| `minimum` | `minimum` | `Integer` |

### `v02_CreatePlinksReqRestrictionsComple`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_limit` | `r_limit` | `Integer` |

### `v02_CreatePlinksReqSubDataInvSetsIssuer`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_CreatePlinksReqSubDataInvSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `issuer` | `issuer` | `v02_CreatePlinksReqSubDataInvSetsIssuer` |

### `v02_CreatePlinksReqSubDataTrialSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `endBehavior` | `endBehavior` | `v02_CreatePlinksReqSubDtTrialSetsEndBhvr` |

### `v02_CreatePlinksReqSubDtTrialSetsEndBhvr`

| Field | Stripe API Name | Type |
|---|---|---|
| `missingPaymentMethod` | `missingPaymentMethod` | `String` |

### `v02_CreatePmConfigurationsReqAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqAcssDbtDsplPr` |

### `v02_CreatePmConfigurationsReqAffirm`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqAffirmDsplPreference` |

### `v02_CreatePmConfigurationsReqAftClrpay`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqAftClrpayDspl` |

### `v02_CreatePmConfigurationsReqAlipay`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqAlipayDsplPreference` |

### `v02_CreatePmConfigurationsReqAlma`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqAlmaDsplPreference` |

### `v02_CreatePmConfigurationsReqAmazonPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqAmazonPayDspl` |

### `v02_CreatePmConfigurationsReqApplePay`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqApplePayDsplP` |

### `v02_CreatePmConfigurationsReqAuBecsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqAuBecsDbtDspl` |

### `v02_CreatePmConfigurationsReqBacsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqBacsDbtDsplPr` |

### `v02_CreatePmConfigurationsReqBancontact`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqBancontactDspl` |

### `v02_CreatePmConfigurationsReqBillie`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqBillieDsplPreference` |

### `v02_CreatePmConfigurationsReqBlik`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqBlikDsplPreference` |

### `v02_CreatePmConfigurationsReqBoleto`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqBoletoDsplPreference` |

### `v02_CreatePmConfigurationsReqCB`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqCBDisplayPreference` |

### `v02_CreatePmConfigurationsReqCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqCardDsplPreference` |

### `v02_CreatePmConfigurationsReqCashapp`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqCashappDsplPre` |

### `v02_CreatePmConfigurationsReqCustbal`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqCustbalDsplPre` |

### `v02_CreatePmConfigurationsReqEps`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqEpsDisplayPreference` |

### `v02_CreatePmConfigurationsReqFpx`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqFpxDisplayPreference` |

### `v02_CreatePmConfigurationsReqGiropay`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqGiropayDsplPre` |

### `v02_CreatePmConfigurationsReqGooglePay`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqGooglePayDspl` |

### `v02_CreatePmConfigurationsReqGrabpay`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqGrabpayDsplPre` |

### `v02_CreatePmConfigurationsReqIdeal`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqIdealDsplPreference` |

### `v02_CreatePmConfigurationsReqJcb`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqJcbDisplayPreference` |

### `v02_CreatePmConfigurationsReqKlarna`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqKlarnaDsplPreference` |

### `v02_CreatePmConfigurationsReqKonbini`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqKonbiniDsplPre` |

### `v02_CreatePmConfigurationsReqLink`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqLinkDsplPreference` |

### `v02_CreatePmConfigurationsReqMobilepay`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqMobilepayDsplP` |

### `v02_CreatePmConfigurationsReqMultibanco`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqMultibancoDspl` |

### `v02_CreatePmConfigurationsReqNzBacct`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqNzBacctDsplPr` |

### `v02_CreatePmConfigurationsReqOxxo`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqOxxoDsplPreference` |

### `v02_CreatePmConfigurationsReqP24`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqP24DisplayPreference` |

### `v02_CreatePmConfigurationsReqPayByBank`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqPayByBankDspl` |

### `v02_CreatePmConfigurationsReqPaynow`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqPaynowDsplPreference` |

### `v02_CreatePmConfigurationsReqPaypal`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqPaypalDsplPreference` |

### `v02_CreatePmConfigurationsReqPix`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqPixDisplayPreference` |

### `v02_CreatePmConfigurationsReqPromptpay`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqPromptpayDsplP` |

### `v02_CreatePmConfigurationsReqRevolutPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqRevolutPayDspl` |

### `v02_CreatePmConfigurationsReqSatispay`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqSatispayDsplPr` |

### `v02_CreatePmConfigurationsReqSepaDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqSepaDbtDsplPr` |

### `v02_CreatePmConfigurationsReqSofort`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqSofortDsplPreference` |

### `v02_CreatePmConfigurationsReqSwish`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqSwishDsplPreference` |

### `v02_CreatePmConfigurationsReqTwint`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqTwintDsplPreference` |

### `v02_CreatePmConfigurationsReqUsBacct`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqUsBacctDsplPr` |

### `v02_CreatePmConfigurationsReqWechatPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqWechatPayDspl` |

### `v02_CreatePmConfigurationsReqZip`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqZipDisplayPreference` |

### `v02_CreatePmConfsReqAcssDbtDsplPr`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqAffirmDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqAftClrpayDspl`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqAlipayDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqAlmaDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqAmazonPayDspl`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqApplePayDsplP`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqApplePayLater`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_CreatePmConfsReqApplePayLaterD` |

### `v02_CreatePmConfsReqApplePayLaterD`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqAuBecsDbtDspl`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqBacsDbtDsplPr`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqBancontactDspl`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqBillieDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqBlikDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqBoletoDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqCBDisplayPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqCardDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqCashappDsplPre`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqCustbalDsplPre`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqEpsDisplayPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqFpxDisplayPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqGiropayDsplPre`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqGooglePayDspl`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqGrabpayDsplPre`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqIdealDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqJcbDisplayPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqKlarnaDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqKonbiniDsplPre`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqLinkDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqMobilepayDsplP`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqMultibancoDspl`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqNzBacctDsplPr`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqOxxoDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqP24DisplayPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqPayByBankDspl`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqPaynowDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqPaypalDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqPixDisplayPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqPromptpayDsplP`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqRevolutPayDspl`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqSatispayDsplPr`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqSepaDbtDsplPr`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqSofortDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqSwishDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqTwintDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqUsBacctDsplPr`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqWechatPayDspl`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmConfsReqZipDisplayPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_CreatePmsReqBillingDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_CreatePmsReqBillingDetailsAddress` |
| `email` | `email` | `String` |
| `name` | `name` | `String` |
| `phone` | `phone` | `String` |
| `taxId` | `taxId` | `String` |

### `v02_CreatePmsReqBillingDetailsAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_CreatePmsReqCardAnyofNetworks`

| Field | Stripe API Name | Type |
|---|---|---|
| `preferred` | `preferred` | `String` |

### `v02_CreatePricesReqCOptsTierUpTo`

| Field | Stripe API Name | Type |
|---|---|---|
| `stringField` | `stringField` | `String` |
| `integerField` | `integerField` | `Integer` |

### `v02_CreatePricesReqCurrencyOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `customUnitAmount` | `customUnitAmount` | `v02_CreatePricesReqCurrencyOptionsCUA` |
| `taxBehavior` | `taxBehavior` | `String` |
| `tiers` | `tiers` | `List<v02_CreatePricesReqCurrencyOptionsTier>` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_CreatePricesReqCurrencyOptionsCUA`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `maximum` | `maximum` | `Integer` |
| `minimum` | `minimum` | `Integer` |
| `preset` | `preset` | `Integer` |

### `v02_CreatePricesReqCurrencyOptionsTier`

| Field | Stripe API Name | Type |
|---|---|---|
| `flatAmount` | `flatAmount` | `Integer` |
| `flatAmountDecimal` | `flatAmountDecimal` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |
| `upTo` | `upTo` | `v02_CreatePricesReqCOptsTierUpTo` |

### `v02_CreatePricesReqCustomUnitAmount`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `maximum` | `maximum` | `Integer` |
| `minimum` | `minimum` | `Integer` |
| `preset` | `preset` | `Integer` |

### `v02_CreatePricesReqProductData`

| Field | Stripe API Name | Type |
|---|---|---|
| `active` | `active` | `Boolean` |
| `id` | `id` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `name` | `name` | `String` |
| `statementDescriptor` | `statementDescriptor` | `String` |
| `taxCode` | `taxCode` | `String` |
| `unitLabel` | `unitLabel` | `String` |

### `v02_CreatePricesReqTier`

| Field | Stripe API Name | Type |
|---|---|---|
| `flatAmount` | `flatAmount` | `Integer` |
| `flatAmountDecimal` | `flatAmountDecimal` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |
| `upTo` | `upTo` | `v02_CreatePricesReqTierUpTo` |

### `v02_CreatePricesReqTierUpTo`

| Field | Stripe API Name | Type |
|---|---|---|
| `stringField` | `stringField` | `String` |
| `integerField` | `integerField` | `Integer` |

### `v02_CreateProdsReqDefPdataCOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `customUnitAmount` | `customUnitAmount` | `v02_CreateProdsReqDefPdataCOptsCUA` |
| `taxBehavior` | `taxBehavior` | `String` |
| `tiers` | `tiers` | `List<v02_CreateProdsReqDefPdataCOptsTier>` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_CreateProdsReqDefPdataCOptsCUA`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `maximum` | `maximum` | `Integer` |
| `minimum` | `minimum` | `Integer` |
| `preset` | `preset` | `Integer` |

### `v02_CreateProdsReqDefPdataCOptsTier`

| Field | Stripe API Name | Type |
|---|---|---|
| `flatAmount` | `flatAmount` | `Integer` |
| `flatAmountDecimal` | `flatAmountDecimal` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |
| `upTo` | `upTo` | `v02_CreateProdsReqDefPdataCOptsTierUpTo` |

### `v02_CreateProdsReqDefPdataCOptsTierUpTo`

| Field | Stripe API Name | Type |
|---|---|---|
| `stringField` | `stringField` | `String` |
| `integerField` | `integerField` | `Integer` |

### `v02_CreateProdsReqDefaultPdataRecurring`

| Field | Stripe API Name | Type |
|---|---|---|
| `interval` | `interval` | `String` |
| `intervalCount` | `intervalCount` | `Integer` |

### `v02_CreateProductsReqDefaultPdataCUA`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `maximum` | `maximum` | `Integer` |
| `minimum` | `minimum` | `Integer` |
| `preset` | `preset` | `Integer` |

### `v02_CreateProductsReqDefaultPriceData`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `currencyOptions` | `currencyOptions` | `List<v02_AdditionalCreateProdsReqDefPdtCOpts>` |
| `customUnitAmount` | `customUnitAmount` | `v02_CreateProductsReqDefaultPdataCUA` |
| `metadata` | `metadata` | `v02_Metadata` |
| `recurring` | `recurring` | `v02_CreateProdsReqDefaultPdataRecurring` |
| `taxBehavior` | `taxBehavior` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_CreateProductsReqMarketingFeature`

| Field | Stripe API Name | Type |
|---|---|---|
| `name` | `name` | `String` |

### `v02_CreatePromotionCodesReqRestrictions`

| Field | Stripe API Name | Type |
|---|---|---|
| `currencyOptions` | `currencyOptions` | `List<v02_AdtlCreatePcodesReqRestrictionsCOpts>` |
| `firstTimeTransaction` | `firstTimeTransaction` | `Boolean` |
| `minimumAmount` | `minimumAmount` | `Integer` |
| `minimumAmountCurrency` | `minimumAmountCurrency` | `String` |

### `v02_CreateQuotesReqAutomaticTax`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `liability` | `liability` | `v02_CreateQuotesReqAutomaticTaxLiability` |

### `v02_CreateQuotesReqAutomaticTaxLiability`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_CreateQuotesReqDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_CreateQuotesReqFromQuote`

| Field | Stripe API Name | Type |
|---|---|---|
| `isRevision` | `isRevision` | `Boolean` |
| `quote` | `quote` | `String` |

### `v02_CreateQuotesReqInvoiceSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `daysUntilDue` | `daysUntilDue` | `Integer` |
| `issuer` | `issuer` | `v02_CreateQuotesReqInvoiceSettingsIssuer` |

### `v02_CreateQuotesReqInvoiceSettingsIssuer`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_CreateQuotesReqLineItem`

| Field | Stripe API Name | Type |
|---|---|---|
| `discounts` | `discounts` | `List<v02_CreateQuotesReqLineItemDiscount>` |
| `price` | `price` | `String` |
| `priceData` | `priceData` | `v02_CreateQuotesReqLineItemPriceData` |
| `quantity` | `quantity` | `Integer` |
| `taxRates` | `taxRates` | `List<String>` |

### `v02_CreateQuotesReqLineItemDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_CreateQuotesReqLineItemPdataRecur`

| Field | Stripe API Name | Type |
|---|---|---|
| `interval` | `interval` | `String` |
| `intervalCount` | `intervalCount` | `Integer` |

### `v02_CreateQuotesReqLineItemPriceData`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `product` | `product` | `String` |
| `recurring` | `recurring` | `v02_CreateQuotesReqLineItemPdataRecur` |
| `taxBehavior` | `taxBehavior` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_CreateQuotesReqSubDataEffectiveDate`

| Field | Stripe API Name | Type |
|---|---|---|
| `stringField` | `stringField` | `String` |
| `integerField` | `integerField` | `Integer` |

### `v02_CreateQuotesReqSubscriptionData`

| Field | Stripe API Name | Type |
|---|---|---|
| `description` | `description` | `String` |
| `effectiveDate` | `effectiveDate` | `v02_CreateQuotesReqSubDataEffectiveDate` |
| `metadata` | `metadata` | `v02_Metadata` |
| `trialPeriodDays` | `trialPeriodDays` | `Integer` |

### `v02_CreateQuotesReqTransferData`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `amountPercent` | `amountPercent` | `Double` |
| `destination` | `destination` | `String` |

### `v02_CreateSetupIntentsReqMandateData`

| Field | Stripe API Name | Type |
|---|---|---|
| `customerAcceptance` | `customerAcceptance` | `v02_CreateSisReqMandateDataCusAcceptance` |

### `v02_CreateSetupIntentsReqPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `acssDebit` | `acssDebit` | `v02_CreateSetupIntentsReqPMOAcssDebit` |
| `amazonPay` | `amazonPay` | `List<v02_AdditionalString>` |
| `bacsDebit` | `bacsDebit` | `v02_CreateSetupIntentsReqPMOBacsDebit` |
| `card` | `card` | `v02_CreateSetupIntentsReqPMOCard` |
| `cardPresent` | `cardPresent` | `List<v02_AdditionalString>` |
| `link` | `link` | `v02_CreateSetupIntentsReqPMOLink` |
| `paypal` | `paypal` | `v02_CreateSetupIntentsReqPMOPaypal` |
| `sepaDebit` | `sepaDebit` | `v02_CreateSetupIntentsReqPMOSepaDebit` |
| `usBankAccount` | `usBankAccount` | `v02_CreateSisReqPMOUsBankAccount` |

### `v02_CreateSetupIntentsReqPMOAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `mandateOptions` | `mandateOptions` | `v02_CreateSisReqPMOAcssDebitManOpts` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_CreateSetupIntentsReqPMOBacsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_CreateSisReqPMOBacsDebitManOpts` |

### `v02_CreateSetupIntentsReqPMOCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_CreateSisReqPMOCardMandateOptions` |
| `moto` | `moto` | `Boolean` |
| `network` | `network` | `String` |
| `requestThreeDSecure` | `requestThreeDSecure` | `String` |
| `threeDSecure` | `threeDSecure` | `v02_CreateSisReqPMOCardThreeDSecure` |

### `v02_CreateSetupIntentsReqPMOLink`

| Field | Stripe API Name | Type |
|---|---|---|
| `persistentToken` | `persistentToken` | `String` |

### `v02_CreateSetupIntentsReqPMOPaypal`

| Field | Stripe API Name | Type |
|---|---|---|
| `billingAgreementId` | `billingAgreementId` | `String` |

### `v02_CreateSetupIntentsReqPMOSepaDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_CreateSisReqPMOSepaDebitManOpts` |

### `v02_CreateSetupIntentsReqSingleUse`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `r_currency` | `r_currency` | `String` |

### `v02_CreateSisReqMandateDataCusAcceptance`

| Field | Stripe API Name | Type |
|---|---|---|
| `acceptedAt` | `acceptedAt` | `Integer` |
| `offline` | `offline` | `List<v02_AdditionalString>` |
| `online` | `online` | `v02_CreateSisReqMandateDtCusAccptOnline` |
| `type` | `type` | `String` |

### `v02_CreateSisReqMandateDtCusAccptOnline`

| Field | Stripe API Name | Type |
|---|---|---|
| `ipAddress` | `ipAddress` | `String` |
| `userAgent` | `userAgent` | `String` |

### `v02_CreateSisReqPMOAcssDebitManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `customMandateUrl` | `customMandateUrl` | `String` |
| `defaultFor` | `defaultFor` | `List<String>` |
| `intervalDescription` | `intervalDescription` | `String` |
| `paymentSchedule` | `paymentSchedule` | `String` |
| `transactionType` | `transactionType` | `String` |

### `v02_CreateSisReqPMOBacsDebitManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `referencePrefix` | `referencePrefix` | `String` |

### `v02_CreateSisReqPMOCardMandateOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `amountType` | `amountType` | `String` |
| `r_currency` | `r_currency` | `String` |
| `description` | `description` | `String` |
| `endDate` | `endDate` | `Integer` |
| `interval` | `interval` | `String` |
| `intervalCount` | `intervalCount` | `Integer` |
| `reference` | `reference` | `String` |
| `startDate` | `startDate` | `Integer` |
| `supportedTypes` | `supportedTypes` | `List<String>` |

### `v02_CreateSisReqPMOCardThreeDSecure`

| Field | Stripe API Name | Type |
|---|---|---|
| `aresTransStatus` | `aresTransStatus` | `String` |
| `cryptogram` | `cryptogram` | `String` |
| `electronicCommerceIndicator` | `electronicCommerceIndicator` | `String` |
| `networkOptions` | `networkOptions` | `v02_CreateSisReqPMOCardThreeDSecure` |
| `requestorChallengeIndicator` | `requestorChallengeIndicator` | `String` |
| `transactionId` | `transactionId` | `String` |
| `version` | `version` | `String` |

### `v02_CreateSisReqPMOSepaDebitManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `referencePrefix` | `referencePrefix` | `String` |

### `v02_CreateSisReqPMOUsBacctFinConnFilters`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountSubcategories` | `accountSubcategories` | `List<String>` |

### `v02_CreateSisReqPMOUsBankAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `financialConnections` | `financialConnections` | `v02_CreateSisReqPMOUsBankAccountFinConn` |
| `mandateOptions` | `mandateOptions` | `v02_CreateSisReqPMOUsBankAccountManOpts` |
| `networks` | `networks` | `v02_CreateSisReqPMOUsBankAccountNetworks` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_CreateSisReqPMOUsBankAccountFinConn`

| Field | Stripe API Name | Type |
|---|---|---|
| `filters` | `filters` | `v02_CreateSisReqPMOUsBacctFinConnFilters` |
| `permissions` | `permissions` | `List<String>` |
| `prefetch` | `prefetch` | `List<String>` |
| `returnUrl` | `returnUrl` | `String` |

### `v02_CreateSisReqPMOUsBankAccountManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `collectionMethod` | `collectionMethod` | `String` |

### `v02_CreateSisReqPMOUsBankAccountNetworks`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `List<String>` |

### `v02_CreateSisReqPaymentMethodData`

| Field | Stripe API Name | Type |
|---|---|---|
| `acssDebit` | `acssDebit` | `v02_CreateSisReqPmDataAcssDebit` |
| `affirm` | `affirm` | `List<v02_AdditionalString>` |
| `afterpayClearpay` | `afterpayClearpay` | `List<v02_AdditionalString>` |
| `alipay` | `alipay` | `List<v02_AdditionalString>` |
| `allowRedisplay` | `allowRedisplay` | `String` |
| `alma` | `alma` | `List<v02_AdditionalString>` |
| `amazonPay` | `amazonPay` | `List<v02_AdditionalString>` |
| `auBecsDebit` | `auBecsDebit` | `v02_CreateSisReqPmDataAuBecsDebit` |
| `bacsDebit` | `bacsDebit` | `v02_CreateSisReqPmDataBacsDebit` |
| `bancontact` | `bancontact` | `List<v02_AdditionalString>` |
| `billie` | `billie` | `List<v02_AdditionalString>` |
| `billingDetails` | `billingDetails` | `v02_CreateSisReqPmDataBillingDetails` |
| `blik` | `blik` | `List<v02_AdditionalString>` |
| `boleto` | `boleto` | `v02_CreateSisReqPaymentMethodDataBoleto` |
| `cashapp` | `cashapp` | `List<v02_AdditionalString>` |
| `customerBalance` | `customerBalance` | `List<v02_AdditionalString>` |
| `eps` | `eps` | `v02_CreateSisReqPaymentMethodDataEps` |
| `fpx` | `fpx` | `v02_CreateSisReqPaymentMethodDataFpx` |
| `giropay` | `giropay` | `List<v02_AdditionalString>` |
| `grabpay` | `grabpay` | `List<v02_AdditionalString>` |
| `ideal` | `ideal` | `v02_CreateSisReqPaymentMethodDataIdeal` |
| `interacPresent` | `interacPresent` | `List<v02_AdditionalString>` |
| `kakaoPay` | `kakaoPay` | `List<v02_AdditionalString>` |
| `klarna` | `klarna` | `v02_CreateSisReqPaymentMethodDataKlarna` |
| `konbini` | `konbini` | `List<v02_AdditionalString>` |
| `krCard` | `krCard` | `List<v02_AdditionalString>` |
| `link` | `link` | `List<v02_AdditionalString>` |
| `metadata` | `metadata` | `v02_Metadata` |
| `mobilepay` | `mobilepay` | `List<v02_AdditionalString>` |
| `multibanco` | `multibanco` | `List<v02_AdditionalString>` |
| `naverPay` | `naverPay` | `v02_CreateSisReqPmDataNaverPay` |
| `nzBankAccount` | `nzBankAccount` | `v02_CreateSisReqPaymentMethodDataNzBacct` |
| `oxxo` | `oxxo` | `List<v02_AdditionalString>` |
| `p24` | `p24` | `v02_CreateSisReqPaymentMethodDataP24` |
| `payByBank` | `payByBank` | `List<v02_AdditionalString>` |
| `payco` | `payco` | `List<v02_AdditionalString>` |
| `paynow` | `paynow` | `List<v02_AdditionalString>` |
| `paypal` | `paypal` | `List<v02_AdditionalString>` |
| `pix` | `pix` | `List<v02_AdditionalString>` |
| `promptpay` | `promptpay` | `List<v02_AdditionalString>` |
| `radarOptions` | `radarOptions` | `v02_CreateSisReqPmDataRadarOptions` |
| `revolutPay` | `revolutPay` | `List<v02_AdditionalString>` |
| `samsungPay` | `samsungPay` | `List<v02_AdditionalString>` |
| `satispay` | `satispay` | `List<v02_AdditionalString>` |
| `sepaDebit` | `sepaDebit` | `v02_CreateSisReqPmDataSepaDebit` |
| `sofort` | `sofort` | `v02_CreateSisReqPaymentMethodDataSofort` |
| `swish` | `swish` | `List<v02_AdditionalString>` |
| `twint` | `twint` | `List<v02_AdditionalString>` |
| `type` | `type` | `String` |
| `usBankAccount` | `usBankAccount` | `v02_CreateSisReqPaymentMethodDataUsBacct` |
| `wechatPay` | `wechatPay` | `List<v02_AdditionalString>` |
| `zip` | `zip` | `List<v02_AdditionalString>` |

### `v02_CreateSisReqPaymentMethodDataBoleto`

| Field | Stripe API Name | Type |
|---|---|---|
| `taxId` | `taxId` | `String` |

### `v02_CreateSisReqPaymentMethodDataEps`

| Field | Stripe API Name | Type |
|---|---|---|
| `bank` | `bank` | `String` |

### `v02_CreateSisReqPaymentMethodDataFpx`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderType` | `accountHolderType` | `String` |
| `bank` | `bank` | `String` |

### `v02_CreateSisReqPaymentMethodDataIdeal`

| Field | Stripe API Name | Type |
|---|---|---|
| `bank` | `bank` | `String` |

### `v02_CreateSisReqPaymentMethodDataKlarna`

| Field | Stripe API Name | Type |
|---|---|---|
| `dob` | `dob` | `v02_CreateSisReqPmDataKlarnaDob` |

### `v02_CreateSisReqPaymentMethodDataNzBacct`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderName` | `accountHolderName` | `String` |
| `accountNumber` | `accountNumber` | `String` |
| `bankCode` | `bankCode` | `String` |
| `branchCode` | `branchCode` | `String` |
| `reference` | `reference` | `String` |
| `suffix` | `suffix` | `String` |

### `v02_CreateSisReqPaymentMethodDataP24`

| Field | Stripe API Name | Type |
|---|---|---|
| `bank` | `bank` | `String` |

### `v02_CreateSisReqPaymentMethodDataSofort`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |

### `v02_CreateSisReqPaymentMethodDataUsBacct`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderType` | `accountHolderType` | `String` |
| `accountNumber` | `accountNumber` | `String` |
| `accountType` | `accountType` | `String` |
| `financialConnectionsAccount` | `financialConnectionsAccount` | `String` |
| `routingNumber` | `routingNumber` | `String` |

### `v02_CreateSisReqPmDataAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountNumber` | `accountNumber` | `String` |
| `institutionNumber` | `institutionNumber` | `String` |
| `transitNumber` | `transitNumber` | `String` |

### `v02_CreateSisReqPmDataAuBecsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountNumber` | `accountNumber` | `String` |
| `bsbNumber` | `bsbNumber` | `String` |

### `v02_CreateSisReqPmDataBacsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountNumber` | `accountNumber` | `String` |
| `sortCode` | `sortCode` | `String` |

### `v02_CreateSisReqPmDataBdAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_CreateSisReqPmDataBillingDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_CreateSisReqPmDataBdAddress` |
| `email` | `email` | `String` |
| `name` | `name` | `String` |
| `phone` | `phone` | `String` |
| `taxId` | `taxId` | `String` |

### `v02_CreateSisReqPmDataKlarnaDob`

| Field | Stripe API Name | Type |
|---|---|---|
| `day` | `day` | `Integer` |
| `month` | `month` | `Integer` |
| `year` | `year` | `Integer` |

### `v02_CreateSisReqPmDataNaverPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `funding` | `funding` | `String` |

### `v02_CreateSisReqPmDataRadarOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `session` | `session` | `String` |

### `v02_CreateSisReqPmDataSepaDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `iban` | `iban` | `String` |

### `v02_CreateSubItemsReqPdataRecurring`

| Field | Stripe API Name | Type |
|---|---|---|
| `interval` | `interval` | `String` |
| `intervalCount` | `intervalCount` | `Integer` |

### `v02_CreateSubSchedulesReqDefaultSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `applicationFeePercent` | `applicationFeePercent` | `Double` |
| `automaticTax` | `automaticTax` | `v02_CreateSubSchsReqDefSetsAutomaticTax` |
| `billingCycleAnchor` | `billingCycleAnchor` | `String` |
| `collectionMethod` | `collectionMethod` | `String` |
| `defaultPaymentMethod` | `defaultPaymentMethod` | `String` |
| `description` | `description` | `String` |
| `invoiceSettings` | `invoiceSettings` | `v02_CreateSubSchsReqDefSetsInvSets` |
| `onBehalfOf` | `onBehalfOf` | `String` |
| `transferData` | `transferData` | `v02_CreateSubSchsReqDefSettingsXferData` |

### `v02_CreateSubSchedulesReqPhaseDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_CreateSubSchedulesReqPhaseXferData`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountPercent` | `amountPercent` | `Double` |
| `destination` | `destination` | `String` |

### `v02_CreateSubSchedulesReqPitemDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_CreateSubSchedulesReqPitemPdata`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `product` | `product` | `String` |
| `recurring` | `recurring` | `v02_CreateSubSchsReqPitemPdataRecurring` |
| `taxBehavior` | `taxBehavior` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_CreateSubSchedulesReqStartDate`

| Field | Stripe API Name | Type |
|---|---|---|
| `integerField` | `integerField` | `Integer` |
| `stringField` | `stringField` | `String` |

### `v02_CreateSubSchsReqDefSetsAutomatic`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_CreateSubSchsReqDefSetsAutomaticTax`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `liability` | `liability` | `v02_CreateSubSchsReqDefSetsAutomatic` |

### `v02_CreateSubSchsReqDefSetsInvSets`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountTaxIds` | `accountTaxIds` | `List<String>` |
| `daysUntilDue` | `daysUntilDue` | `Integer` |
| `issuer` | `issuer` | `v02_CreateSubSchsReqDefSetsInvSetsIssuer` |

### `v02_CreateSubSchsReqDefSetsInvSetsIssuer`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_CreateSubSchsReqDefSettingsXferData`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountPercent` | `amountPercent` | `Double` |
| `destination` | `destination` | `String` |

### `v02_CreateSubSchsReqPhaseAddInvIte`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_CreateSubSchsReqPhaseAddInvItemPdata`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `product` | `product` | `String` |
| `taxBehavior` | `taxBehavior` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_CreateSubSchsReqPhaseAddInvoiceItem`

| Field | Stripe API Name | Type |
|---|---|---|
| `discounts` | `discounts` | `List<v02_CreateSubSchsReqPhaseAddInvIte>` |
| `price` | `price` | `String` |
| `priceData` | `priceData` | `v02_CreateSubSchsReqPhaseAddInvItemPdata` |
| `quantity` | `quantity` | `Integer` |
| `taxRates` | `taxRates` | `List<String>` |

### `v02_CreateSubSchsReqPhaseAutomaticT`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_CreateSubSchsReqPhaseAutomaticTax`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `liability` | `liability` | `v02_CreateSubSchsReqPhaseAutomaticT` |

### `v02_CreateSubSchsReqPhaseInvSetsIssuer`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_CreateSubSchsReqPhaseInvoiceSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountTaxIds` | `accountTaxIds` | `List<String>` |
| `daysUntilDue` | `daysUntilDue` | `Integer` |
| `issuer` | `issuer` | `v02_CreateSubSchsReqPhaseInvSetsIssuer` |

### `v02_CreateSubSchsReqPitemPdataRecurring`

| Field | Stripe API Name | Type |
|---|---|---|
| `interval` | `interval` | `String` |
| `intervalCount` | `intervalCount` | `Integer` |

### `v02_CreateSubsReqAddInvoiceItemDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_CreateSubsReqAddInvoiceItemPdata`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `product` | `product` | `String` |
| `taxBehavior` | `taxBehavior` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_CreateSubsReqAutomaticTaxLiability`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_CreateSubsReqInvoiceSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountTaxIds` | `accountTaxIds` | `List<String>` |
| `issuer` | `issuer` | `v02_CreateSubsReqInvoiceSettingsIssuer` |

### `v02_CreateSubsReqInvoiceSettingsIssuer`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_CreateSubsReqItemPdataRecurring`

| Field | Stripe API Name | Type |
|---|---|---|
| `interval` | `interval` | `String` |
| `intervalCount` | `intervalCount` | `Integer` |

### `v02_CreateSubsReqPaymentSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `paymentMethodOptions` | `paymentMethodOptions` | `v02_CreateSubsReqPaymentSettingsPMO` |
| `paymentMethodTypes` | `paymentMethodTypes` | `List<String>` |
| `saveDefaultPaymentMethod` | `saveDefaultPaymentMethod` | `String` |

### `v02_CreateSubsReqPaymentSettingsPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `acssDebit` | `acssDebit` | `v02_CreateSubsReqPsetsPMOAcssDebit` |
| `bancontact` | `bancontact` | `v02_CreateSubsReqPsetsPMOBancontact` |
| `card` | `card` | `v02_CreateSubsReqPaymentSettingsPMOCard` |
| `customerBalance` | `customerBalance` | `v02_CreateSubsReqPsetsPMOCustbal` |
| `konbini` | `konbini` | `List<v02_AdditionalString>` |
| `sepaDebit` | `sepaDebit` | `List<v02_AdditionalString>` |
| `usBankAccount` | `usBankAccount` | `v02_CreateSubsReqPsetsPMOUsBankAccount` |

### `v02_CreateSubsReqPaymentSettingsPMOCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_CreateSubsReqPsetsPMOCardManOpts` |
| `network` | `network` | `String` |
| `requestThreeDSecure` | `requestThreeDSecure` | `String` |

### `v02_CreateSubsReqPsetsPMOAcssDbtManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `transactionType` | `transactionType` | `String` |

### `v02_CreateSubsReqPsetsPMOAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_CreateSubsReqPsetsPMOAcssDbtManOpts` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_CreateSubsReqPsetsPMOBancontact`

| Field | Stripe API Name | Type |
|---|---|---|
| `preferredLanguage` | `preferredLanguage` | `String` |

### `v02_CreateSubsReqPsetsPMOCardManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `amountType` | `amountType` | `String` |
| `description` | `description` | `String` |

### `v02_CreateSubsReqPsetsPMOCustbal`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankTransfer` | `bankTransfer` | `v02_CreateSubsReqPsetsPMOCustbalBankXfer` |
| `fundingType` | `fundingType` | `String` |

### `v02_CreateSubsReqPsetsPMOCustbalBankXfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `euBankTransfer` | `euBankTransfer` | `v02_CreateSubsReqPsetsPMOCustbalEuXfer` |
| `type` | `type` | `String` |

### `v02_CreateSubsReqPsetsPMOCustbalEuXfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |

### `v02_CreateSubsReqPsetsPMOUsBacctFin`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountSubcategories` | `accountSubcategories` | `List<String>` |

### `v02_CreateSubsReqPsetsPMOUsBacctFinConn`

| Field | Stripe API Name | Type |
|---|---|---|
| `filters` | `filters` | `v02_CreateSubsReqPsetsPMOUsBacctFin` |
| `permissions` | `permissions` | `List<String>` |
| `prefetch` | `prefetch` | `List<String>` |

### `v02_CreateSubsReqPsetsPMOUsBankAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `financialConnections` | `financialConnections` | `v02_CreateSubsReqPsetsPMOUsBacctFinConn` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_CreateSubsReqTrialSetsEndBehavior`

| Field | Stripe API Name | Type |
|---|---|---|
| `missingPaymentMethod` | `missingPaymentMethod` | `String` |

### `v02_CreateSubscriptionItemsReqDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_CreateSubscriptionItemsReqPriceData`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `product` | `product` | `String` |
| `recurring` | `recurring` | `v02_CreateSubItemsReqPdataRecurring` |
| `taxBehavior` | `taxBehavior` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_CreateSubscriptionSchedulesReqPhase`

| Field | Stripe API Name | Type |
|---|---|---|
| `addInvoiceItems` | `addInvoiceItems` | `List<v02_CreateSubSchsReqPhaseAddInvoiceItem>` |
| `applicationFeePercent` | `applicationFeePercent` | `Double` |
| `automaticTax` | `automaticTax` | `v02_CreateSubSchsReqPhaseAutomaticTax` |
| `billingCycleAnchor` | `billingCycleAnchor` | `String` |
| `collectionMethod` | `collectionMethod` | `String` |
| `r_currency` | `r_currency` | `String` |
| `defaultPaymentMethod` | `defaultPaymentMethod` | `String` |
| `defaultTaxRates` | `defaultTaxRates` | `List<String>` |
| `description` | `description` | `String` |
| `discounts` | `discounts` | `List<v02_CreateSubSchedulesReqPhaseDiscount>` |
| `endDate` | `endDate` | `Integer` |
| `invoiceSettings` | `invoiceSettings` | `v02_CreateSubSchsReqPhaseInvoiceSettings` |
| `items` | `items` | `List<v02_CreateSubscriptionSchedulesReqPitem>` |
| `iterations` | `iterations` | `Integer` |
| `metadata` | `metadata` | `v02_Metadata` |
| `onBehalfOf` | `onBehalfOf` | `String` |
| `prorationBehavior` | `prorationBehavior` | `String` |
| `transferData` | `transferData` | `v02_CreateSubSchedulesReqPhaseXferData` |
| `trial` | `trial` | `Boolean` |
| `trialEnd` | `trialEnd` | `Integer` |

### `v02_CreateSubscriptionSchedulesReqPitem`

| Field | Stripe API Name | Type |
|---|---|---|
| `discounts` | `discounts` | `List<v02_CreateSubSchedulesReqPitemDiscount>` |
| `metadata` | `metadata` | `v02_Metadata` |
| `plan` | `plan` | `String` |
| `price` | `price` | `String` |
| `priceData` | `priceData` | `v02_CreateSubSchedulesReqPitemPdata` |
| `quantity` | `quantity` | `Integer` |
| `taxRates` | `taxRates` | `List<String>` |

### `v02_CreateSubscriptionsReqAddInvoiceItem`

| Field | Stripe API Name | Type |
|---|---|---|
| `discounts` | `discounts` | `List<v02_CreateSubsReqAddInvoiceItemDiscount>` |
| `price` | `price` | `String` |
| `priceData` | `priceData` | `v02_CreateSubsReqAddInvoiceItemPdata` |
| `quantity` | `quantity` | `Integer` |
| `taxRates` | `taxRates` | `List<String>` |

### `v02_CreateSubscriptionsReqAutomaticTax`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `liability` | `liability` | `v02_CreateSubsReqAutomaticTaxLiability` |

### `v02_CreateSubscriptionsReqDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_CreateSubscriptionsReqItem`

| Field | Stripe API Name | Type |
|---|---|---|
| `discounts` | `discounts` | `List<v02_CreateSubscriptionsReqItemDiscount>` |
| `metadata` | `metadata` | `v02_Metadata` |
| `plan` | `plan` | `String` |
| `price` | `price` | `String` |
| `priceData` | `priceData` | `v02_CreateSubscriptionsReqItemPriceData` |
| `quantity` | `quantity` | `Integer` |
| `taxRates` | `taxRates` | `List<String>` |

### `v02_CreateSubscriptionsReqItemDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_CreateSubscriptionsReqItemPriceData`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `product` | `product` | `String` |
| `recurring` | `recurring` | `v02_CreateSubsReqItemPdataRecurring` |
| `taxBehavior` | `taxBehavior` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_CreateSubscriptionsReqTransferData`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountPercent` | `amountPercent` | `Double` |
| `destination` | `destination` | `String` |

### `v02_CreateSubscriptionsReqTrialEnd`

| Field | Stripe API Name | Type |
|---|---|---|
| `stringField` | `stringField` | `String` |
| `integerField` | `integerField` | `Integer` |

### `v02_CreateSubscriptionsReqTrialSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `endBehavior` | `endBehavior` | `v02_CreateSubsReqTrialSetsEndBehavior` |

### `v02_CreateTresObXfersReqDestPMOUsBacct`

| Field | Stripe API Name | Type |
|---|---|---|
| `network` | `network` | `String` |

### `v02_CreateTresObXfersReqDestPmData`

| Field | Stripe API Name | Type |
|---|---|---|
| `financialAccount` | `financialAccount` | `String` |
| `type` | `type` | `String` |

### `v02_CreateTresOutboundXfersReqDestPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `usBankAccount` | `usBankAccount` | `v02_CreateTresObXfersReqDestPMOUsBacct` |

### `v02_CreditBalance`

| Field | Stripe API Name | Type |
|---|---|---|
| `availableBalance` | `availableBalance` | `v02_BillingCreditGrantsResourceAmount` |
| `ledgerBalance` | `ledgerBalance` | `v02_BillingCreditGrantsResourceAmount` |

### `v02_CurrencyOption`

| Field | Stripe API Name | Type |
|---|---|---|
| `customUnitAmount` | `customUnitAmount` | `v02_CustomUnitAmount` |
| `taxBehavior` | `taxBehavior` | `String` |
| `tiers` | `tiers` | `List<v02_PriceTier>` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_CusSessionComponentsBuyButton`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |

### `v02_CusSessionComponentsPaymentElement`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `features` | `features` | `v02_CusSessionComponentsPymtElementFeats` |

### `v02_CusSessionComponentsPricingTable`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |

### `v02_CusSessionComponentsPymtElementFeats`

| Field | Stripe API Name | Type |
|---|---|---|
| `paymentMethodAllowRedisplayFilters` | `paymentMethodAllowRedisplayFilters` | `List<String>` |
| `paymentMethodRedisplay` | `paymentMethodRedisplay` | `String` |
| `paymentMethodRedisplayLimit` | `paymentMethodRedisplayLimit` | `Integer` |
| `paymentMethodRemove` | `paymentMethodRemove` | `String` |
| `paymentMethodSave` | `paymentMethodSave` | `String` |
| `paymentMethodSaveUsage` | `paymentMethodSaveUsage` | `String` |

### `v02_CustbalCBalTrxAdjustedForOverdraft`

| Field | Stripe API Name | Type |
|---|---|---|
| `balanceTransaction` | `balanceTransaction` | `String` |
| `linkedTransaction` | `linkedTransaction` | `String` |

### `v02_CustbalCBalTrxAppliedToPaymentTrx`

| Field | Stripe API Name | Type |
|---|---|---|
| `paymentIntent` | `paymentIntent` | `String` |

### `v02_CustbalCBalTrxFundedTrx`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankTransfer` | `bankTransfer` | `v02_CustbalCBalTrxFundedTrxBankXfer` |

### `v02_CustbalCBalTrxFundedTrxBankXfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `network` | `network` | `String` |
| `senderName` | `senderName` | `String` |

### `v02_CustbalCBalTrxRefundedFromPaymentTrx`

| Field | Stripe API Name | Type |
|---|---|---|
| `stringField` | `stringField` | `String` |
| `amount` | `amount` | `Integer` |
| `balanceTransaction` | `balanceTransaction` | `String` |
| `charge` | `charge` | `String` |
| `created` | `created` | `Integer` |
| `r_currency` | `r_currency` | `String` |
| `description` | `description` | `String` |
| `destinationDetails` | `destinationDetails` | `v02_RefundDestinationDetails` |
| `failureBalanceTransaction` | `failureBalanceTransaction` | `String` |
| `failureReason` | `failureReason` | `String` |
| `id` | `id` | `String` |
| `instructionsEmail` | `instructionsEmail` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `nextAction` | `nextAction` | `v02_RefundNextAction` |
| `r_object` | `r_object` | `String` |
| `paymentIntent` | `paymentIntent` | `String` |
| `pendingReason` | `pendingReason` | `String` |
| `presentmentDetails` | `presentmentDetails` | `v02_PaymentFlowsPiPresentmentDetails` |
| `reason` | `reason` | `String` |
| `receiptNumber` | `receiptNumber` | `String` |
| `sourceTransferReversal` | `sourceTransferReversal` | `String` |
| `status` | `status` | `String` |
| `transferReversal` | `transferReversal` | `String` |

### `v02_CustbalCBalTrxUnappliedFromPymtTrx`

| Field | Stripe API Name | Type |
|---|---|---|
| `paymentIntent` | `paymentIntent` | `String` |

### `v02_CustbalCBalTrxXferredToBal`

| Field | Stripe API Name | Type |
|---|---|---|
| `balanceTransaction` | `balanceTransaction` | `String` |

### `v02_CustbalCustbalSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `reconciliationMode` | `reconciliationMode` | `String` |
| `usingMerchantDefault` | `usingMerchantDefault` | `Boolean` |

### `v02_CustomUnitAmount`

| Field | Stripe API Name | Type |
|---|---|---|
| `maximum` | `maximum` | `Integer` |
| `minimum` | `minimum` | `Integer` |
| `preset` | `preset` | `Integer` |

### `v02_DeleteCustomersSources200Response`

| Field | Stripe API Name | Type |
|---|---|---|
| `businessProfile` | `business_profile` | `v02_AccountBusinessProfile` |
| `businessType` | `business_type` | `String` |
| `capabilities` | `capabilities` | `v02_AccountCapabilities` |
| `chargesEnabled` | `charges_enabled` | `Boolean` |
| `company` | `company` | `v02_LegalEntityCompany` |
| `controller` | `controller` | `v02_AccountUnificationAccountController` |
| `country` | `country` | `String` |
| `created` | `created` | `Integer` |
| `defaultCurrency` | `default_currency` | `String` |
| `detailsSubmitted` | `details_submitted` | `Boolean` |
| `email` | `email` | `String` |
| `externalAccounts` | `external_accounts` | `v02_ExternalAccountList` |
| `futureRequirements` | `future_requirements` | `v02_ExternalAccountRequirements` |
| `groups` | `groups` | `v02_AccountGroupMembership` |
| `id` | `id` | `String` |
| `individual` | `individual` | `v02_Person` |
| `metadata` | `metadata` | `v02_Metadata` |
| `r_object` | `object` | `String` |
| `payoutsEnabled` | `payouts_enabled` | `Boolean` |
| `requirements` | `requirements` | `v02_ExternalAccountRequirements` |
| `settings` | `settings` | `v02_AccountSettings` |
| `tosAcceptance` | `tos_acceptance` | `v02_AccountTosAcceptance` |
| `type` | `type` | `String` |
| `account` | `account` | `String` |
| `accountHolderName` | `account_holder_name` | `String` |
| `accountHolderType` | `account_holder_type` | `String` |
| `accountType` | `account_type` | `String` |
| `availablePayoutMethods` | `available_payout_methods` | `List<String>` |
| `bankName` | `bank_name` | `String` |
| `r_currency` | `currency` | `String` |
| `customer` | `customer` | `String` |
| `defaultForCurrency` | `default_for_currency` | `Boolean` |
| `fingerprint` | `fingerprint` | `String` |
| `last4` | `last4` | `String` |
| `routingNumber` | `routing_number` | `String` |
| `status` | `status` | `String` |
| `addressCity` | `address_city` | `String` |
| `addressCountry` | `address_country` | `String` |
| `addressLine1` | `address_line1` | `String` |
| `addressLine1Check` | `address_line1_check` | `String` |
| `addressLine2` | `address_line2` | `String` |
| `addressState` | `address_state` | `String` |
| `addressZip` | `address_zip` | `String` |
| `addressZipCheck` | `address_zip_check` | `String` |
| `allowRedisplay` | `allow_redisplay` | `String` |
| `brand` | `brand` | `String` |
| `cvcCheck` | `cvc_check` | `String` |
| `description` | `description` | `String` |
| `dynamicLast4` | `dynamic_last4` | `String` |
| `expMonth` | `exp_month` | `Integer` |
| `expYear` | `exp_year` | `Integer` |
| `funding` | `funding` | `String` |
| `iin` | `iin` | `String` |
| `issuer` | `issuer` | `String` |
| `name` | `name` | `String` |
| `networks` | `networks` | `v02_TokenCardNetworks` |
| `regulatedStatus` | `regulated_status` | `String` |
| `tokenizationMethod` | `tokenization_method` | `String` |
| `achCreditTransfer` | `ach_credit_transfer` | `v02_SourceTypeAchCreditTransfer` |
| `achDebit` | `ach_debit` | `v02_SourceTypeAchDebit` |
| `acssDebit` | `acss_debit` | `v02_SourceTypeAcssDebit` |
| `alipay` | `alipay` | `v02_SourceTypeAlipay` |
| `amount` | `amount` | `Integer` |
| `auBecsDebit` | `au_becs_debit` | `v02_SourceTypeAuBecsDebit` |
| `bancontact` | `bancontact` | `v02_SourceTypeBancontact` |
| `card` | `card` | `v02_SourceTypeCard` |
| `cardPresent` | `card_present` | `v02_SourceTypeCardPresent` |
| `clientSecret` | `client_secret` | `String` |
| `codeVerification` | `code_verification` | `v02_SourceCodeVerificationFlow` |
| `eps` | `eps` | `v02_SourceTypeEps` |
| `flow` | `flow` | `String` |
| `giropay` | `giropay` | `v02_SourceTypeGiropay` |
| `ideal` | `ideal` | `v02_SourceTypeIdeal` |
| `klarna` | `klarna` | `v02_SourceTypeKlarna` |
| `livemode` | `livemode` | `Boolean` |
| `multibanco` | `multibanco` | `v02_SourceTypeMultibanco` |
| `owner` | `owner` | `v02_SourceOwner` |
| `p24` | `p24` | `v02_SourceTypeP24` |
| `receiver` | `receiver` | `v02_SourceReceiverFlow` |
| `redirect` | `redirect` | `v02_SourceRedirectFlow` |
| `sepaCreditTransfer` | `sepa_credit_transfer` | `v02_SourceTypeSepaCreditTransfer` |
| `sepaDebit` | `sepa_debit` | `v02_SourceTypeSepaDebit` |
| `sofort` | `sofort` | `v02_SourceTypeSofort` |
| `sourceOrder` | `source_order` | `v02_SourceOrder` |
| `statementDescriptor` | `statement_descriptor` | `String` |
| `threeDSecure` | `three_d_secure` | `v02_SourceTypeThreeDSecure` |
| `usage` | `usage` | `String` |
| `wechat` | `wechat` | `v02_SourceTypeWechat` |
| `deleted` | `deleted` | `Boolean` |

### `v02_DeleteSubsReqCancellationDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `comment` | `comment` | `String` |
| `feedback` | `feedback` | `String` |

### `v02_EmailSent`

| Field | Stripe API Name | Type |
|---|---|---|
| `emailSentAt` | `emailSentAt` | `Integer` |
| `emailSentTo` | `emailSentTo` | `String` |

### `v02_EntitlementsFeature`

| Field | Stripe API Name | Type |
|---|---|---|
| `active` | `active` | `Boolean` |
| `id` | `id` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `lookupKey` | `lookup_key` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `name` | `name` | `String` |
| `r_object` | `object` | `String` |

### `v02_Fee`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `application` | `application` | `String` |
| `r_currency` | `r_currency` | `String` |
| `description` | `description` | `String` |
| `type` | `type` | `String` |

### `v02_FundingInsBankXferFinAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `aba` | `aba` | `v02_FundingInstructionsBankXferAbaRecord` |
| `iban` | `iban` | `v02_FundingInsBankXferIbanRecord` |
| `sortCode` | `sortCode` | `v02_FundingInsBankXferSortCodeRecord` |
| `spei` | `spei` | `v02_FundingInsBankXferSpeiRecord` |
| `supportedNetworks` | `supportedNetworks` | `List<String>` |
| `swift` | `swift` | `v02_FundingInsBankXferSwiftRecord` |
| `type` | `type` | `String` |
| `zengin` | `zengin` | `v02_FundingInsBankXferZenginRecord` |

### `v02_FundingInsBankXferIbanRecord`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderAddress` | `accountHolderAddress` | `v02_Address` |
| `accountHolderName` | `accountHolderName` | `String` |
| `bankAddress` | `bankAddress` | `v02_Address` |
| `bic` | `bic` | `String` |
| `country` | `country` | `String` |
| `iban` | `iban` | `String` |

### `v02_FundingInsBankXferSortCodeRecord`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderAddress` | `accountHolderAddress` | `v02_Address` |
| `accountHolderName` | `accountHolderName` | `String` |
| `accountNumber` | `accountNumber` | `String` |
| `bankAddress` | `bankAddress` | `v02_Address` |
| `sortCode` | `sortCode` | `String` |

### `v02_FundingInsBankXferSpeiRecord`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderAddress` | `accountHolderAddress` | `v02_Address` |
| `accountHolderName` | `accountHolderName` | `String` |
| `bankAddress` | `bankAddress` | `v02_Address` |
| `bankCode` | `bankCode` | `String` |
| `bankName` | `bankName` | `String` |
| `clabe` | `clabe` | `String` |

### `v02_FundingInsBankXferSwiftRecord`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderAddress` | `accountHolderAddress` | `v02_Address` |
| `accountHolderName` | `accountHolderName` | `String` |
| `accountNumber` | `accountNumber` | `String` |
| `accountType` | `accountType` | `String` |
| `bankAddress` | `bankAddress` | `v02_Address` |
| `bankName` | `bankName` | `String` |
| `swiftCode` | `swiftCode` | `String` |

### `v02_FundingInsBankXferZenginRecord`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderAddress` | `accountHolderAddress` | `v02_Address` |
| `accountHolderName` | `accountHolderName` | `String` |
| `accountNumber` | `accountNumber` | `String` |
| `accountType` | `accountType` | `String` |
| `bankAddress` | `bankAddress` | `v02_Address` |
| `bankCode` | `bankCode` | `String` |
| `bankName` | `bankName` | `String` |
| `branchCode` | `branchCode` | `String` |
| `branchName` | `branchName` | `String` |

### `v02_GetCustomers200Response`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_Address` |
| `balance` | `balance` | `Integer` |
| `cashBalance` | `cash_balance` | `v02_CashBalance` |
| `created` | `created` | `Integer` |
| `r_currency` | `currency` | `String` |
| `defaultSource` | `default_source` | `String` |
| `delinquent` | `delinquent` | `Boolean` |
| `description` | `description` | `String` |
| `discount` | `discount` | `v02_Discount` |
| `email` | `email` | `String` |
| `id` | `id` | `String` |
| `invoiceCreditBalance` | `invoice_credit_balance` | `List<v02_AdditionalInteger>` |
| `invoicePrefix` | `invoice_prefix` | `String` |
| `invoiceSettings` | `invoice_settings` | `v02_InvoiceSettingCustomerSetting` |
| `livemode` | `livemode` | `Boolean` |
| `metadata` | `metadata` | `v02_Metadata` |
| `name` | `name` | `String` |
| `nextInvoiceSequence` | `next_invoice_sequence` | `Integer` |
| `r_object` | `object` | `String` |
| `phone` | `phone` | `String` |
| `preferredLocales` | `preferred_locales` | `List<String>` |
| `shipping` | `shipping` | `v02_Shipping` |
| `sources` | `sources` | `v02_ApmsSourcesSourceList` |
| `subscriptions` | `subscriptions` | `v02_SubscriptionList` |
| `tax` | `tax` | `v02_CustomerTax` |
| `taxExempt` | `tax_exempt` | `String` |
| `taxIds` | `tax_ids` | `v02_TaxIDsList` |
| `testClock` | `test_clock` | `String` |
| `deleted` | `deleted` | `Boolean` |

### `v02_InboundTransfers`

| Field | Stripe API Name | Type |
|---|---|---|
| `billingDetails` | `billingDetails` | `v02_TreasurySharedResourceBillingDetails` |
| `type` | `type` | `String` |
| `usBankAccount` | `usBankAccount` | `v02_InboundTransfersPMDsUsBankAccount` |

### `v02_InboundTransfersPMDsUsBankAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderType` | `accountHolderType` | `String` |
| `accountType` | `accountType` | `String` |
| `bankName` | `bankName` | `String` |
| `fingerprint` | `fingerprint` | `String` |
| `last4` | `last4` | `String` |
| `mandate` | `mandate` | `String` |
| `network` | `network` | `String` |
| `routingNumber` | `routingNumber` | `String` |

### `v02_InternalCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `brand` | `brand` | `String` |
| `country` | `country` | `String` |
| `expMonth` | `expMonth` | `Integer` |
| `expYear` | `expYear` | `Integer` |
| `last4` | `last4` | `String` |

### `v02_InvPMOUsBacctLinkedAccOptionsFilters`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountSubcategories` | `accountSubcategories` | `List<String>` |

### `v02_InvsPymtsInvPymtAssociatedPymt`

| Field | Stripe API Name | Type |
|---|---|---|
| `charge` | `charge` | `String` |
| `paymentIntent` | `paymentIntent` | `String` |
| `type` | `type` | `String` |

### `v02_InvsPymtsInvPymtStatusTransitions`

| Field | Stripe API Name | Type |
|---|---|---|
| `canceledAt` | `canceledAt` | `Integer` |
| `paidAt` | `paidAt` | `Integer` |

### `v02_Item`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountDiscount` | `amount_discount` | `Integer` |
| `amountSubtotal` | `amount_subtotal` | `Integer` |
| `amountTax` | `amount_tax` | `Integer` |
| `amountTotal` | `amount_total` | `Integer` |
| `r_currency` | `currency` | `String` |
| `description` | `description` | `String` |
| `discounts` | `discounts` | `List<v02_LineItemsDiscountAmount>` |
| `id` | `id` | `String` |
| `r_object` | `object` | `String` |
| `price` | `price` | `v02_Price` |
| `quantity` | `quantity` | `Integer` |
| `taxes` | `taxes` | `List<v02_LineItemsTaxAmount>` |

### `v02_KlarnaAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |

### `v02_KlarnaPayerDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_KlarnaAddress` |

### `v02_LegalEntityCompany`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_Address` |
| `addressKana` | `addressKana` | `v02_LegalEntityJapanAddress` |
| `addressKanji` | `addressKanji` | `v02_LegalEntityJapanAddress` |
| `directorsProvided` | `directorsProvided` | `Boolean` |
| `directorshipDeclaration` | `directorshipDeclaration` | `v02_LegalEntityDirectorshipDeclaration` |
| `executivesProvided` | `executivesProvided` | `Boolean` |
| `exportLicenseId` | `exportLicenseId` | `String` |
| `exportPurposeCode` | `exportPurposeCode` | `String` |
| `name` | `name` | `String` |
| `nameKana` | `nameKana` | `String` |
| `nameKanji` | `nameKanji` | `String` |
| `ownersProvided` | `ownersProvided` | `Boolean` |
| `ownershipDeclaration` | `ownershipDeclaration` | `v02_LegalEntityUboDeclaration` |
| `ownershipExemptionReason` | `ownershipExemptionReason` | `String` |
| `phone` | `phone` | `String` |
| `registrationDate` | `registrationDate` | `v02_LegalEntityRegistrationDate` |
| `structure` | `structure` | `String` |
| `taxIdProvided` | `taxIdProvided` | `Boolean` |
| `taxIdRegistrar` | `taxIdRegistrar` | `String` |
| `vatIdProvided` | `vatIdProvided` | `Boolean` |
| `verification` | `verification` | `v02_LegalEntityCompanyVerification` |

### `v02_LegalEntityCompanyVerification`

| Field | Stripe API Name | Type |
|---|---|---|
| `document` | `document` | `v02_LegalEntityCompanyVerifyDocument` |

### `v02_LegalEntityCompanyVerifyDocument`

| Field | Stripe API Name | Type |
|---|---|---|
| `back` | `back` | `String` |
| `details` | `details` | `String` |
| `detailsCode` | `detailsCode` | `String` |
| `front` | `front` | `String` |

### `v02_LegalEntityDirectorshipDeclaration`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_date` | `r_date` | `Integer` |
| `ip` | `ip` | `String` |
| `userAgent` | `userAgent` | `String` |

### `v02_LegalEntityDob`

| Field | Stripe API Name | Type |
|---|---|---|
| `day` | `day` | `Integer` |
| `month` | `month` | `Integer` |
| `year` | `year` | `Integer` |

### `v02_LegalEntityJapanAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |
| `town` | `town` | `String` |

### `v02_LegalEntityPersonVerification`

| Field | Stripe API Name | Type |
|---|---|---|
| `additionalDocument` | `additionalDocument` | `v02_LegalEntityPersonVerifyDocument` |
| `details` | `details` | `String` |
| `detailsCode` | `detailsCode` | `String` |
| `document` | `document` | `v02_LegalEntityPersonVerifyDocument` |
| `status` | `status` | `String` |

### `v02_LegalEntityPersonVerifyDocument`

| Field | Stripe API Name | Type |
|---|---|---|
| `back` | `back` | `String` |
| `details` | `details` | `String` |
| `detailsCode` | `detailsCode` | `String` |
| `front` | `front` | `String` |

### `v02_LegalEntityRegistrationDate`

| Field | Stripe API Name | Type |
|---|---|---|
| `day` | `day` | `Integer` |
| `month` | `month` | `Integer` |
| `year` | `year` | `Integer` |

### `v02_LegalEntityUboDeclaration`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_date` | `r_date` | `Integer` |
| `ip` | `ip` | `String` |
| `userAgent` | `userAgent` | `String` |

### `v02_Level3`

| Field | Stripe API Name | Type |
|---|---|---|
| `customerReference` | `customerReference` | `String` |
| `lineItems` | `lineItems` | `List<v02_Level3LineItems>` |
| `merchantReference` | `merchantReference` | `String` |
| `shippingAddressZip` | `shippingAddressZip` | `String` |
| `shippingAmount` | `shippingAmount` | `Integer` |
| `shippingFromZip` | `shippingFromZip` | `String` |

### `v02_Level3LineItems`

| Field | Stripe API Name | Type |
|---|---|---|
| `discountAmount` | `discountAmount` | `Integer` |
| `productCode` | `productCode` | `String` |
| `productDescription` | `productDescription` | `String` |
| `quantity` | `quantity` | `Integer` |
| `taxAmount` | `taxAmount` | `Integer` |
| `unitCost` | `unitCost` | `Integer` |

### `v02_LinkedAccountOptionsCommon`

| Field | Stripe API Name | Type |
|---|---|---|
| `filters` | `filters` | `v02_PymtFlowsPrivatePmsFinConnCommonL` |
| `permissions` | `permissions` | `List<String>` |
| `prefetch` | `prefetch` | `List<String>` |
| `returnUrl` | `returnUrl` | `String` |

### `v02_Metadata`

| Field | Stripe API Name | Type |
|---|---|---|
| `listAdditionalStringField` | `listAdditionalStringField` | `List<v02_AdditionalString>` |

### `v02_Networks`

| Field | Stripe API Name | Type |
|---|---|---|
| `available` | `available` | `List<String>` |
| `preferred` | `preferred` | `String` |

### `v02_NotificationEventData`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_object` | `r_object` | `List<v02_AdditionalString>` |
| `previousAttributes` | `previousAttributes` | `List<v02_AdditionalString>` |

### `v02_NotificationEventRequest`

| Field | Stripe API Name | Type |
|---|---|---|
| `id` | `id` | `String` |
| `idempotencyKey` | `idempotencyKey` | `String` |

### `v02_OnlineParam`

| Field | Stripe API Name | Type |
|---|---|---|
| `ipAddress` | `ipAddress` | `String` |
| `userAgent` | `userAgent` | `String` |

### `v02_OutboundTransfersPMDs`

| Field | Stripe API Name | Type |
|---|---|---|
| `billingDetails` | `billingDetails` | `v02_TreasurySharedResourceBillingDetails` |
| `financialAccount` | `financialAccount` | `v02_OutboundXfersPMDsFinancialAccount` |
| `type` | `type` | `String` |
| `usBankAccount` | `usBankAccount` | `v02_OutboundTransfersPMDsUsBankAccount` |

### `v02_OutboundTransfersPMDsUsBankAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderType` | `accountHolderType` | `String` |
| `accountType` | `accountType` | `String` |
| `bankName` | `bankName` | `String` |
| `fingerprint` | `fingerprint` | `String` |
| `last4` | `last4` | `String` |
| `mandate` | `mandate` | `String` |
| `network` | `network` | `String` |
| `routingNumber` | `routingNumber` | `String` |

### `v02_OutboundXfersPMDsFinancialAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `id` | `id` | `String` |
| `network` | `network` | `String` |

### `v02_PMDsAchCreditTransfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountNumber` | `accountNumber` | `String` |
| `bankName` | `bankName` | `String` |
| `routingNumber` | `routingNumber` | `String` |
| `swiftCode` | `swiftCode` | `String` |

### `v02_PMDsCardInstallmentsPlan`

| Field | Stripe API Name | Type |
|---|---|---|
| `count` | `count` | `Integer` |
| `interval` | `interval` | `String` |
| `type` | `type` | `String` |

### `v02_PMDsCardPresentOffline`

| Field | Stripe API Name | Type |
|---|---|---|
| `storedAt` | `storedAt` | `Integer` |
| `type` | `type` | `String` |

### `v02_PMDsCardPresentReceipt`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountType` | `accountType` | `String` |
| `applicationCryptogram` | `applicationCryptogram` | `String` |
| `applicationPreferredName` | `applicationPreferredName` | `String` |
| `authorizationCode` | `authorizationCode` | `String` |
| `authorizationResponseCode` | `authorizationResponseCode` | `String` |
| `cardholderVerificationMethod` | `cardholderVerificationMethod` | `String` |
| `dedicatedFileName` | `dedicatedFileName` | `String` |
| `terminalVerificationResults` | `terminalVerificationResults` | `String` |
| `transactionStatusInformation` | `transactionStatusInformation` | `String` |

### `v02_PMDsCardWalletMasterpass`

| Field | Stripe API Name | Type |
|---|---|---|
| `billingAddress` | `billingAddress` | `v02_Address` |
| `email` | `email` | `String` |
| `name` | `name` | `String` |
| `shippingAddress` | `shippingAddress` | `v02_Address` |

### `v02_PMDsCardWalletVisaCheckout`

| Field | Stripe API Name | Type |
|---|---|---|
| `billingAddress` | `billingAddress` | `v02_Address` |
| `email` | `email` | `String` |
| `name` | `name` | `String` |
| `shippingAddress` | `shippingAddress` | `v02_Address` |

### `v02_PMDsInteracPresentReceipt`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountType` | `accountType` | `String` |
| `applicationCryptogram` | `applicationCryptogram` | `String` |
| `applicationPreferredName` | `applicationPreferredName` | `String` |
| `authorizationCode` | `authorizationCode` | `String` |
| `authorizationResponseCode` | `authorizationResponseCode` | `String` |
| `cardholderVerificationMethod` | `cardholderVerificationMethod` | `String` |
| `dedicatedFileName` | `dedicatedFileName` | `String` |
| `terminalVerificationResults` | `terminalVerificationResults` | `String` |
| `transactionStatusInformation` | `transactionStatusInformation` | `String` |

### `v02_PMDsSepaCreditTransfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankName` | `bankName` | `String` |
| `bic` | `bic` | `String` |
| `iban` | `iban` | `String` |

### `v02_PMOCardMandateOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `amountType` | `amountType` | `String` |
| `description` | `description` | `String` |
| `endDate` | `endDate` | `Integer` |
| `interval` | `interval` | `String` |
| `intervalCount` | `intervalCount` | `Integer` |
| `reference` | `reference` | `String` |
| `startDate` | `startDate` | `Integer` |
| `supportedTypes` | `supportedTypes` | `List<String>` |

### `v02_PMOCardPresentRouting`

| Field | Stripe API Name | Type |
|---|---|---|
| `requestedPriority` | `requestedPriority` | `String` |

### `v02_PMOCustomerBalanceBankTransfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `euBankTransfer` | `euBankTransfer` | `v02_PMOCustomerBalanceEuBankAccount` |
| `requestedAddressTypes` | `requestedAddressTypes` | `List<String>` |
| `type` | `type` | `String` |

### `v02_PMOCustomerBalanceEuBankAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |

### `v02_PMOUsBankAccountMandateOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `collectionMethod` | `collectionMethod` | `String` |

### `v02_PackageDimensions`

| Field | Stripe API Name | Type |
|---|---|---|
| `height` | `height` | `Double` |
| `length` | `length` | `Double` |
| `weight` | `weight` | `Double` |
| `width` | `width` | `Double` |

### `v02_PaymentFlowsAmountDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `tip` | `tip` | `v02_PaymentFlowsAmountDetailsClientTip` |

### `v02_PaymentFlowsAmountDetailsClientTip`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |

### `v02_PaymentFlowsAutomaticPmsPi`

| Field | Stripe API Name | Type |
|---|---|---|
| `allowRedirects` | `allowRedirects` | `String` |
| `enabled` | `enabled` | `Boolean` |

### `v02_PaymentFlowsAutomaticPmsSi`

| Field | Stripe API Name | Type |
|---|---|---|
| `allowRedirects` | `allowRedirects` | `String` |
| `enabled` | `enabled` | `Boolean` |

### `v02_PaymentFlowsPiPresentmentDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `presentmentAmount` | `presentmentAmount` | `Integer` |
| `presentmentCurrency` | `presentmentCurrency` | `String` |

### `v02_PaymentFlowsPrivatePmsAlipayDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `buyerId` | `buyerId` | `String` |
| `fingerprint` | `fingerprint` | `String` |
| `transactionId` | `transactionId` | `String` |

### `v02_PaymentFlowsPrivatePmsKakaoPayPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentFlowsPrivatePmsKlarnaDob`

| Field | Stripe API Name | Type |
|---|---|---|
| `day` | `day` | `Integer` |
| `month` | `month` | `Integer` |
| `year` | `year` | `Integer` |

### `v02_PaymentFlowsPrivatePmsNaverPayPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentFlowsPrivatePmsPaycoPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |

### `v02_PaymentFlowsPrivatePmsSamsungPayPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |

### `v02_PaymentPagesCOSAdaptivePricing`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |

### `v02_PaymentPagesCOSAfterExpRecovery`

| Field | Stripe API Name | Type |
|---|---|---|
| `allowPromotionCodes` | `allowPromotionCodes` | `Boolean` |
| `enabled` | `enabled` | `Boolean` |
| `expiresAt` | `expiresAt` | `Integer` |
| `url` | `url` | `String` |

### `v02_PaymentPagesCOSAutomaticTax`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `liability` | `liability` | `v02_ConnectAccountReference` |
| `provider` | `provider` | `String` |
| `status` | `status` | `String` |

### `v02_PaymentPagesCOSCollectedInformation`

| Field | Stripe API Name | Type |
|---|---|---|
| `shippingDetails` | `shippingDetails` | `v02_PymtPagesCOSCheckoutAddressDetails` |

### `v02_PaymentPagesCOSConsentCollection`

| Field | Stripe API Name | Type |
|---|---|---|
| `paymentMethodReuseAgreement` | `paymentMethodReuseAgreement` | `v02_PaymentPagesCOSPmReuseAgreement` |
| `promotions` | `promotions` | `String` |
| `termsOfService` | `termsOfService` | `String` |

### `v02_PaymentPagesCOSCurrencyConversion`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountSubtotal` | `amountSubtotal` | `Integer` |
| `amountTotal` | `amountTotal` | `Integer` |
| `fxRate` | `fxRate` | `String` |
| `sourceCurrency` | `sourceCurrency` | `String` |

### `v02_PaymentPagesCOSCustomFields`

| Field | Stripe API Name | Type |
|---|---|---|
| `dropdown` | `dropdown` | `v02_PaymentPagesCOSCustomFieldsDropdown` |
| `key` | `key` | `String` |
| `label` | `label` | `v02_PaymentPagesCOSCustomFieldsLabel` |
| `numeric` | `numeric` | `v02_PaymentPagesCOSCustomFieldsNumeric` |
| `optional` | `optional` | `Boolean` |
| `text` | `text` | `v02_PaymentPagesCOSCustomFieldsText` |
| `type` | `type` | `String` |

### `v02_PaymentPagesCOSCustomFieldsDropdown`

| Field | Stripe API Name | Type |
|---|---|---|
| `defaultValue` | `defaultValue` | `String` |
| `options` | `options` | `List<v02_PaymentPagesCOSCustomFieldsOption>` |
| `value` | `value` | `String` |

### `v02_PaymentPagesCOSCustomFieldsLabel`

| Field | Stripe API Name | Type |
|---|---|---|
| `custom` | `custom` | `String` |
| `type` | `type` | `String` |

### `v02_PaymentPagesCOSCustomFieldsNumeric`

| Field | Stripe API Name | Type |
|---|---|---|
| `defaultValue` | `defaultValue` | `String` |
| `maximumLength` | `maximumLength` | `Integer` |
| `minimumLength` | `minimumLength` | `Integer` |
| `value` | `value` | `String` |

### `v02_PaymentPagesCOSCustomFieldsOption`

| Field | Stripe API Name | Type |
|---|---|---|
| `label` | `label` | `String` |
| `value` | `value` | `String` |

### `v02_PaymentPagesCOSCustomFieldsText`

| Field | Stripe API Name | Type |
|---|---|---|
| `defaultValue` | `defaultValue` | `String` |
| `maximumLength` | `maximumLength` | `Integer` |
| `minimumLength` | `minimumLength` | `Integer` |
| `value` | `value` | `String` |

### `v02_PaymentPagesCOSCustomText`

| Field | Stripe API Name | Type |
|---|---|---|
| `afterSubmit` | `afterSubmit` | `v02_PaymentPagesCOSCustomTextPosition` |
| `shippingAddress` | `shippingAddress` | `v02_PaymentPagesCOSCustomTextPosition` |
| `submit` | `submit` | `v02_PaymentPagesCOSCustomTextPosition` |
| `termsOfServiceAcceptance` | `termsOfServiceAcceptance` | `v02_PaymentPagesCOSCustomTextPosition` |

### `v02_PaymentPagesCOSCustomTextPosition`

| Field | Stripe API Name | Type |
|---|---|---|
| `message` | `message` | `String` |

### `v02_PaymentPagesCOSCustomerDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_Address` |
| `email` | `email` | `String` |
| `name` | `name` | `String` |
| `phone` | `phone` | `String` |
| `taxExempt` | `taxExempt` | `String` |
| `taxIds` | `taxIds` | `List<v02_PaymentPagesCheckoutSessionTaxId>` |

### `v02_PaymentPagesCOSInvoiceSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountTaxIds` | `accountTaxIds` | `List<v02_InvoiceAccountTaxIdsInner>` |
| `customFields` | `customFields` | `List<v02_InvoiceSettingCustomField>` |
| `description` | `description` | `String` |
| `footer` | `footer` | `String` |
| `issuer` | `issuer` | `v02_ConnectAccountReference` |
| `metadata` | `metadata` | `v02_Metadata` |
| `renderingOptions` | `renderingOptions` | `v02_InvoiceSettingCheckoutRndrOpts` |

### `v02_PaymentPagesCOSOptionalItem`

| Field | Stripe API Name | Type |
|---|---|---|
| `adjustableQuantity` | `adjustableQuantity` | `v02_PymtPagesCOSOptalItemAdjustableQuan` |
| `price` | `price` | `String` |
| `quantity` | `quantity` | `Integer` |

### `v02_PaymentPagesCOSPermissions`

| Field | Stripe API Name | Type |
|---|---|---|
| `updateShippingDetails` | `updateShippingDetails` | `String` |

### `v02_PaymentPagesCOSPhoneNumberCollection`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |

### `v02_PaymentPagesCOSPmReuseAgreement`

| Field | Stripe API Name | Type |
|---|---|---|
| `position` | `position` | `String` |

### `v02_PaymentPagesCOSShippingAddressCol`

| Field | Stripe API Name | Type |
|---|---|---|
| `allowedCountries` | `allowedCountries` | `List<String>` |

### `v02_PaymentPagesCOSShippingCost`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountSubtotal` | `amountSubtotal` | `Integer` |
| `amountTax` | `amountTax` | `Integer` |
| `amountTotal` | `amountTotal` | `Integer` |
| `shippingRate` | `shippingRate` | `String` |
| `taxes` | `taxes` | `List<v02_LineItemsTaxAmount>` |

### `v02_PaymentPagesCOSShippingOption`

| Field | Stripe API Name | Type |
|---|---|---|
| `shippingAmount` | `shippingAmount` | `Integer` |
| `shippingRate` | `shippingRate` | `String` |

### `v02_PaymentPagesCOSTaxIdCollection`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `required` | `required` | `String` |

### `v02_PaymentPagesCOSTotalDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountDiscount` | `amountDiscount` | `Integer` |
| `amountShipping` | `amountShipping` | `Integer` |
| `amountTax` | `amountTax` | `Integer` |
| `breakdown` | `breakdown` | `v02_PaymentPagesCOSTotalDetailsResBkd` |

### `v02_PaymentPagesCOSTotalDetailsResBkd`

| Field | Stripe API Name | Type |
|---|---|---|
| `discounts` | `discounts` | `List<v02_LineItemsDiscountAmount>` |
| `taxes` | `taxes` | `List<v02_LineItemsTaxAmount>` |

### `v02_PaymentPagesCheckoutSessionAfterExp`

| Field | Stripe API Name | Type |
|---|---|---|
| `recovery` | `recovery` | `v02_PaymentPagesCOSAfterExpRecovery` |

### `v02_PaymentPagesCheckoutSessionConsent`

| Field | Stripe API Name | Type |
|---|---|---|
| `promotions` | `promotions` | `String` |
| `termsOfService` | `termsOfService` | `String` |

### `v02_PaymentPagesCheckoutSessionDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_PaymentPagesCheckoutSessionInvCrtn`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `invoiceData` | `invoiceData` | `v02_PaymentPagesCOSInvoiceSettings` |

### `v02_PaymentPagesCheckoutSessionSavedPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `allowRedisplayFilters` | `allowRedisplayFilters` | `List<String>` |
| `paymentMethodRemove` | `paymentMethodRemove` | `String` |
| `paymentMethodSave` | `paymentMethodSave` | `String` |

### `v02_PaymentPagesCheckoutSessionTaxId`

| Field | Stripe API Name | Type |
|---|---|---|
| `type` | `type` | `String` |
| `value` | `value` | `String` |

### `v02_PaypalSellerProtection`

| Field | Stripe API Name | Type |
|---|---|---|
| `disputeCategories` | `disputeCategories` | `List<String>` |
| `status` | `status` | `String` |

### `v02_PiNxtactAlipayHandleRedirect`

| Field | Stripe API Name | Type |
|---|---|---|
| `nativeData` | `nativeData` | `String` |
| `nativeUrl` | `nativeUrl` | `String` |
| `returnUrl` | `returnUrl` | `String` |
| `url` | `url` | `String` |

### `v02_PiNxtactCardAwaitNotification`

| Field | Stripe API Name | Type |
|---|---|---|
| `chargeAttemptAt` | `chargeAttemptAt` | `Integer` |
| `customerApprovalRequired` | `customerApprovalRequired` | `Boolean` |

### `v02_PiNxtactCashappHandleRedirOrDspl`

| Field | Stripe API Name | Type |
|---|---|---|
| `hostedInstructionsUrl` | `hostedInstructionsUrl` | `String` |
| `mobileAuthUrl` | `mobileAuthUrl` | `String` |
| `qrCode` | `qrCode` | `v02_PaymentIntentNextActionCashappQrCode` |

### `v02_PiNxtactDisplayBankXferInstructions`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountRemaining` | `amountRemaining` | `Integer` |
| `r_currency` | `r_currency` | `String` |
| `financialAddresses` | `financialAddresses` | `List<v02_FundingInsBankXferFinAddress>` |
| `hostedInstructionsUrl` | `hostedInstructionsUrl` | `String` |
| `reference` | `reference` | `String` |
| `type` | `type` | `String` |

### `v02_PiNxtactDisplayMultibancoDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `entity` | `entity` | `String` |
| `expiresAt` | `expiresAt` | `Integer` |
| `hostedVoucherUrl` | `hostedVoucherUrl` | `String` |
| `reference` | `reference` | `String` |

### `v02_PiNxtactDisplayOxxoDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `expiresAfter` | `expiresAfter` | `Integer` |
| `hostedVoucherUrl` | `hostedVoucherUrl` | `String` |
| `r_number` | `r_number` | `String` |

### `v02_PiNxtactPaynowDisplayQrCode`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `String` |
| `hostedInstructionsUrl` | `hostedInstructionsUrl` | `String` |
| `imageUrlPng` | `imageUrlPng` | `String` |
| `imageUrlSvg` | `imageUrlSvg` | `String` |

### `v02_PiNxtactPromptpayDisplayQrCode`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `String` |
| `hostedInstructionsUrl` | `hostedInstructionsUrl` | `String` |
| `imageUrlPng` | `imageUrlPng` | `String` |
| `imageUrlSvg` | `imageUrlSvg` | `String` |

### `v02_PiNxtactSwishHandleRedirOrDsplQrCode`

| Field | Stripe API Name | Type |
|---|---|---|
| `hostedInstructionsUrl` | `hostedInstructionsUrl` | `String` |
| `mobileAuthUrl` | `mobileAuthUrl` | `String` |
| `qrCode` | `qrCode` | `v02_PaymentIntentNextActionSwishQrCode` |

### `v02_PiNxtactVerifyWithMicrodep`

| Field | Stripe API Name | Type |
|---|---|---|
| `arrivalDate` | `arrivalDate` | `Integer` |
| `hostedVerificationUrl` | `hostedVerificationUrl` | `String` |
| `microdepositType` | `microdepositType` | `String` |

### `v02_PiNxtactWechatPayDisplayQrCode`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `String` |
| `hostedInstructionsUrl` | `hostedInstructionsUrl` | `String` |
| `imageDataUrl` | `imageDataUrl` | `String` |
| `imageUrlPng` | `imageUrlPng` | `String` |
| `imageUrlSvg` | `imageUrlSvg` | `String` |

### `v02_PiNxtactWechatPayRedirToAndroidApp`

| Field | Stripe API Name | Type |
|---|---|---|
| `appId` | `appId` | `String` |
| `nonceStr` | `nonceStr` | `String` |
| `r_package` | `r_package` | `String` |
| `partnerId` | `partnerId` | `String` |
| `prepayId` | `prepayId` | `String` |
| `sign` | `sign` | `String` |
| `timestamp` | `timestamp` | `String` |

### `v02_PiNxtactWechatPayRedirectToIosApp`

| Field | Stripe API Name | Type |
|---|---|---|
| `nativeUrl` | `nativeUrl` | `String` |

### `v02_PiPMOMandateOptionsAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `customMandateUrl` | `customMandateUrl` | `String` |
| `intervalDescription` | `intervalDescription` | `String` |
| `paymentSchedule` | `paymentSchedule` | `String` |
| `transactionType` | `transactionType` | `String` |

### `v02_PiPMOMandateOptionsBacsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `referencePrefix` | `referencePrefix` | `String` |

### `v02_PiPMOMandateOptionsSepaDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `referencePrefix` | `referencePrefix` | `String` |

### `v02_PiProcingCustomerNotification`

| Field | Stripe API Name | Type |
|---|---|---|
| `approvalRequested` | `approvalRequested` | `Boolean` |
| `completesAt` | `completesAt` | `Integer` |

### `v02_PlinksCompletionBehaviorRedirect`

| Field | Stripe API Name | Type |
|---|---|---|
| `url` | `url` | `String` |

### `v02_PlinksOptionalItemAdjustableQuan`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `maximum` | `maximum` | `Integer` |
| `minimum` | `minimum` | `Integer` |

### `v02_PlinksResourceCFieldsDropdownOption`

| Field | Stripe API Name | Type |
|---|---|---|
| `label` | `label` | `String` |
| `value` | `value` | `String` |

### `v02_PlinksResourceCompletedSessions`

| Field | Stripe API Name | Type |
|---|---|---|
| `count` | `count` | `Integer` |
| `r_limit` | `r_limit` | `Integer` |

### `v02_PlinksResourceCompletionBConfPage`

| Field | Stripe API Name | Type |
|---|---|---|
| `customMessage` | `customMessage` | `String` |

### `v02_PlinksResourceCustomFieldsDropdown`

| Field | Stripe API Name | Type |
|---|---|---|
| `defaultValue` | `defaultValue` | `String` |
| `options` | `options` | `List<v02_PlinksResourceCFieldsDropdownOption>` |

### `v02_PlinksResourceCustomFieldsLabel`

| Field | Stripe API Name | Type |
|---|---|---|
| `custom` | `custom` | `String` |
| `type` | `type` | `String` |

### `v02_PlinksResourceCustomFieldsNumeric`

| Field | Stripe API Name | Type |
|---|---|---|
| `defaultValue` | `defaultValue` | `String` |
| `maximumLength` | `maximumLength` | `Integer` |
| `minimumLength` | `minimumLength` | `Integer` |

### `v02_PlinksResourceCustomTextPosition`

| Field | Stripe API Name | Type |
|---|---|---|
| `message` | `message` | `String` |

### `v02_PlinksResourcePmReuseAgreement`

| Field | Stripe API Name | Type |
|---|---|---|
| `position` | `position` | `String` |

### `v02_PlinksResourceShippingAddressCol`

| Field | Stripe API Name | Type |
|---|---|---|
| `allowedCountries` | `allowedCountries` | `List<String>` |

### `v02_PlinksResourceSubDataInvoiceSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `issuer` | `issuer` | `v02_ConnectAccountReference` |

### `v02_PmConfigBizPmConfigurationDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `id` | `id` | `String` |
| `parent` | `parent` | `String` |

### `v02_PmConfigResourceDisplayPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `overridable` | `overridable` | `Boolean` |
| `preference` | `preference` | `String` |
| `value` | `value` | `String` |

### `v02_PmConfigResourcePmProperties`

| Field | Stripe API Name | Type |
|---|---|---|
| `available` | `available` | `Boolean` |
| `displayPreference` | `displayPreference` | `v02_PmConfigResourceDisplayPreference` |

### `v02_PmDomainResourcePmStatus`

| Field | Stripe API Name | Type |
|---|---|---|
| `status` | `status` | `String` |
| `statusDetails` | `statusDetails` | `v02_PmDomainResourcePmStatusDetails` |

### `v02_PmDomainResourcePmStatusDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `errorMessage` | `errorMessage` | `String` |

### `v02_PortalFlowsAftCmplHostedConfirmation`

| Field | Stripe API Name | Type |
|---|---|---|
| `customMessage` | `customMessage` | `String` |

### `v02_PortalFlowsAfterCompletionRedirect`

| Field | Stripe API Name | Type |
|---|---|---|
| `returnUrl` | `returnUrl` | `String` |

### `v02_PortalFlowsCouponOffer`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |

### `v02_PortalFlowsFlow`

| Field | Stripe API Name | Type |
|---|---|---|
| `afterCompletion` | `afterCompletion` | `v02_PortalFlowsFlowAfterCompletion` |
| `subscriptionCancel` | `subscriptionCancel` | `v02_PortalFlowsFlowSubscriptionCancel` |
| `subscriptionUpdate` | `subscriptionUpdate` | `v02_PortalFlowsFlowSubscriptionUpdate` |
| `subscriptionUpdateConfirm` | `subscriptionUpdateConfirm` | `v02_PortalFlowsFlowSubUpdateConfirm` |
| `type` | `type` | `String` |

### `v02_PortalFlowsFlowAfterCompletion`

| Field | Stripe API Name | Type |
|---|---|---|
| `hostedConfirmation` | `hostedConfirmation` | `v02_PortalFlowsAftCmplHostedConfirmation` |
| `redirect` | `redirect` | `v02_PortalFlowsAfterCompletionRedirect` |
| `type` | `type` | `String` |

### `v02_PortalFlowsFlowSubUpdateConfirm`

| Field | Stripe API Name | Type |
|---|---|---|
| `discounts` | `discounts` | `List<v02_PortalFlowsSubUpdateConfirmDiscount>` |
| `items` | `items` | `List<v02_PortalFlowsSubUpdateConfirmItem>` |
| `subscription` | `subscription` | `String` |

### `v02_PortalFlowsFlowSubscriptionCancel`

| Field | Stripe API Name | Type |
|---|---|---|
| `retention` | `retention` | `v02_PortalFlowsRetention` |
| `subscription` | `subscription` | `String` |

### `v02_PortalFlowsFlowSubscriptionUpdate`

| Field | Stripe API Name | Type |
|---|---|---|
| `subscription` | `subscription` | `String` |

### `v02_PortalFlowsRetention`

| Field | Stripe API Name | Type |
|---|---|---|
| `couponOffer` | `couponOffer` | `v02_PortalFlowsCouponOffer` |
| `type` | `type` | `String` |

### `v02_PortalFlowsSubUpdateConfirmDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_PortalFlowsSubUpdateConfirmItem`

| Field | Stripe API Name | Type |
|---|---|---|
| `id` | `id` | `String` |
| `price` | `price` | `String` |
| `quantity` | `quantity` | `Integer` |

### `v02_PostChargesCaptureReqTransferData`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |

### `v02_PostCustomersFundingInsReqBankXfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `euBankTransfer` | `euBankTransfer` | `v02_PostCustomersFundingInsReqEuXfer` |
| `requestedAddressTypes` | `requestedAddressTypes` | `List<String>` |
| `type` | `type` | `String` |

### `v02_PostCustomersFundingInsReqEuXfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |

### `v02_PostInvoicesAddLinesReqLine`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `description` | `description` | `String` |
| `discountable` | `discountable` | `Boolean` |
| `discounts` | `discounts` | `List<v02_PostInvoicesAddLinesReqLineDiscount>` |
| `invoiceItem` | `invoiceItem` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `period` | `period` | `v02_PostInvoicesAddLinesReqLinePeriod` |
| `priceData` | `priceData` | `v02_PostInvoicesAddLinesReqLinePriceData` |
| `pricing` | `pricing` | `v02_PostInvoicesAddLinesReqLinePricing` |
| `quantity` | `quantity` | `Integer` |
| `taxAmounts` | `taxAmounts` | `List<v02_PostInvoicesAddLinesReqLineTaxAmount>` |
| `taxRates` | `taxRates` | `List<String>` |

### `v02_PostInvoicesAddLinesReqLineDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_PostInvoicesAddLinesReqLinePeriod`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_end` | `r_end` | `Integer` |
| `start` | `start` | `Integer` |

### `v02_PostInvoicesAddLinesReqLinePriceData`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `product` | `product` | `String` |
| `productData` | `productData` | `v02_PostInvsAddLinesReqLinePdataProdData` |
| `taxBehavior` | `taxBehavior` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_PostInvoicesAddLinesReqLinePricing`

| Field | Stripe API Name | Type |
|---|---|---|
| `price` | `price` | `String` |

### `v02_PostInvoicesAddLinesReqLineTaxAmount`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `taxRateData` | `taxRateData` | `v02_PostInvsAddLinesReqLineTaxAmount` |
| `taxabilityReason` | `taxabilityReason` | `String` |
| `taxableAmount` | `taxableAmount` | `Integer` |

### `v02_PostInvoicesCreatePreviewReqDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_PostInvoicesCreatePreviewReqIssuer`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_PostInvoicesRemoveLinesReqLine`

| Field | Stripe API Name | Type |
|---|---|---|
| `behavior` | `behavior` | `String` |
| `id` | `id` | `String` |

### `v02_PostInvoicesUpdateLinesReqLine`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `description` | `description` | `String` |
| `discountable` | `discountable` | `Boolean` |
| `discounts` | `discounts` | `List<v02_PostInvsUpdateLinesReqLineDiscount>` |
| `id` | `id` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `period` | `period` | `v02_PostInvoicesUpdateLinesReqLinePeriod` |
| `priceData` | `priceData` | `v02_PostInvoicesUpdateLinesReqLinePdata` |
| `pricing` | `pricing` | `v02_PostInvsUpdateLinesReqLinePricing` |
| `quantity` | `quantity` | `Integer` |
| `taxAmounts` | `taxAmounts` | `List<v02_PostInvsUpdateLinesReqLineTaxAmount>` |
| `taxRates` | `taxRates` | `List<String>` |

### `v02_PostInvoicesUpdateLinesReqLinePdata`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `product` | `product` | `String` |
| `productData` | `productData` | `v02_PostInvsUpdateLinesReqLinePdtProdDt` |
| `taxBehavior` | `taxBehavior` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_PostInvoicesUpdateLinesReqLinePeriod`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_end` | `r_end` | `Integer` |
| `start` | `start` | `Integer` |

### `v02_PostInvsAddLinesReqLinePdataProdData`

| Field | Stripe API Name | Type |
|---|---|---|
| `description` | `description` | `String` |
| `images` | `images` | `List<String>` |
| `metadata` | `metadata` | `v02_Metadata` |
| `name` | `name` | `String` |
| `taxCode` | `taxCode` | `String` |

### `v02_PostInvsAddLinesReqLineTaxAmount`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |
| `description` | `description` | `String` |
| `displayName` | `displayName` | `String` |
| `inclusive` | `inclusive` | `Boolean` |
| `jurisdiction` | `jurisdiction` | `String` |
| `jurisdictionLevel` | `jurisdictionLevel` | `String` |
| `percentage` | `percentage` | `Double` |
| `state` | `state` | `String` |
| `taxType` | `taxType` | `String` |

### `v02_PostInvsCreatePreviewReqAutomatic`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_PostInvsCreatePreviewReqAutomaticTax`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `liability` | `liability` | `v02_PostInvsCreatePreviewReqAutomatic` |

### `v02_PostInvsCreatePreviewReqCusDeta`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_PostInvsCreatePreviewReqCusDeta1`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_PostInvsCreatePreviewReqCusDetai` |
| `name` | `name` | `String` |
| `phone` | `phone` | `String` |

### `v02_PostInvsCreatePreviewReqCusDeta2`

| Field | Stripe API Name | Type |
|---|---|---|
| `ipAddress` | `ipAddress` | `String` |

### `v02_PostInvsCreatePreviewReqCusDetai`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_PostInvsCreatePreviewReqCusDetai1`

| Field | Stripe API Name | Type |
|---|---|---|
| `type` | `type` | `String` |
| `value` | `value` | `String` |

### `v02_PostInvsCreatePreviewReqCusDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_PostInvsCreatePreviewReqCusDeta` |
| `shipping` | `shipping` | `v02_PostInvsCreatePreviewReqCusDeta1` |
| `tax` | `tax` | `v02_PostInvsCreatePreviewReqCusDeta2` |
| `taxExempt` | `taxExempt` | `String` |
| `taxIds` | `taxIds` | `List<v02_PostInvsCreatePreviewReqCusDetai1>` |

### `v02_PostInvsCreatePreviewReqInvItem`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `r_currency` | `r_currency` | `String` |
| `description` | `description` | `String` |
| `discountable` | `discountable` | `Boolean` |
| `discounts` | `discounts` | `List<v02_PostInvsCreatePreviewReqInvItem>` |
| `invoiceitem` | `invoiceitem` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `period` | `period` | `v02_PostInvsCreatePreviewReqInvItem1` |
| `price` | `price` | `String` |
| `priceData` | `priceData` | `v02_PostInvsCreatePreviewReqInvItemPdata` |
| `quantity` | `quantity` | `Integer` |
| `taxBehavior` | `taxBehavior` | `String` |
| `taxCode` | `taxCode` | `String` |
| `taxRates` | `taxRates` | `List<String>` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_PostInvsCreatePreviewReqInvItem1`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_end` | `r_end` | `Integer` |
| `start` | `start` | `Integer` |

### `v02_PostInvsCreatePreviewReqInvItemPdata`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `product` | `product` | `String` |
| `taxBehavior` | `taxBehavior` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_PostInvsCreatePreviewReqSchDeta`

| Field | Stripe API Name | Type |
|---|---|---|
| `addInvoiceItems` | `addInvoiceItems` | `List<v02_PostInvsCreatePreviewReqSchDetails>` |
| `applicationFeePercent` | `applicationFeePercent` | `Double` |
| `automaticTax` | `automaticTax` | `v02_PostInvsCreatePreviewReqSchDetail` |
| `billingCycleAnchor` | `billingCycleAnchor` | `String` |
| `collectionMethod` | `collectionMethod` | `String` |
| `r_currency` | `r_currency` | `String` |
| `defaultPaymentMethod` | `defaultPaymentMethod` | `String` |
| `defaultTaxRates` | `defaultTaxRates` | `List<String>` |
| `description` | `description` | `String` |
| `discounts` | `discounts` | `List<v02_PostInvsCreatePreviewReqSchDetai>` |
| `endDate` | `endDate` | `v02_PostInvsCreatePreviewReqSchDetail1` |
| `invoiceSettings` | `invoiceSettings` | `v02_PostInvsCreatePreviewReqSchDetail2` |
| `items` | `items` | `List<v02_PostInvsCreatePreviewReqSchDeta>` |
| `iterations` | `iterations` | `Integer` |
| `metadata` | `metadata` | `v02_Metadata` |
| `onBehalfOf` | `onBehalfOf` | `String` |
| `prorationBehavior` | `prorationBehavior` | `String` |
| `startDate` | `startDate` | `v02_PostInvsCreatePreviewReqSchDetail4` |
| `transferData` | `transferData` | `v02_PostInvsCreatePreviewReqSchDetail5` |
| `trial` | `trial` | `Boolean` |
| `trialEnd` | `trialEnd` | `v02_PostInvsCreatePreviewReqSchDetail6` |

### `v02_PostInvsCreatePreviewReqSchDetai`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_PostInvsCreatePreviewReqSchDetail`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `liability` | `liability` | `v02_PostInvsCreatePreviewReqSchDetails1` |

### `v02_PostInvsCreatePreviewReqSchDetail1`

| Field | Stripe API Name | Type |
|---|---|---|
| `integerField` | `integerField` | `Integer` |
| `stringField` | `stringField` | `String` |

### `v02_PostInvsCreatePreviewReqSchDetail2`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountTaxIds` | `accountTaxIds` | `List<String>` |
| `daysUntilDue` | `daysUntilDue` | `Integer` |
| `issuer` | `issuer` | `v02_PostInvsCreatePreviewReqSchDetails2` |

### `v02_PostInvsCreatePreviewReqSchDetail4`

| Field | Stripe API Name | Type |
|---|---|---|
| `integerField` | `integerField` | `Integer` |
| `stringField` | `stringField` | `String` |

### `v02_PostInvsCreatePreviewReqSchDetail5`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountPercent` | `amountPercent` | `Double` |
| `destination` | `destination` | `String` |

### `v02_PostInvsCreatePreviewReqSchDetail6`

| Field | Stripe API Name | Type |
|---|---|---|
| `integerField` | `integerField` | `Integer` |
| `stringField` | `stringField` | `String` |

### `v02_PostInvsCreatePreviewReqSchDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `endBehavior` | `endBehavior` | `String` |
| `phases` | `phases` | `List<v02_PostInvsCreatePreviewReqSchDeta>` |
| `prorationBehavior` | `prorationBehavior` | `String` |

### `v02_PostInvsCreatePreviewReqSchDetails1`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_PostInvsCreatePreviewReqSchDetails2`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_PostInvsCreatePreviewReqSubDeta`

| Field | Stripe API Name | Type |
|---|---|---|
| `clearUsage` | `clearUsage` | `Boolean` |
| `deleted` | `deleted` | `Boolean` |
| `discounts` | `discounts` | `List<v02_PostInvsCreatePreviewReqSubDetai>` |
| `id` | `id` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `plan` | `plan` | `String` |
| `price` | `price` | `String` |
| `priceData` | `priceData` | `v02_PostInvsCreatePreviewReqSubDetai1` |
| `quantity` | `quantity` | `Integer` |
| `taxRates` | `taxRates` | `List<String>` |

### `v02_PostInvsCreatePreviewReqSubDetai`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_PostInvsCreatePreviewReqSubDetai1`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `product` | `product` | `String` |
| `recurring` | `recurring` | `v02_PostInvsCreatePreviewReqSubDetail1` |
| `taxBehavior` | `taxBehavior` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_PostInvsCreatePreviewReqSubDetai2`

| Field | Stripe API Name | Type |
|---|---|---|
| `stringField` | `stringField` | `String` |
| `integerField` | `integerField` | `Integer` |

### `v02_PostInvsCreatePreviewReqSubDetail`

| Field | Stripe API Name | Type |
|---|---|---|
| `stringField` | `stringField` | `String` |
| `integerField` | `integerField` | `Integer` |

### `v02_PostInvsCreatePreviewReqSubDetail1`

| Field | Stripe API Name | Type |
|---|---|---|
| `interval` | `interval` | `String` |
| `intervalCount` | `intervalCount` | `Integer` |

### `v02_PostInvsCreatePreviewReqSubDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `billingCycleAnchor` | `billingCycleAnchor` | `v02_PostInvsCreatePreviewReqSubDetail` |
| `cancelAt` | `cancelAt` | `Integer` |
| `cancelAtPeriodEnd` | `cancelAtPeriodEnd` | `Boolean` |
| `cancelNow` | `cancelNow` | `Boolean` |
| `defaultTaxRates` | `defaultTaxRates` | `List<String>` |
| `items` | `items` | `List<v02_PostInvsCreatePreviewReqSubDeta>` |
| `prorationBehavior` | `prorationBehavior` | `String` |
| `prorationDate` | `prorationDate` | `Integer` |
| `resumeAt` | `resumeAt` | `String` |
| `startDate` | `startDate` | `Integer` |
| `trialEnd` | `trialEnd` | `v02_PostInvsCreatePreviewReqSubDetai2` |

### `v02_PostInvsUpdateLinesReqLineDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_PostInvsUpdateLinesReqLinePdtProdDt`

| Field | Stripe API Name | Type |
|---|---|---|
| `description` | `description` | `String` |
| `images` | `images` | `List<String>` |
| `metadata` | `metadata` | `v02_Metadata` |
| `name` | `name` | `String` |
| `taxCode` | `taxCode` | `String` |

### `v02_PostInvsUpdateLinesReqLinePricing`

| Field | Stripe API Name | Type |
|---|---|---|
| `price` | `price` | `String` |

### `v02_PostInvsUpdateLinesReqLineTaxAmo`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |
| `description` | `description` | `String` |
| `displayName` | `displayName` | `String` |
| `inclusive` | `inclusive` | `Boolean` |
| `jurisdiction` | `jurisdiction` | `String` |
| `jurisdictionLevel` | `jurisdictionLevel` | `String` |
| `percentage` | `percentage` | `Double` |
| `state` | `state` | `String` |
| `taxType` | `taxType` | `String` |

### `v02_PostInvsUpdateLinesReqLineTaxAmount`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `taxRateData` | `taxRateData` | `v02_PostInvsUpdateLinesReqLineTaxAmo` |
| `taxabilityReason` | `taxabilityReason` | `String` |
| `taxableAmount` | `taxableAmount` | `Integer` |

### `v02_PostPaymentIntentsCaptureReqXferData`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |

### `v02_PostPaymentIntentsConfirmReqPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `acssDebit` | `acssDebit` | `v02_PostPisConfirmReqPMOAcssDebit` |
| `affirm` | `affirm` | `v02_PostPisConfirmReqPMOAffirm` |
| `afterpayClearpay` | `afterpayClearpay` | `v02_PostPisConfirmReqPMOAftClrpay` |
| `alipay` | `alipay` | `v02_PostPisConfirmReqPMOAlipay` |
| `alma` | `alma` | `v02_PostPaymentIntentsConfirmReqPMOAlma` |
| `amazonPay` | `amazonPay` | `v02_PostPisConfirmReqPMOAmazonPay` |
| `auBecsDebit` | `auBecsDebit` | `v02_PostPisConfirmReqPMOAuBecsDebit` |
| `bacsDebit` | `bacsDebit` | `v02_PostPisConfirmReqPMOBacsDebit` |
| `bancontact` | `bancontact` | `v02_PostPisConfirmReqPMOBancontact` |
| `billie` | `billie` | `v02_PostPisConfirmReqPMOBillie` |
| `blik` | `blik` | `v02_PostPaymentIntentsConfirmReqPMOBlik` |
| `boleto` | `boleto` | `v02_PostPisConfirmReqPMOBoleto` |
| `card` | `card` | `v02_PostPaymentIntentsConfirmReqPMOCard` |
| `cardPresent` | `cardPresent` | `v02_PostPisConfirmReqPMOCardPresent` |
| `cashapp` | `cashapp` | `v02_PostPisConfirmReqPMOCashapp` |
| `customerBalance` | `customerBalance` | `v02_PostPisConfirmReqPMOCustbal` |
| `eps` | `eps` | `v02_PostPaymentIntentsConfirmReqPMOEps` |
| `fpx` | `fpx` | `v02_PostPaymentIntentsConfirmReqPMOFpx` |
| `giropay` | `giropay` | `v02_PostPisConfirmReqPMOGiropay` |
| `grabpay` | `grabpay` | `v02_PostPisConfirmReqPMOGrabpay` |
| `ideal` | `ideal` | `v02_PostPaymentIntentsConfirmReqPMOIdeal` |
| `interacPresent` | `interacPresent` | `List<v02_AdditionalString>` |
| `kakaoPay` | `kakaoPay` | `v02_PostPisConfirmReqPMOKakaoPay` |
| `klarna` | `klarna` | `v02_PostPisConfirmReqPMOKlarna` |
| `konbini` | `konbini` | `v02_PostPisConfirmReqPMOKonbini` |
| `krCard` | `krCard` | `v02_PostPisConfirmReqPMOKrCard` |
| `link` | `link` | `v02_PostPaymentIntentsConfirmReqPMOLink` |
| `mobilepay` | `mobilepay` | `v02_PostPisConfirmReqPMOMobilepay` |
| `multibanco` | `multibanco` | `v02_PostPisConfirmReqPMOMultibanco` |
| `naverPay` | `naverPay` | `v02_PostPisConfirmReqPMONaverPay` |
| `nzBankAccount` | `nzBankAccount` | `v02_PostPisConfirmReqPMONzBankAccount` |
| `oxxo` | `oxxo` | `v02_PostPaymentIntentsConfirmReqPMOOxxo` |
| `p24` | `p24` | `v02_PostPaymentIntentsConfirmReqPMOP24` |
| `payByBank` | `payByBank` | `List<v02_AdditionalString>` |
| `payco` | `payco` | `v02_PostPaymentIntentsConfirmReqPMOPayco` |
| `paynow` | `paynow` | `v02_PostPisConfirmReqPMOPaynow` |
| `paypal` | `paypal` | `v02_PostPisConfirmReqPMOPaypal` |
| `pix` | `pix` | `v02_PostPaymentIntentsConfirmReqPMOPix` |
| `promptpay` | `promptpay` | `v02_PostPisConfirmReqPMOPromptpay` |
| `revolutPay` | `revolutPay` | `v02_PostPisConfirmReqPMORevolutPay` |
| `samsungPay` | `samsungPay` | `v02_PostPisConfirmReqPMOSamsungPay` |
| `sepaDebit` | `sepaDebit` | `v02_PostPisConfirmReqPMOSepaDebit` |
| `sofort` | `sofort` | `v02_PostPisConfirmReqPMOSofort` |
| `swish` | `swish` | `v02_PostPaymentIntentsConfirmReqPMOSwish` |
| `twint` | `twint` | `v02_PostPaymentIntentsConfirmReqPMOTwint` |
| `usBankAccount` | `usBankAccount` | `v02_PostPisConfirmReqPMOUsBankAccount` |
| `wechatPay` | `wechatPay` | `v02_PostPisConfirmReqPMOWechatPay` |
| `zip` | `zip` | `v02_PostPaymentIntentsConfirmReqPMOZip` |

### `v02_PostPaymentIntentsConfirmReqPMOAlma`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |

### `v02_PostPaymentIntentsConfirmReqPMOBlik`

| Field | Stripe API Name | Type |
|---|---|---|
| `code` | `code` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPaymentIntentsConfirmReqPMOCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `cvcToken` | `cvcToken` | `String` |
| `installments` | `installments` | `v02_PostPisConfirmReqPMOCardInstallments` |
| `mandateOptions` | `mandateOptions` | `v02_PostPisConfirmReqPMOCardManOpts` |
| `moto` | `moto` | `Boolean` |
| `network` | `network` | `String` |
| `requestExtendedAuthorization` | `requestExtendedAuthorization` | `String` |
| `requestIncrementalAuthorization` | `requestIncrementalAuthorization` | `String` |
| `requestMulticapture` | `requestMulticapture` | `String` |
| `requestOvercapture` | `requestOvercapture` | `String` |
| `requestThreeDSecure` | `requestThreeDSecure` | `String` |
| `requireCvcRecollection` | `requireCvcRecollection` | `Boolean` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `statementDescriptorSuffixKana` | `statementDescriptorSuffixKana` | `String` |
| `statementDescriptorSuffixKanji` | `statementDescriptorSuffixKanji` | `String` |
| `threeDSecure` | `threeDSecure` | `v02_PostPisConfirmReqPMOCardThreeDSecure` |

### `v02_PostPaymentIntentsConfirmReqPMOEps`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPaymentIntentsConfirmReqPMOFpx`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPaymentIntentsConfirmReqPMOIdeal`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPaymentIntentsConfirmReqPMOLink`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `persistentToken` | `persistentToken` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPaymentIntentsConfirmReqPMOOxxo`

| Field | Stripe API Name | Type |
|---|---|---|
| `expiresAfterDays` | `expiresAfterDays` | `Integer` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPaymentIntentsConfirmReqPMOP24`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `tosShownAndAccepted` | `tosShownAndAccepted` | `Boolean` |

### `v02_PostPaymentIntentsConfirmReqPMOPayco`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |

### `v02_PostPaymentIntentsConfirmReqPMOPix`

| Field | Stripe API Name | Type |
|---|---|---|
| `expiresAfterSeconds` | `expiresAfterSeconds` | `Integer` |
| `expiresAt` | `expiresAt` | `Integer` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPaymentIntentsConfirmReqPMOSwish`

| Field | Stripe API Name | Type |
|---|---|---|
| `reference` | `reference` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPaymentIntentsConfirmReqPMOTwint`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPaymentIntentsConfirmReqPMOZip`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPaymentIntentsConfirmReqShipping`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_PostPisConfirmReqShippingAddress` |
| `carrier` | `carrier` | `String` |
| `name` | `name` | `String` |
| `phone` | `phone` | `String` |
| `trackingNumber` | `trackingNumber` | `String` |

### `v02_PostPaymentIntentsIncAuthReqXferData`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |

### `v02_PostPisConfirmReqOffSession`

| Field | Stripe API Name | Type |
|---|---|---|
| `booleanField` | `booleanField` | `Boolean` |
| `stringField` | `stringField` | `String` |

### `v02_PostPisConfirmReqPMOAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_PostPisConfirmReqPMOAcssDebitManOpts` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_PostPisConfirmReqPMOAcssDebitManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `customMandateUrl` | `customMandateUrl` | `String` |
| `intervalDescription` | `intervalDescription` | `String` |
| `paymentSchedule` | `paymentSchedule` | `String` |
| `transactionType` | `transactionType` | `String` |

### `v02_PostPisConfirmReqPMOAffirm`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `preferredLocale` | `preferredLocale` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPisConfirmReqPMOAftClrpay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `reference` | `reference` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPisConfirmReqPMOAlipay`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPisConfirmReqPMOAmazonPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPisConfirmReqPMOAuBecsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |

### `v02_PostPisConfirmReqPMOBacsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_PostPisConfirmReqPMOBacsDebitManOpts` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |

### `v02_PostPisConfirmReqPMOBacsDebitManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `referencePrefix` | `referencePrefix` | `String` |

### `v02_PostPisConfirmReqPMOBancontact`

| Field | Stripe API Name | Type |
|---|---|---|
| `preferredLanguage` | `preferredLanguage` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPisConfirmReqPMOBillie`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |

### `v02_PostPisConfirmReqPMOBoleto`

| Field | Stripe API Name | Type |
|---|---|---|
| `expiresAfterDays` | `expiresAfterDays` | `Integer` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPisConfirmReqPMOCardInstallments`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `plan` | `plan` | `v02_PostPisConfirmReqPMOCardInstlsPlan` |

### `v02_PostPisConfirmReqPMOCardInstlsPlan`

| Field | Stripe API Name | Type |
|---|---|---|
| `count` | `count` | `Integer` |
| `interval` | `interval` | `String` |
| `type` | `type` | `String` |

### `v02_PostPisConfirmReqPMOCardManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `amountType` | `amountType` | `String` |
| `description` | `description` | `String` |
| `endDate` | `endDate` | `Integer` |
| `interval` | `interval` | `String` |
| `intervalCount` | `intervalCount` | `Integer` |
| `reference` | `reference` | `String` |
| `startDate` | `startDate` | `Integer` |
| `supportedTypes` | `supportedTypes` | `List<String>` |

### `v02_PostPisConfirmReqPMOCardPresent`

| Field | Stripe API Name | Type |
|---|---|---|
| `requestExtendedAuthorization` | `requestExtendedAuthorization` | `Boolean` |
| `requestIncrementalAuthorizationSupport` | `requestIncrementalAuthorizationSupport` | `Boolean` |
| `routing` | `routing` | `v02_PostPisConfirmReqPMOCardPrsRouting` |

### `v02_PostPisConfirmReqPMOCardPrsRouting`

| Field | Stripe API Name | Type |
|---|---|---|
| `requestedPriority` | `requestedPriority` | `String` |

### `v02_PostPisConfirmReqPMOCardThreeDS`

| Field | Stripe API Name | Type |
|---|---|---|
| `cartesBancaires` | `cartesBancaires` | `v02_PostPisConfirmReqPMOCardThreeDSe` |

### `v02_PostPisConfirmReqPMOCardThreeDSe`

| Field | Stripe API Name | Type |
|---|---|---|
| `cbAvalgo` | `cbAvalgo` | `String` |
| `cbExemption` | `cbExemption` | `String` |
| `cbScore` | `cbScore` | `Integer` |

### `v02_PostPisConfirmReqPMOCardThreeDSecure`

| Field | Stripe API Name | Type |
|---|---|---|
| `aresTransStatus` | `aresTransStatus` | `String` |
| `cryptogram` | `cryptogram` | `String` |
| `electronicCommerceIndicator` | `electronicCommerceIndicator` | `String` |
| `exemptionIndicator` | `exemptionIndicator` | `String` |
| `networkOptions` | `networkOptions` | `v02_PostPisConfirmReqPMOCardThreeDS` |
| `requestorChallengeIndicator` | `requestorChallengeIndicator` | `String` |
| `transactionId` | `transactionId` | `String` |
| `version` | `version` | `String` |

### `v02_PostPisConfirmReqPMOCashapp`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPisConfirmReqPMOCustbal`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankTransfer` | `bankTransfer` | `v02_PostPisConfirmReqPMOCustbalBankXfer` |
| `fundingType` | `fundingType` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPisConfirmReqPMOCustbalBankXfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `euBankTransfer` | `euBankTransfer` | `v02_PostPisConfirmReqPMOCustbalEuXfer` |
| `requestedAddressTypes` | `requestedAddressTypes` | `List<String>` |
| `type` | `type` | `String` |

### `v02_PostPisConfirmReqPMOCustbalEuXfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |

### `v02_PostPisConfirmReqPMOGiropay`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPisConfirmReqPMOGrabpay`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPisConfirmReqPMOKakaoPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPisConfirmReqPMOKlarna`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `preferredLocale` | `preferredLocale` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPisConfirmReqPMOKonbini`

| Field | Stripe API Name | Type |
|---|---|---|
| `confirmationNumber` | `confirmationNumber` | `String` |
| `expiresAfterDays` | `expiresAfterDays` | `Integer` |
| `expiresAt` | `expiresAt` | `Integer` |
| `productDescription` | `productDescription` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPisConfirmReqPMOKrCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPisConfirmReqPMOMobilepay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPisConfirmReqPMOMultibanco`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPisConfirmReqPMONaverPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPisConfirmReqPMONzBankAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |

### `v02_PostPisConfirmReqPMOPaynow`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPisConfirmReqPMOPaypal`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `preferredLocale` | `preferredLocale` | `String` |
| `reference` | `reference` | `String` |
| `riskCorrelationId` | `riskCorrelationId` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPisConfirmReqPMOPromptpay`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPisConfirmReqPMORevolutPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPisConfirmReqPMOSamsungPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |

### `v02_PostPisConfirmReqPMOSepaDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_PostPisConfirmReqPMOSepaDebitManOpts` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |

### `v02_PostPisConfirmReqPMOSepaDebitManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `referencePrefix` | `referencePrefix` | `String` |

### `v02_PostPisConfirmReqPMOSofort`

| Field | Stripe API Name | Type |
|---|---|---|
| `preferredLanguage` | `preferredLanguage` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPisConfirmReqPMOUsBacctFin`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountSubcategories` | `accountSubcategories` | `List<String>` |

### `v02_PostPisConfirmReqPMOUsBacctFinConn`

| Field | Stripe API Name | Type |
|---|---|---|
| `filters` | `filters` | `v02_PostPisConfirmReqPMOUsBacctFin` |
| `permissions` | `permissions` | `List<String>` |
| `prefetch` | `prefetch` | `List<String>` |
| `returnUrl` | `returnUrl` | `String` |

### `v02_PostPisConfirmReqPMOUsBacctManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `collectionMethod` | `collectionMethod` | `String` |

### `v02_PostPisConfirmReqPMOUsBacctNetworks`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `List<String>` |

### `v02_PostPisConfirmReqPMOUsBankAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `financialConnections` | `financialConnections` | `v02_PostPisConfirmReqPMOUsBacctFinConn` |
| `mandateOptions` | `mandateOptions` | `v02_PostPisConfirmReqPMOUsBacctManOpts` |
| `networks` | `networks` | `v02_PostPisConfirmReqPMOUsBacctNetworks` |
| `preferredSettlementSpeed` | `preferredSettlementSpeed` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_PostPisConfirmReqPMOWechatPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `appId` | `appId` | `String` |
| `client` | `client` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PostPisConfirmReqPaymentMethodData`

| Field | Stripe API Name | Type |
|---|---|---|
| `acssDebit` | `acssDebit` | `v02_PostPisConfirmReqPmDataAcssDebit` |
| `affirm` | `affirm` | `List<v02_AdditionalString>` |
| `afterpayClearpay` | `afterpayClearpay` | `List<v02_AdditionalString>` |
| `alipay` | `alipay` | `List<v02_AdditionalString>` |
| `allowRedisplay` | `allowRedisplay` | `String` |
| `alma` | `alma` | `List<v02_AdditionalString>` |
| `amazonPay` | `amazonPay` | `List<v02_AdditionalString>` |
| `auBecsDebit` | `auBecsDebit` | `v02_PostPisConfirmReqPmDataAuBecsDebit` |
| `bacsDebit` | `bacsDebit` | `v02_PostPisConfirmReqPmDataBacsDebit` |
| `bancontact` | `bancontact` | `List<v02_AdditionalString>` |
| `billie` | `billie` | `List<v02_AdditionalString>` |
| `billingDetails` | `billingDetails` | `v02_PostPisConfirmReqPmDataBd` |
| `blik` | `blik` | `List<v02_AdditionalString>` |
| `boleto` | `boleto` | `v02_PostPisConfirmReqPmDataBoleto` |
| `cashapp` | `cashapp` | `List<v02_AdditionalString>` |
| `customerBalance` | `customerBalance` | `List<v02_AdditionalString>` |
| `eps` | `eps` | `v02_PostPisConfirmReqPmDataEps` |
| `fpx` | `fpx` | `v02_PostPisConfirmReqPmDataFpx` |
| `giropay` | `giropay` | `List<v02_AdditionalString>` |
| `grabpay` | `grabpay` | `List<v02_AdditionalString>` |
| `ideal` | `ideal` | `v02_PostPisConfirmReqPmDataIdeal` |
| `interacPresent` | `interacPresent` | `List<v02_AdditionalString>` |
| `kakaoPay` | `kakaoPay` | `List<v02_AdditionalString>` |
| `klarna` | `klarna` | `v02_PostPisConfirmReqPmDataKlarna` |
| `konbini` | `konbini` | `List<v02_AdditionalString>` |
| `krCard` | `krCard` | `List<v02_AdditionalString>` |
| `link` | `link` | `List<v02_AdditionalString>` |
| `metadata` | `metadata` | `v02_Metadata` |
| `mobilepay` | `mobilepay` | `List<v02_AdditionalString>` |
| `multibanco` | `multibanco` | `List<v02_AdditionalString>` |
| `naverPay` | `naverPay` | `v02_PostPisConfirmReqPmDataNaverPay` |
| `nzBankAccount` | `nzBankAccount` | `v02_PostPisConfirmReqPmDataNzBacct` |
| `oxxo` | `oxxo` | `List<v02_AdditionalString>` |
| `p24` | `p24` | `v02_PostPisConfirmReqPmDataP24` |
| `payByBank` | `payByBank` | `List<v02_AdditionalString>` |
| `payco` | `payco` | `List<v02_AdditionalString>` |
| `paynow` | `paynow` | `List<v02_AdditionalString>` |
| `paypal` | `paypal` | `List<v02_AdditionalString>` |
| `pix` | `pix` | `List<v02_AdditionalString>` |
| `promptpay` | `promptpay` | `List<v02_AdditionalString>` |
| `radarOptions` | `radarOptions` | `v02_PostPisConfirmReqPmDataRadarOptions` |
| `revolutPay` | `revolutPay` | `List<v02_AdditionalString>` |
| `samsungPay` | `samsungPay` | `List<v02_AdditionalString>` |
| `satispay` | `satispay` | `List<v02_AdditionalString>` |
| `sepaDebit` | `sepaDebit` | `v02_PostPisConfirmReqPmDataSepaDebit` |
| `sofort` | `sofort` | `v02_PostPisConfirmReqPmDataSofort` |
| `swish` | `swish` | `List<v02_AdditionalString>` |
| `twint` | `twint` | `List<v02_AdditionalString>` |
| `type` | `type` | `String` |
| `usBankAccount` | `usBankAccount` | `v02_PostPisConfirmReqPmDataUsBacct` |
| `wechatPay` | `wechatPay` | `List<v02_AdditionalString>` |
| `zip` | `zip` | `List<v02_AdditionalString>` |

### `v02_PostPisConfirmReqPmDataAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountNumber` | `accountNumber` | `String` |
| `institutionNumber` | `institutionNumber` | `String` |
| `transitNumber` | `transitNumber` | `String` |

### `v02_PostPisConfirmReqPmDataAuBecsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountNumber` | `accountNumber` | `String` |
| `bsbNumber` | `bsbNumber` | `String` |

### `v02_PostPisConfirmReqPmDataBacsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountNumber` | `accountNumber` | `String` |
| `sortCode` | `sortCode` | `String` |

### `v02_PostPisConfirmReqPmDataBd`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_PostPisConfirmReqPmDataBdAddress` |
| `email` | `email` | `String` |
| `name` | `name` | `String` |
| `phone` | `phone` | `String` |
| `taxId` | `taxId` | `String` |

### `v02_PostPisConfirmReqPmDataBdAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_PostPisConfirmReqPmDataBoleto`

| Field | Stripe API Name | Type |
|---|---|---|
| `taxId` | `taxId` | `String` |

### `v02_PostPisConfirmReqPmDataEps`

| Field | Stripe API Name | Type |
|---|---|---|
| `bank` | `bank` | `String` |

### `v02_PostPisConfirmReqPmDataFpx`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderType` | `accountHolderType` | `String` |
| `bank` | `bank` | `String` |

### `v02_PostPisConfirmReqPmDataIdeal`

| Field | Stripe API Name | Type |
|---|---|---|
| `bank` | `bank` | `String` |

### `v02_PostPisConfirmReqPmDataKlarna`

| Field | Stripe API Name | Type |
|---|---|---|
| `dob` | `dob` | `v02_PostPisConfirmReqPmDataKlarnaDob` |

### `v02_PostPisConfirmReqPmDataKlarnaDob`

| Field | Stripe API Name | Type |
|---|---|---|
| `day` | `day` | `Integer` |
| `month` | `month` | `Integer` |
| `year` | `year` | `Integer` |

### `v02_PostPisConfirmReqPmDataNaverPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `funding` | `funding` | `String` |

### `v02_PostPisConfirmReqPmDataNzBacct`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderName` | `accountHolderName` | `String` |
| `accountNumber` | `accountNumber` | `String` |
| `bankCode` | `bankCode` | `String` |
| `branchCode` | `branchCode` | `String` |
| `reference` | `reference` | `String` |
| `suffix` | `suffix` | `String` |

### `v02_PostPisConfirmReqPmDataP24`

| Field | Stripe API Name | Type |
|---|---|---|
| `bank` | `bank` | `String` |

### `v02_PostPisConfirmReqPmDataRadarOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `session` | `session` | `String` |

### `v02_PostPisConfirmReqPmDataSepaDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `iban` | `iban` | `String` |

### `v02_PostPisConfirmReqPmDataSofort`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |

### `v02_PostPisConfirmReqPmDataUsBacct`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderType` | `accountHolderType` | `String` |
| `accountNumber` | `accountNumber` | `String` |
| `accountType` | `accountType` | `String` |
| `financialConnectionsAccount` | `financialConnectionsAccount` | `String` |
| `routingNumber` | `routingNumber` | `String` |

### `v02_PostPisConfirmReqRadarOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `session` | `session` | `String` |

### `v02_PostPisConfirmReqShippingAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_PostSetupIntentsConfirmReqPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `acssDebit` | `acssDebit` | `v02_PostSisConfirmReqPMOAcssDebit` |
| `amazonPay` | `amazonPay` | `List<v02_AdditionalString>` |
| `bacsDebit` | `bacsDebit` | `v02_PostSisConfirmReqPMOBacsDebit` |
| `card` | `card` | `v02_PostSetupIntentsConfirmReqPMOCard` |
| `cardPresent` | `cardPresent` | `List<v02_AdditionalString>` |
| `link` | `link` | `v02_PostSetupIntentsConfirmReqPMOLink` |
| `paypal` | `paypal` | `v02_PostSetupIntentsConfirmReqPMOPaypal` |
| `sepaDebit` | `sepaDebit` | `v02_PostSisConfirmReqPMOSepaDebit` |
| `usBankAccount` | `usBankAccount` | `v02_PostSisConfirmReqPMOUsBankAccount` |

### `v02_PostSetupIntentsConfirmReqPMOCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_PostSisConfirmReqPMOCardManOpts` |
| `moto` | `moto` | `Boolean` |
| `network` | `network` | `String` |
| `requestThreeDSecure` | `requestThreeDSecure` | `String` |
| `threeDSecure` | `threeDSecure` | `v02_PostSisConfirmReqPMOCardThreeDSecure` |

### `v02_PostSetupIntentsConfirmReqPMOLink`

| Field | Stripe API Name | Type |
|---|---|---|
| `persistentToken` | `persistentToken` | `String` |

### `v02_PostSetupIntentsConfirmReqPMOPaypal`

| Field | Stripe API Name | Type |
|---|---|---|
| `billingAgreementId` | `billingAgreementId` | `String` |

### `v02_PostSisConfirmReqPMOAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `mandateOptions` | `mandateOptions` | `v02_PostSisConfirmReqPMOAcssDebitManOpts` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_PostSisConfirmReqPMOAcssDebitManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `customMandateUrl` | `customMandateUrl` | `String` |
| `defaultFor` | `defaultFor` | `List<String>` |
| `intervalDescription` | `intervalDescription` | `String` |
| `paymentSchedule` | `paymentSchedule` | `String` |
| `transactionType` | `transactionType` | `String` |

### `v02_PostSisConfirmReqPMOBacsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_PostSisConfirmReqPMOBacsDebitManOpts` |

### `v02_PostSisConfirmReqPMOBacsDebitManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `referencePrefix` | `referencePrefix` | `String` |

### `v02_PostSisConfirmReqPMOCardManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `amountType` | `amountType` | `String` |
| `r_currency` | `r_currency` | `String` |
| `description` | `description` | `String` |
| `endDate` | `endDate` | `Integer` |
| `interval` | `interval` | `String` |
| `intervalCount` | `intervalCount` | `Integer` |
| `reference` | `reference` | `String` |
| `startDate` | `startDate` | `Integer` |
| `supportedTypes` | `supportedTypes` | `List<String>` |

### `v02_PostSisConfirmReqPMOCardThreeDS`

| Field | Stripe API Name | Type |
|---|---|---|
| `cartesBancaires` | `cartesBancaires` | `v02_PostSisConfirmReqPMOCardThreeDSe` |

### `v02_PostSisConfirmReqPMOCardThreeDSe`

| Field | Stripe API Name | Type |
|---|---|---|
| `cbAvalgo` | `cbAvalgo` | `String` |
| `cbExemption` | `cbExemption` | `String` |
| `cbScore` | `cbScore` | `Integer` |

### `v02_PostSisConfirmReqPMOCardThreeDSecure`

| Field | Stripe API Name | Type |
|---|---|---|
| `aresTransStatus` | `aresTransStatus` | `String` |
| `cryptogram` | `cryptogram` | `String` |
| `electronicCommerceIndicator` | `electronicCommerceIndicator` | `String` |
| `networkOptions` | `networkOptions` | `v02_PostSisConfirmReqPMOCardThreeDS` |
| `requestorChallengeIndicator` | `requestorChallengeIndicator` | `String` |
| `transactionId` | `transactionId` | `String` |
| `version` | `version` | `String` |

### `v02_PostSisConfirmReqPMOSepaDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_PostSisConfirmReqPMOSepaDebitManOpts` |

### `v02_PostSisConfirmReqPMOSepaDebitManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `referencePrefix` | `referencePrefix` | `String` |

### `v02_PostSisConfirmReqPMOUsBacctFin`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountSubcategories` | `accountSubcategories` | `List<String>` |

### `v02_PostSisConfirmReqPMOUsBacctFinConn`

| Field | Stripe API Name | Type |
|---|---|---|
| `filters` | `filters` | `v02_PostSisConfirmReqPMOUsBacctFin` |
| `permissions` | `permissions` | `List<String>` |
| `prefetch` | `prefetch` | `List<String>` |
| `returnUrl` | `returnUrl` | `String` |

### `v02_PostSisConfirmReqPMOUsBacctManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `collectionMethod` | `collectionMethod` | `String` |

### `v02_PostSisConfirmReqPMOUsBacctNetworks`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `List<String>` |

### `v02_PostSisConfirmReqPMOUsBankAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `financialConnections` | `financialConnections` | `v02_PostSisConfirmReqPMOUsBacctFinConn` |
| `mandateOptions` | `mandateOptions` | `v02_PostSisConfirmReqPMOUsBacctManOpts` |
| `networks` | `networks` | `v02_PostSisConfirmReqPMOUsBacctNetworks` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_PostSisConfirmReqPaymentMethodData`

| Field | Stripe API Name | Type |
|---|---|---|
| `acssDebit` | `acssDebit` | `v02_PostSisConfirmReqPmDataAcssDebit` |
| `affirm` | `affirm` | `List<v02_AdditionalString>` |
| `afterpayClearpay` | `afterpayClearpay` | `List<v02_AdditionalString>` |
| `alipay` | `alipay` | `List<v02_AdditionalString>` |
| `allowRedisplay` | `allowRedisplay` | `String` |
| `alma` | `alma` | `List<v02_AdditionalString>` |
| `amazonPay` | `amazonPay` | `List<v02_AdditionalString>` |
| `auBecsDebit` | `auBecsDebit` | `v02_PostSisConfirmReqPmDataAuBecsDebit` |
| `bacsDebit` | `bacsDebit` | `v02_PostSisConfirmReqPmDataBacsDebit` |
| `bancontact` | `bancontact` | `List<v02_AdditionalString>` |
| `billie` | `billie` | `List<v02_AdditionalString>` |
| `billingDetails` | `billingDetails` | `v02_PostSisConfirmReqPmDataBd` |
| `blik` | `blik` | `List<v02_AdditionalString>` |
| `boleto` | `boleto` | `v02_PostSisConfirmReqPmDataBoleto` |
| `cashapp` | `cashapp` | `List<v02_AdditionalString>` |
| `customerBalance` | `customerBalance` | `List<v02_AdditionalString>` |
| `eps` | `eps` | `v02_PostSisConfirmReqPmDataEps` |
| `fpx` | `fpx` | `v02_PostSisConfirmReqPmDataFpx` |
| `giropay` | `giropay` | `List<v02_AdditionalString>` |
| `grabpay` | `grabpay` | `List<v02_AdditionalString>` |
| `ideal` | `ideal` | `v02_PostSisConfirmReqPmDataIdeal` |
| `interacPresent` | `interacPresent` | `List<v02_AdditionalString>` |
| `kakaoPay` | `kakaoPay` | `List<v02_AdditionalString>` |
| `klarna` | `klarna` | `v02_PostSisConfirmReqPmDataKlarna` |
| `konbini` | `konbini` | `List<v02_AdditionalString>` |
| `krCard` | `krCard` | `List<v02_AdditionalString>` |
| `link` | `link` | `List<v02_AdditionalString>` |
| `metadata` | `metadata` | `v02_Metadata` |
| `mobilepay` | `mobilepay` | `List<v02_AdditionalString>` |
| `multibanco` | `multibanco` | `List<v02_AdditionalString>` |
| `naverPay` | `naverPay` | `v02_PostSisConfirmReqPmDataNaverPay` |
| `nzBankAccount` | `nzBankAccount` | `v02_PostSisConfirmReqPmDataNzBacct` |
| `oxxo` | `oxxo` | `List<v02_AdditionalString>` |
| `p24` | `p24` | `v02_PostSisConfirmReqPmDataP24` |
| `payByBank` | `payByBank` | `List<v02_AdditionalString>` |
| `payco` | `payco` | `List<v02_AdditionalString>` |
| `paynow` | `paynow` | `List<v02_AdditionalString>` |
| `paypal` | `paypal` | `List<v02_AdditionalString>` |
| `pix` | `pix` | `List<v02_AdditionalString>` |
| `promptpay` | `promptpay` | `List<v02_AdditionalString>` |
| `radarOptions` | `radarOptions` | `v02_PostSisConfirmReqPmDataRadarOptions` |
| `revolutPay` | `revolutPay` | `List<v02_AdditionalString>` |
| `samsungPay` | `samsungPay` | `List<v02_AdditionalString>` |
| `satispay` | `satispay` | `List<v02_AdditionalString>` |
| `sepaDebit` | `sepaDebit` | `v02_PostSisConfirmReqPmDataSepaDebit` |
| `sofort` | `sofort` | `v02_PostSisConfirmReqPmDataSofort` |
| `swish` | `swish` | `List<v02_AdditionalString>` |
| `twint` | `twint` | `List<v02_AdditionalString>` |
| `type` | `type` | `String` |
| `usBankAccount` | `usBankAccount` | `v02_PostSisConfirmReqPmDataUsBacct` |
| `wechatPay` | `wechatPay` | `List<v02_AdditionalString>` |
| `zip` | `zip` | `List<v02_AdditionalString>` |

### `v02_PostSisConfirmReqPmDataAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountNumber` | `accountNumber` | `String` |
| `institutionNumber` | `institutionNumber` | `String` |
| `transitNumber` | `transitNumber` | `String` |

### `v02_PostSisConfirmReqPmDataAuBecsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountNumber` | `accountNumber` | `String` |
| `bsbNumber` | `bsbNumber` | `String` |

### `v02_PostSisConfirmReqPmDataBacsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountNumber` | `accountNumber` | `String` |
| `sortCode` | `sortCode` | `String` |

### `v02_PostSisConfirmReqPmDataBd`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_PostSisConfirmReqPmDataBdAddress` |
| `email` | `email` | `String` |
| `name` | `name` | `String` |
| `phone` | `phone` | `String` |
| `taxId` | `taxId` | `String` |

### `v02_PostSisConfirmReqPmDataBdAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_PostSisConfirmReqPmDataBoleto`

| Field | Stripe API Name | Type |
|---|---|---|
| `taxId` | `taxId` | `String` |

### `v02_PostSisConfirmReqPmDataEps`

| Field | Stripe API Name | Type |
|---|---|---|
| `bank` | `bank` | `String` |

### `v02_PostSisConfirmReqPmDataFpx`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderType` | `accountHolderType` | `String` |
| `bank` | `bank` | `String` |

### `v02_PostSisConfirmReqPmDataIdeal`

| Field | Stripe API Name | Type |
|---|---|---|
| `bank` | `bank` | `String` |

### `v02_PostSisConfirmReqPmDataKlarna`

| Field | Stripe API Name | Type |
|---|---|---|
| `dob` | `dob` | `v02_PostSisConfirmReqPmDataKlarnaDob` |

### `v02_PostSisConfirmReqPmDataKlarnaDob`

| Field | Stripe API Name | Type |
|---|---|---|
| `day` | `day` | `Integer` |
| `month` | `month` | `Integer` |
| `year` | `year` | `Integer` |

### `v02_PostSisConfirmReqPmDataNaverPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `funding` | `funding` | `String` |

### `v02_PostSisConfirmReqPmDataNzBacct`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderName` | `accountHolderName` | `String` |
| `accountNumber` | `accountNumber` | `String` |
| `bankCode` | `bankCode` | `String` |
| `branchCode` | `branchCode` | `String` |
| `reference` | `reference` | `String` |
| `suffix` | `suffix` | `String` |

### `v02_PostSisConfirmReqPmDataP24`

| Field | Stripe API Name | Type |
|---|---|---|
| `bank` | `bank` | `String` |

### `v02_PostSisConfirmReqPmDataRadarOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `session` | `session` | `String` |

### `v02_PostSisConfirmReqPmDataSepaDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `iban` | `iban` | `String` |

### `v02_PostSisConfirmReqPmDataSofort`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |

### `v02_PostSisConfirmReqPmDataUsBacct`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderType` | `accountHolderType` | `String` |
| `accountNumber` | `accountNumber` | `String` |
| `accountType` | `accountType` | `String` |
| `financialConnectionsAccount` | `financialConnectionsAccount` | `String` |
| `routingNumber` | `routingNumber` | `String` |

### `v02_PostTermrxProcPiReqProcConfig`

| Field | Stripe API Name | Type |
|---|---|---|
| `allowRedisplay` | `allowRedisplay` | `String` |
| `enableCustomerCancellation` | `enableCustomerCancellation` | `Boolean` |
| `skipTipping` | `skipTipping` | `Boolean` |
| `tipping` | `tipping` | `v02_PostTermrxProcPiReqProcConfigTipping` |

### `v02_PostTermrxProcPiReqProcConfigTipping`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountEligible` | `amountEligible` | `Integer` |

### `v02_PostTermrxProcSiReqProcConfig`

| Field | Stripe API Name | Type |
|---|---|---|
| `enableCustomerCancellation` | `enableCustomerCancellation` | `Boolean` |

### `v02_PostTermrxRefundPymtReqRefundPy`

| Field | Stripe API Name | Type |
|---|---|---|
| `enableCustomerCancellation` | `enableCustomerCancellation` | `Boolean` |

### `v02_PymtFlowsPrivatePmsCardDetailsA`

| Field | Stripe API Name | Type |
|---|---|---|
| `status` | `status` | `String` |

### `v02_PymtFlowsPrivatePmsCardDetailsApi`

| Field | Stripe API Name | Type |
|---|---|---|
| `maximumAmountCapturable` | `maximumAmountCapturable` | `Integer` |
| `status` | `status` | `String` |

### `v02_PymtFlowsPrivatePmsCardDetailsApiEn`

| Field | Stripe API Name | Type |
|---|---|---|
| `status` | `status` | `String` |

### `v02_PymtFlowsPrivatePmsCardPrsCommo`

| Field | Stripe API Name | Type |
|---|---|---|
| `type` | `type` | `String` |

### `v02_PymtFlowsPrivatePmsFinConnCommonL`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountSubcategories` | `accountSubcategories` | `List<String>` |

### `v02_PymtPagesCOSCheckoutAddressDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_Address` |
| `name` | `name` | `String` |

### `v02_PymtPagesCOSOptalItemAdjustableQuan`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `maximum` | `maximum` | `Integer` |
| `minimum` | `minimum` | `Integer` |

### `v02_PymtPagesPrivateCardPMORestrictions`

| Field | Stripe API Name | Type |
|---|---|---|
| `brandsBlocked` | `brandsBlocked` | `List<String>` |

### `v02_RadarRadarOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `session` | `session` | `String` |

### `v02_Recurring`

| Field | Stripe API Name | Type |
|---|---|---|
| `interval` | `interval` | `String` |
| `intervalCount` | `intervalCount` | `Integer` |
| `meter` | `meter` | `String` |
| `trialPeriodDays` | `trialPeriodDays` | `Integer` |
| `usageType` | `usageType` | `String` |

### `v02_RevolutPayUnderlyingPmFundingDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `card` | `card` | `v02_PaymentMethodDetailsPassthroughCard` |
| `type` | `type` | `String` |

### `v02_SchedulesPhaseAutomaticTax`

| Field | Stripe API Name | Type |
|---|---|---|
| `disabledReason` | `disabledReason` | `String` |
| `enabled` | `enabled` | `Boolean` |
| `liability` | `liability` | `v02_ConnectAccountReference` |

### `v02_SecretKeyParam`

| Field | Stripe API Name | Type |
|---|---|---|
| `customerAcceptance` | `customerAcceptance` | `v02_CustomerAcceptanceParam` |

### `v02_SepaDebitGeneratedFrom`

| Field | Stripe API Name | Type |
|---|---|---|
| `charge` | `charge` | `String` |
| `setupAttempt` | `setupAttempt` | `String` |

### `v02_Shipping`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_Address` |
| `carrier` | `carrier` | `String` |
| `name` | `name` | `String` |
| `phone` | `phone` | `String` |
| `trackingNumber` | `trackingNumber` | `String` |

### `v02_SiPMOMandateOptionsAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `customMandateUrl` | `customMandateUrl` | `String` |
| `defaultFor` | `defaultFor` | `List<String>` |
| `intervalDescription` | `intervalDescription` | `String` |
| `paymentSchedule` | `paymentSchedule` | `String` |
| `transactionType` | `transactionType` | `String` |

### `v02_SiPMOMandateOptionsBacsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `referencePrefix` | `referencePrefix` | `String` |

### `v02_SiPMOMandateOptionsSepaDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `referencePrefix` | `referencePrefix` | `String` |

### `v02_SourceCodeVerificationFlow`

| Field | Stripe API Name | Type |
|---|---|---|
| `attemptsRemaining` | `attemptsRemaining` | `Integer` |
| `status` | `status` | `String` |

### `v02_SourceOrder`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `r_currency` | `r_currency` | `String` |
| `email` | `email` | `String` |
| `items` | `items` | `List<v02_SourceOrderItem>` |
| `shipping` | `shipping` | `v02_Shipping` |

### `v02_SourceOrderItem`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `r_currency` | `r_currency` | `String` |
| `description` | `description` | `String` |
| `parent` | `parent` | `String` |
| `quantity` | `quantity` | `Integer` |
| `type` | `type` | `String` |

### `v02_SourceOwner`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_Address` |
| `email` | `email` | `String` |
| `name` | `name` | `String` |
| `phone` | `phone` | `String` |
| `verifiedAddress` | `verifiedAddress` | `v02_Address` |
| `verifiedEmail` | `verifiedEmail` | `String` |
| `verifiedName` | `verifiedName` | `String` |
| `verifiedPhone` | `verifiedPhone` | `String` |

### `v02_SourceReceiverFlow`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `String` |
| `amountCharged` | `amountCharged` | `Integer` |
| `amountReceived` | `amountReceived` | `Integer` |
| `amountReturned` | `amountReturned` | `Integer` |
| `refundAttributesMethod` | `refundAttributesMethod` | `String` |
| `refundAttributesStatus` | `refundAttributesStatus` | `String` |

### `v02_SourceRedirectFlow`

| Field | Stripe API Name | Type |
|---|---|---|
| `failureReason` | `failureReason` | `String` |
| `returnUrl` | `returnUrl` | `String` |
| `status` | `status` | `String` |
| `url` | `url` | `String` |

### `v02_SourceTypeAchCreditTransfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountNumber` | `accountNumber` | `String` |
| `bankName` | `bankName` | `String` |
| `fingerprint` | `fingerprint` | `String` |
| `refundAccountHolderName` | `refundAccountHolderName` | `String` |
| `refundAccountHolderType` | `refundAccountHolderType` | `String` |
| `refundRoutingNumber` | `refundRoutingNumber` | `String` |
| `routingNumber` | `routingNumber` | `String` |
| `swiftCode` | `swiftCode` | `String` |

### `v02_SourceTypeAchDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankName` | `bankName` | `String` |
| `country` | `country` | `String` |
| `fingerprint` | `fingerprint` | `String` |
| `last4` | `last4` | `String` |
| `routingNumber` | `routingNumber` | `String` |
| `type` | `type` | `String` |

### `v02_SourceTypeAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankAddressCity` | `bankAddressCity` | `String` |
| `bankAddressLine1` | `bankAddressLine1` | `String` |
| `bankAddressLine2` | `bankAddressLine2` | `String` |
| `bankAddressPostalCode` | `bankAddressPostalCode` | `String` |
| `bankName` | `bankName` | `String` |
| `category` | `category` | `String` |
| `country` | `country` | `String` |
| `fingerprint` | `fingerprint` | `String` |
| `last4` | `last4` | `String` |
| `routingNumber` | `routingNumber` | `String` |

### `v02_SourceTypeAlipay`

| Field | Stripe API Name | Type |
|---|---|---|
| `dataString` | `dataString` | `String` |
| `nativeUrl` | `nativeUrl` | `String` |
| `statementDescriptor` | `statementDescriptor` | `String` |

### `v02_SourceTypeAuBecsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `bsbNumber` | `bsbNumber` | `String` |
| `fingerprint` | `fingerprint` | `String` |
| `last4` | `last4` | `String` |

### `v02_SourceTypeBancontact`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankCode` | `bankCode` | `String` |
| `bankName` | `bankName` | `String` |
| `bic` | `bic` | `String` |
| `ibanLast4` | `ibanLast4` | `String` |
| `preferredLanguage` | `preferredLanguage` | `String` |
| `statementDescriptor` | `statementDescriptor` | `String` |

### `v02_SourceTypeCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `addressLine1Check` | `addressLine1Check` | `String` |
| `addressZipCheck` | `addressZipCheck` | `String` |
| `brand` | `brand` | `String` |
| `country` | `country` | `String` |
| `cvcCheck` | `cvcCheck` | `String` |
| `description` | `description` | `String` |
| `dynamicLast4` | `dynamicLast4` | `String` |
| `expMonth` | `expMonth` | `Integer` |
| `expYear` | `expYear` | `Integer` |
| `fingerprint` | `fingerprint` | `String` |
| `funding` | `funding` | `String` |
| `iin` | `iin` | `String` |
| `issuer` | `issuer` | `String` |
| `last4` | `last4` | `String` |
| `name` | `name` | `String` |
| `threeDSecure` | `threeDSecure` | `String` |
| `tokenizationMethod` | `tokenizationMethod` | `String` |

### `v02_SourceTypeCardPresent`

| Field | Stripe API Name | Type |
|---|---|---|
| `applicationCryptogram` | `applicationCryptogram` | `String` |
| `applicationPreferredName` | `applicationPreferredName` | `String` |
| `authorizationCode` | `authorizationCode` | `String` |
| `authorizationResponseCode` | `authorizationResponseCode` | `String` |
| `brand` | `brand` | `String` |
| `country` | `country` | `String` |
| `cvmType` | `cvmType` | `String` |
| `dataType` | `dataType` | `String` |
| `dedicatedFileName` | `dedicatedFileName` | `String` |
| `description` | `description` | `String` |
| `emvAuthData` | `emvAuthData` | `String` |
| `evidenceCustomerSignature` | `evidenceCustomerSignature` | `String` |
| `evidenceTransactionCertificate` | `evidenceTransactionCertificate` | `String` |
| `expMonth` | `expMonth` | `Integer` |
| `expYear` | `expYear` | `Integer` |
| `fingerprint` | `fingerprint` | `String` |
| `funding` | `funding` | `String` |
| `iin` | `iin` | `String` |
| `issuer` | `issuer` | `String` |
| `last4` | `last4` | `String` |
| `posDeviceId` | `posDeviceId` | `String` |
| `posEntryMode` | `posEntryMode` | `String` |
| `readMethod` | `readMethod` | `String` |
| `reader` | `reader` | `String` |
| `terminalVerificationResults` | `terminalVerificationResults` | `String` |
| `transactionStatusInformation` | `transactionStatusInformation` | `String` |

### `v02_SourceTypeEps`

| Field | Stripe API Name | Type |
|---|---|---|
| `reference` | `reference` | `String` |
| `statementDescriptor` | `statementDescriptor` | `String` |

### `v02_SourceTypeGiropay`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankCode` | `bankCode` | `String` |
| `bankName` | `bankName` | `String` |
| `bic` | `bic` | `String` |
| `statementDescriptor` | `statementDescriptor` | `String` |

### `v02_SourceTypeIdeal`

| Field | Stripe API Name | Type |
|---|---|---|
| `bank` | `bank` | `String` |
| `bic` | `bic` | `String` |
| `ibanLast4` | `ibanLast4` | `String` |
| `statementDescriptor` | `statementDescriptor` | `String` |

### `v02_SourceTypeKlarna`

| Field | Stripe API Name | Type |
|---|---|---|
| `backgroundImageUrl` | `backgroundImageUrl` | `String` |
| `clientToken` | `clientToken` | `String` |
| `firstName` | `firstName` | `String` |
| `lastName` | `lastName` | `String` |
| `locale` | `locale` | `String` |
| `logoUrl` | `logoUrl` | `String` |
| `pageTitle` | `pageTitle` | `String` |
| `payLaterAssetUrlsDescriptive` | `payLaterAssetUrlsDescriptive` | `String` |
| `payLaterAssetUrlsStandard` | `payLaterAssetUrlsStandard` | `String` |
| `payLaterName` | `payLaterName` | `String` |
| `payLaterRedirectUrl` | `payLaterRedirectUrl` | `String` |
| `payNowAssetUrlsDescriptive` | `payNowAssetUrlsDescriptive` | `String` |
| `payNowAssetUrlsStandard` | `payNowAssetUrlsStandard` | `String` |
| `payNowName` | `payNowName` | `String` |
| `payNowRedirectUrl` | `payNowRedirectUrl` | `String` |
| `payOverTimeAssetUrlsDescriptive` | `payOverTimeAssetUrlsDescriptive` | `String` |
| `payOverTimeAssetUrlsStandard` | `payOverTimeAssetUrlsStandard` | `String` |
| `payOverTimeName` | `payOverTimeName` | `String` |
| `payOverTimeRedirectUrl` | `payOverTimeRedirectUrl` | `String` |
| `paymentMethodCategories` | `paymentMethodCategories` | `String` |
| `purchaseCountry` | `purchaseCountry` | `String` |
| `purchaseType` | `purchaseType` | `String` |
| `redirectUrl` | `redirectUrl` | `String` |
| `shippingDelay` | `shippingDelay` | `Integer` |
| `shippingFirstName` | `shippingFirstName` | `String` |
| `shippingLastName` | `shippingLastName` | `String` |

### `v02_SourceTypeMultibanco`

| Field | Stripe API Name | Type |
|---|---|---|
| `entity` | `entity` | `String` |
| `reference` | `reference` | `String` |
| `refundAccountHolderAddressCity` | `refundAccountHolderAddressCity` | `String` |
| `refundAccountHolderAddressCountry` | `refundAccountHolderAddressCountry` | `String` |
| `refundAccountHolderAddressLine1` | `refundAccountHolderAddressLine1` | `String` |
| `refundAccountHolderAddressLine2` | `refundAccountHolderAddressLine2` | `String` |
| `refundAccountHolderAddressPostalCode` | `refundAccountHolderAddressPostalCode` | `String` |
| `refundAccountHolderAddressState` | `refundAccountHolderAddressState` | `String` |
| `refundAccountHolderName` | `refundAccountHolderName` | `String` |
| `refundIban` | `refundIban` | `String` |

### `v02_SourceTypeP24`

| Field | Stripe API Name | Type |
|---|---|---|
| `reference` | `reference` | `String` |

### `v02_SourceTypeSepaCreditTransfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankName` | `bankName` | `String` |
| `bic` | `bic` | `String` |
| `iban` | `iban` | `String` |
| `refundAccountHolderAddressCity` | `refundAccountHolderAddressCity` | `String` |
| `refundAccountHolderAddressCountry` | `refundAccountHolderAddressCountry` | `String` |
| `refundAccountHolderAddressLine1` | `refundAccountHolderAddressLine1` | `String` |
| `refundAccountHolderAddressLine2` | `refundAccountHolderAddressLine2` | `String` |
| `refundAccountHolderAddressPostalCode` | `refundAccountHolderAddressPostalCode` | `String` |
| `refundAccountHolderAddressState` | `refundAccountHolderAddressState` | `String` |
| `refundAccountHolderName` | `refundAccountHolderName` | `String` |
| `refundIban` | `refundIban` | `String` |

### `v02_SourceTypeSepaDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankCode` | `bankCode` | `String` |
| `branchCode` | `branchCode` | `String` |
| `country` | `country` | `String` |
| `fingerprint` | `fingerprint` | `String` |
| `last4` | `last4` | `String` |
| `mandateReference` | `mandateReference` | `String` |
| `mandateUrl` | `mandateUrl` | `String` |

### `v02_SourceTypeSofort`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankCode` | `bankCode` | `String` |
| `bankName` | `bankName` | `String` |
| `bic` | `bic` | `String` |
| `country` | `country` | `String` |
| `ibanLast4` | `ibanLast4` | `String` |
| `preferredLanguage` | `preferredLanguage` | `String` |
| `statementDescriptor` | `statementDescriptor` | `String` |

### `v02_SourceTypeThreeDSecure`

| Field | Stripe API Name | Type |
|---|---|---|
| `addressLine1Check` | `addressLine1Check` | `String` |
| `addressZipCheck` | `addressZipCheck` | `String` |
| `authenticated` | `authenticated` | `Boolean` |
| `brand` | `brand` | `String` |
| `card` | `card` | `String` |
| `country` | `country` | `String` |
| `customer` | `customer` | `String` |
| `cvcCheck` | `cvcCheck` | `String` |
| `description` | `description` | `String` |
| `dynamicLast4` | `dynamicLast4` | `String` |
| `expMonth` | `expMonth` | `Integer` |
| `expYear` | `expYear` | `Integer` |
| `fingerprint` | `fingerprint` | `String` |
| `funding` | `funding` | `String` |
| `iin` | `iin` | `String` |
| `issuer` | `issuer` | `String` |
| `last4` | `last4` | `String` |
| `name` | `name` | `String` |
| `threeDSecure` | `threeDSecure` | `String` |
| `tokenizationMethod` | `tokenizationMethod` | `String` |

### `v02_SourceTypeWechat`

| Field | Stripe API Name | Type |
|---|---|---|
| `prepayId` | `prepayId` | `String` |
| `qrCodeUrl` | `qrCodeUrl` | `String` |
| `statementDescriptor` | `statementDescriptor` | `String` |

### `v02_SubPendingInvoiceItemInterval`

| Field | Stripe API Name | Type |
|---|---|---|
| `interval` | `interval` | `String` |
| `intervalCount` | `intervalCount` | `Integer` |

### `v02_SubScheduleConfigurationItem`

| Field | Stripe API Name | Type |
|---|---|---|
| `discounts` | `discounts` | `List<v02_DiscountsResourceStackableDiscount>` |
| `metadata` | `metadata` | `v02_Metadata` |
| `plan` | `plan` | `String` |
| `price` | `price` | `String` |
| `quantity` | `quantity` | `Integer` |
| `taxRates` | `taxRates` | `List<v02_TaxRate>` |

### `v02_SubSchedulePhaseConfiguration`

| Field | Stripe API Name | Type |
|---|---|---|
| `addInvoiceItems` | `addInvoiceItems` | `List<v02_SubscriptionScheduleAddInvoiceItem>` |
| `applicationFeePercent` | `applicationFeePercent` | `Double` |
| `automaticTax` | `automaticTax` | `v02_SchedulesPhaseAutomaticTax` |
| `billingCycleAnchor` | `billingCycleAnchor` | `String` |
| `collectionMethod` | `collectionMethod` | `String` |
| `r_currency` | `r_currency` | `String` |
| `defaultPaymentMethod` | `defaultPaymentMethod` | `String` |
| `defaultTaxRates` | `defaultTaxRates` | `List<v02_TaxRate>` |
| `description` | `description` | `String` |
| `discounts` | `discounts` | `List<v02_DiscountsResourceStackableDiscount>` |
| `endDate` | `endDate` | `Integer` |
| `invoiceSettings` | `invoiceSettings` | `v02_InvoiceSettingSubSchPhaseSetting` |
| `items` | `items` | `List<v02_SubScheduleConfigurationItem>` |
| `metadata` | `metadata` | `v02_Metadata` |
| `onBehalfOf` | `onBehalfOf` | `String` |
| `prorationBehavior` | `prorationBehavior` | `String` |
| `startDate` | `startDate` | `Integer` |
| `transferData` | `transferData` | `v02_SubscriptionTransferData` |
| `trialEnd` | `trialEnd` | `Integer` |

### `v02_SubSchedulesResourceDefaultSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `applicationFeePercent` | `applicationFeePercent` | `Double` |
| `automaticTax` | `automaticTax` | `v02_SubSchsDefSettingsAutomaticTax` |
| `billingCycleAnchor` | `billingCycleAnchor` | `String` |
| `collectionMethod` | `collectionMethod` | `String` |
| `defaultPaymentMethod` | `defaultPaymentMethod` | `String` |
| `description` | `description` | `String` |
| `invoiceSettings` | `invoiceSettings` | `v02_InvoiceSettingSubScheduleSetting` |
| `onBehalfOf` | `onBehalfOf` | `String` |
| `transferData` | `transferData` | `v02_SubscriptionTransferData` |

### `v02_SubSchsDefSettingsAutomaticTax`

| Field | Stripe API Name | Type |
|---|---|---|
| `disabledReason` | `disabledReason` | `String` |
| `enabled` | `enabled` | `Boolean` |
| `liability` | `liability` | `v02_ConnectAccountReference` |

### `v02_SubsResourceBillingCycleAnchorConfig`

| Field | Stripe API Name | Type |
|---|---|---|
| `dayOfMonth` | `dayOfMonth` | `Integer` |
| `hour` | `hour` | `Integer` |
| `minute` | `minute` | `Integer` |
| `month` | `month` | `Integer` |
| `second` | `second` | `Integer` |

### `v02_SubsResourceSubInvoiceSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountTaxIds` | `accountTaxIds` | `List<v02_InvoiceAccountTaxIdsInner>` |
| `issuer` | `issuer` | `v02_ConnectAccountReference` |

### `v02_SubsTrialsResourceEndBehavior`

| Field | Stripe API Name | Type |
|---|---|---|
| `missingPaymentMethod` | `missingPaymentMethod` | `String` |

### `v02_SubsTrialsResourceTrialSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `endBehavior` | `endBehavior` | `v02_SubsTrialsResourceEndBehavior` |

### `v02_TaxAmountWithTaxRateParam`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `taxRate` | `taxRate` | `String` |
| `taxableAmount` | `taxableAmount` | `Integer` |

### `v02_TaxIDsOwner`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `application` | `application` | `String` |
| `customer` | `customer` | `String` |
| `type` | `type` | `String` |

### `v02_TaxRate`

| Field | Stripe API Name | Type |
|---|---|---|
| `active` | `active` | `Boolean` |
| `country` | `country` | `String` |
| `created` | `created` | `Integer` |
| `description` | `description` | `String` |
| `displayName` | `display_name` | `String` |
| `effectivePercentage` | `effective_percentage` | `Double` |
| `flatAmount` | `flat_amount` | `v02_TaxRateFlatAmount` |
| `id` | `id` | `String` |
| `inclusive` | `inclusive` | `Boolean` |
| `jurisdiction` | `jurisdiction` | `String` |
| `jurisdictionLevel` | `jurisdiction_level` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `metadata` | `metadata` | `v02_Metadata` |
| `r_object` | `object` | `String` |
| `percentage` | `percentage` | `Double` |
| `rateType` | `rate_type` | `String` |
| `state` | `state` | `String` |
| `taxType` | `tax_type` | `String` |

### `v02_TaxRateFlatAmount`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `r_currency` | `r_currency` | `String` |

### `v02_ThreeDSecureDetailsCharge`

| Field | Stripe API Name | Type |
|---|---|---|
| `authenticationFlow` | `authenticationFlow` | `String` |
| `electronicCommerceIndicator` | `electronicCommerceIndicator` | `String` |
| `exemptionIndicator` | `exemptionIndicator` | `String` |
| `exemptionIndicatorApplied` | `exemptionIndicatorApplied` | `Boolean` |
| `result` | `result` | `String` |
| `resultReason` | `resultReason` | `String` |
| `transactionId` | `transactionId` | `String` |
| `version` | `version` | `String` |

### `v02_ThreeDSecureUsage`

| Field | Stripe API Name | Type |
|---|---|---|
| `supported` | `supported` | `Boolean` |

### `v02_TokenCardNetworks`

| Field | Stripe API Name | Type |
|---|---|---|
| `preferred` | `preferred` | `String` |

### `v02_TransformQuantity`

| Field | Stripe API Name | Type |
|---|---|---|
| `divideBy` | `divideBy` | `Integer` |
| `round` | `round` | `String` |

### `v02_TransformUsage`

| Field | Stripe API Name | Type |
|---|---|---|
| `divideBy` | `divideBy` | `Integer` |
| `round` | `round` | `String` |

### `v02_TresInbXfersInbXferLinkedFlows`

| Field | Stripe API Name | Type |
|---|---|---|
| `receivedDebit` | `receivedDebit` | `String` |

### `v02_TresInbXfersInbXferStatusTransitions`

| Field | Stripe API Name | Type |
|---|---|---|
| `canceledAt` | `canceledAt` | `Integer` |
| `failedAt` | `failedAt` | `Integer` |
| `succeededAt` | `succeededAt` | `Integer` |

### `v02_TresInbXfersResourceFailureDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `code` | `code` | `String` |

### `v02_TresObXfersAchTrackingDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `traceId` | `traceId` | `String` |

### `v02_TresObXfersObXferTrackingDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `ach` | `ach` | `v02_TresObXfersAchTrackingDetails` |
| `type` | `type` | `String` |
| `usDomesticWire` | `usDomesticWire` | `v02_TresObXfersUsDomwireTrackingDetails` |

### `v02_TresObXfersResourceStatusTransitions`

| Field | Stripe API Name | Type |
|---|---|---|
| `canceledAt` | `canceledAt` | `Integer` |
| `failedAt` | `failedAt` | `Integer` |
| `postedAt` | `postedAt` | `Integer` |
| `returnedAt` | `returnedAt` | `Integer` |

### `v02_TresObXfersUsDomwireTrackingDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `chips` | `chips` | `String` |
| `imad` | `imad` | `String` |
| `omad` | `omad` | `String` |

### `v02_UpdateAccountsPersonsReqDocsCmpAuth`

| Field | Stripe API Name | Type |
|---|---|---|
| `files` | `files` | `List<String>` |

### `v02_UpdateAccountsPersonsReqDocsPassport`

| Field | Stripe API Name | Type |
|---|---|---|
| `files` | `files` | `List<String>` |

### `v02_UpdateAccountsPersonsReqDocsVisa`

| Field | Stripe API Name | Type |
|---|---|---|
| `files` | `files` | `List<String>` |

### `v02_UpdateAccountsPersonsReqDocuments`

| Field | Stripe API Name | Type |
|---|---|---|
| `companyAuthorization` | `companyAuthorization` | `v02_UpdateAccountsPersonsReqDocsCmpAuth` |
| `passport` | `passport` | `v02_UpdateAccountsPersonsReqDocsPassport` |
| `visa` | `visa` | `v02_UpdateAccountsPersonsReqDocsVisa` |

### `v02_UpdateAccountsPersonsReqUsCfpbData`

| Field | Stripe API Name | Type |
|---|---|---|
| `ethnicityDetails` | `ethnicityDetails` | `v02_UpdateAccsPersonsReqUsCfpbDtEt` |
| `raceDetails` | `raceDetails` | `v02_UpdateAccsPersonsReqUsCfpbDtRa` |
| `selfIdentifiedGender` | `selfIdentifiedGender` | `String` |

### `v02_UpdateAccountsPersonsReqVerification`

| Field | Stripe API Name | Type |
|---|---|---|
| `additionalDocument` | `additionalDocument` | `v02_UpdateAccsPersonsReqVerifyAdtlDoc` |
| `document` | `document` | `v02_UpdateAccountsPersonsReqVerifyDoc` |

### `v02_UpdateAccountsPersonsReqVerifyDoc`

| Field | Stripe API Name | Type |
|---|---|---|
| `back` | `back` | `String` |
| `front` | `front` | `String` |

### `v02_UpdateAccountsReqBprofileSupportAddr`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_UpdateAccountsReqBusinessProfile`

| Field | Stripe API Name | Type |
|---|---|---|
| `annualRevenue` | `annualRevenue` | `v02_UpdateAccsReqBusinessProfileAnnu` |
| `estimatedWorkerCount` | `estimatedWorkerCount` | `Integer` |
| `mcc` | `mcc` | `String` |
| `minorityOwnedBusinessDesignation` | `minorityOwnedBusinessDesignation` | `List<String>` |
| `monthlyEstimatedRevenue` | `monthlyEstimatedRevenue` | `v02_UpdateAccsReqBusinessProfileMonth` |
| `name` | `name` | `String` |
| `productDescription` | `productDescription` | `String` |
| `supportAddress` | `supportAddress` | `v02_UpdateAccountsReqBprofileSupportAddr` |
| `supportEmail` | `supportEmail` | `String` |
| `supportPhone` | `supportPhone` | `String` |
| `supportUrl` | `supportUrl` | `String` |
| `url` | `url` | `String` |

### `v02_UpdateAccountsReqCapabilities`

| Field | Stripe API Name | Type |
|---|---|---|
| `acssDebitPayments` | `acssDebitPayments` | `v02_UpdateAccsReqCpbtAcssDebitPayments` |
| `affirmPayments` | `affirmPayments` | `v02_UpdateAccountsReqCpbtAffirmPayments` |
| `afterpayClearpayPayments` | `afterpayClearpayPayments` | `v02_UpdateAccsReqCpbtAftClrpayPayments` |
| `almaPayments` | `almaPayments` | `v02_UpdateAccountsReqCpbtAlmaPayments` |
| `amazonPayPayments` | `amazonPayPayments` | `v02_UpdateAccsReqCpbtAmazonPayPayments` |
| `auBecsDebitPayments` | `auBecsDebitPayments` | `v02_UpdateAccsReqCpbtAuBecsDebitPayments` |
| `bacsDebitPayments` | `bacsDebitPayments` | `v02_UpdateAccsReqCpbtBacsDebitPayments` |
| `bancontactPayments` | `bancontactPayments` | `v02_UpdateAccsReqCpbtBancontactPayments` |
| `bankTransferPayments` | `bankTransferPayments` | `v02_UpdateAccsReqCpbtBankXferPayments` |
| `billiePayments` | `billiePayments` | `v02_UpdateAccountsReqCpbtBilliePayments` |
| `blikPayments` | `blikPayments` | `v02_UpdateAccountsReqCpbtBlikPayments` |
| `boletoPayments` | `boletoPayments` | `v02_UpdateAccountsReqCpbtBoletoPayments` |
| `cardIssuing` | `cardIssuing` | `v02_UpdateAccountsReqCpbtCardIssuing` |
| `cardPayments` | `cardPayments` | `v02_UpdateAccountsReqCpbtCardPayments` |
| `cartesBancairesPayments` | `cartesBancairesPayments` | `v02_UpdateAccountsReqCpbtCBPayments` |
| `cashappPayments` | `cashappPayments` | `v02_UpdateAccountsReqCpbtCashappPayments` |
| `epsPayments` | `epsPayments` | `v02_UpdateAccountsReqCpbtEpsPayments` |
| `fpxPayments` | `fpxPayments` | `v02_UpdateAccountsReqCpbtFpxPayments` |
| `gbBankTransferPayments` | `gbBankTransferPayments` | `v02_UpdateAccsReqCpbtGbBankXferPayments` |
| `giropayPayments` | `giropayPayments` | `v02_UpdateAccountsReqCpbtGiropayPayments` |
| `grabpayPayments` | `grabpayPayments` | `v02_UpdateAccountsReqCpbtGrabpayPayments` |
| `idealPayments` | `idealPayments` | `v02_UpdateAccountsReqCpbtIdealPayments` |
| `indiaInternationalPayments` | `indiaInternationalPayments` | `v02_UpdateAccsReqCpbtIndiaInterPayments` |
| `jcbPayments` | `jcbPayments` | `v02_UpdateAccountsReqCpbtJcbPayments` |
| `jpBankTransferPayments` | `jpBankTransferPayments` | `v02_UpdateAccsReqCpbtJpBankXferPayments` |
| `kakaoPayPayments` | `kakaoPayPayments` | `v02_UpdateAccsReqCpbtKakaoPayPayments` |
| `klarnaPayments` | `klarnaPayments` | `v02_UpdateAccountsReqCpbtKlarnaPayments` |
| `konbiniPayments` | `konbiniPayments` | `v02_UpdateAccountsReqCpbtKonbiniPayments` |
| `krCardPayments` | `krCardPayments` | `v02_UpdateAccountsReqCpbtKrCardPayments` |
| `legacyPayments` | `legacyPayments` | `v02_UpdateAccountsReqCpbtLegacyPayments` |
| `linkPayments` | `linkPayments` | `v02_UpdateAccountsReqCpbtLinkPayments` |
| `mobilepayPayments` | `mobilepayPayments` | `v02_UpdateAccsReqCpbtMobilepayPayments` |
| `multibancoPayments` | `multibancoPayments` | `v02_UpdateAccsReqCpbtMultibancoPayments` |
| `mxBankTransferPayments` | `mxBankTransferPayments` | `v02_UpdateAccsReqCpbtMxBankXferPayments` |
| `naverPayPayments` | `naverPayPayments` | `v02_UpdateAccsReqCpbtNaverPayPayments` |
| `nzBankAccountBecsDebitPayments` | `nzBankAccountBecsDebitPayments` | `v02_UpdateAccsReqCpbtNzBacctBecsDbtPymts` |
| `oxxoPayments` | `oxxoPayments` | `v02_UpdateAccountsReqCpbtOxxoPayments` |
| `p24Payments` | `p24Payments` | `v02_UpdateAccountsReqCpbtP24Payments` |
| `payByBankPayments` | `payByBankPayments` | `v02_UpdateAccsReqCpbtPayByBankPayments` |
| `paycoPayments` | `paycoPayments` | `v02_UpdateAccountsReqCpbtPaycoPayments` |
| `paynowPayments` | `paynowPayments` | `v02_UpdateAccountsReqCpbtPaynowPayments` |
| `promptpayPayments` | `promptpayPayments` | `v02_UpdateAccsReqCpbtPromptpayPayments` |
| `revolutPayPayments` | `revolutPayPayments` | `v02_UpdateAccsReqCpbtRevolutPayPayments` |
| `samsungPayPayments` | `samsungPayPayments` | `v02_UpdateAccsReqCpbtSamsungPayPayments` |
| `satispayPayments` | `satispayPayments` | `v02_UpdateAccsReqCpbtSatispayPayments` |
| `sepaBankTransferPayments` | `sepaBankTransferPayments` | `v02_UpdateAccsReqCpbtSepaBankXferPymts` |
| `sepaDebitPayments` | `sepaDebitPayments` | `v02_UpdateAccsReqCpbtSepaDebitPayments` |
| `sofortPayments` | `sofortPayments` | `v02_UpdateAccountsReqCpbtSofortPayments` |
| `swishPayments` | `swishPayments` | `v02_UpdateAccountsReqCpbtSwishPayments` |
| `taxReportingUs1099K` | `taxReportingUs1099K` | `v02_UpdateAccsReqCpbtTaxReportingUs1099K` |
| `taxReportingUs1099Misc` | `taxReportingUs1099Misc` | `v02_UpdateAccsReqCpbtTaxRptngUs1099Misc` |
| `transfers` | `transfers` | `v02_UpdateAccountsReqCapabilitiesXfers` |
| `treasury` | `treasury` | `v02_UpdateAccountsReqCapabilitiesTres` |
| `twintPayments` | `twintPayments` | `v02_UpdateAccountsReqCpbtTwintPayments` |
| `usBankAccountAchPayments` | `usBankAccountAchPayments` | `v02_UpdateAccsReqCpbtUsBacctAchPayments` |
| `usBankTransferPayments` | `usBankTransferPayments` | `v02_UpdateAccsReqCpbtUsBankXferPayments` |
| `zipPayments` | `zipPayments` | `v02_UpdateAccountsReqCpbtZipPayments` |

### `v02_UpdateAccountsReqCapabilitiesTres`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCapabilitiesXfers`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCompany`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_UpdateAccountsReqCompanyAddress` |
| `addressKana` | `addressKana` | `v02_UpdateAccountsReqCompanyAddressKana` |
| `addressKanji` | `addressKanji` | `v02_UpdateAccountsReqCompanyAddressKanji` |
| `directorsProvided` | `directorsProvided` | `Boolean` |
| `directorshipDeclaration` | `directorshipDeclaration` | `v02_UpdateAccsReqCmpDirectorshipDecl` |
| `executivesProvided` | `executivesProvided` | `Boolean` |
| `exportLicenseId` | `exportLicenseId` | `String` |
| `exportPurposeCode` | `exportPurposeCode` | `String` |
| `name` | `name` | `String` |
| `nameKana` | `nameKana` | `String` |
| `nameKanji` | `nameKanji` | `String` |
| `ownersProvided` | `ownersProvided` | `Boolean` |
| `ownershipDeclaration` | `ownershipDeclaration` | `v02_UpdateAccsReqCmpOwnrshpDeclaration` |
| `ownershipExemptionReason` | `ownershipExemptionReason` | `String` |
| `phone` | `phone` | `String` |
| `registrationDate` | `registrationDate` | `v02_UpdateAccountsReqCompanyRegDate` |
| `registrationNumber` | `registrationNumber` | `String` |
| `structure` | `structure` | `String` |
| `taxId` | `taxId` | `String` |
| `taxIdRegistrar` | `taxIdRegistrar` | `String` |
| `vatId` | `vatId` | `String` |
| `verification` | `verification` | `v02_UpdateAccountsReqCompanyVerification` |

### `v02_UpdateAccountsReqCompanyAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_UpdateAccountsReqCompanyAddressKana`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |
| `town` | `town` | `String` |

### `v02_UpdateAccountsReqCompanyAddressKanji`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |
| `town` | `town` | `String` |

### `v02_UpdateAccountsReqCompanyRegDate`

| Field | Stripe API Name | Type |
|---|---|---|
| `day` | `day` | `Integer` |
| `month` | `month` | `Integer` |
| `year` | `year` | `Integer` |

### `v02_UpdateAccountsReqCompanyVerification`

| Field | Stripe API Name | Type |
|---|---|---|
| `document` | `document` | `v02_UpdateAccountsReqCompanyVerifyDoc` |

### `v02_UpdateAccountsReqCompanyVerifyDoc`

| Field | Stripe API Name | Type |
|---|---|---|
| `back` | `back` | `String` |
| `front` | `front` | `String` |

### `v02_UpdateAccountsReqCpbtAffirmPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCpbtAlmaPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCpbtBilliePayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCpbtBlikPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCpbtBoletoPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCpbtCBPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCpbtCardIssuing`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCpbtCardPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCpbtCashappPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCpbtEpsPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCpbtFpxPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCpbtGiropayPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCpbtGrabpayPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCpbtIdealPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCpbtJcbPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCpbtKlarnaPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCpbtKonbiniPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCpbtKrCardPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCpbtLegacyPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCpbtLinkPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCpbtOxxoPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCpbtP24Payments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCpbtPaycoPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCpbtPaynowPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCpbtSofortPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCpbtSwishPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCpbtTwintPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqCpbtZipPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccountsReqDocsCmpMemoAssoc`

| Field | Stripe API Name | Type |
|---|---|---|
| `files` | `files` | `List<String>` |

### `v02_UpdateAccountsReqDocsCmpRegVerify`

| Field | Stripe API Name | Type |
|---|---|---|
| `files` | `files` | `List<String>` |

### `v02_UpdateAccountsReqDocsCmpTaxIdVerify`

| Field | Stripe API Name | Type |
|---|---|---|
| `files` | `files` | `List<String>` |

### `v02_UpdateAccountsReqDocsCompanyLicense`

| Field | Stripe API Name | Type |
|---|---|---|
| `files` | `files` | `List<String>` |

### `v02_UpdateAccountsReqDocsCompanyMnstrDcr`

| Field | Stripe API Name | Type |
|---|---|---|
| `files` | `files` | `List<String>` |

### `v02_UpdateAccountsReqDocsProofOfReg`

| Field | Stripe API Name | Type |
|---|---|---|
| `files` | `files` | `List<String>` |

### `v02_UpdateAccountsReqDocuments`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankAccountOwnershipVerification` | `bankAccountOwnershipVerification` | `v02_UpdateAccsReqDocsBacctOwnrshpVerify` |
| `companyLicense` | `companyLicense` | `v02_UpdateAccountsReqDocsCompanyLicense` |
| `companyMemorandumOfAssociation` | `companyMemorandumOfAssociation` | `v02_UpdateAccountsReqDocsCmpMemoAssoc` |
| `companyMinisterialDecree` | `companyMinisterialDecree` | `v02_UpdateAccountsReqDocsCompanyMnstrDcr` |
| `companyRegistrationVerification` | `companyRegistrationVerification` | `v02_UpdateAccountsReqDocsCmpRegVerify` |
| `companyTaxIdVerification` | `companyTaxIdVerification` | `v02_UpdateAccountsReqDocsCmpTaxIdVerify` |
| `proofOfRegistration` | `proofOfRegistration` | `v02_UpdateAccountsReqDocsProofOfReg` |
| `proofOfUltimateBeneficialOwnership` | `proofOfUltimateBeneficialOwnership` | `v02_UpdateAccsReqDocsProofOfUltimate` |

### `v02_UpdateAccountsReqIndividual`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_UpdateAccountsReqIndividualAddress` |
| `addressKana` | `addressKana` | `v02_UpdateAccsReqIndividualAddressKana` |
| `addressKanji` | `addressKanji` | `v02_UpdateAccsReqIndividualAddressKanji` |
| `dob` | `dob` | `v02_UpdateAccountsReqIndividualDob` |
| `email` | `email` | `String` |
| `firstName` | `firstName` | `String` |
| `firstNameKana` | `firstNameKana` | `String` |
| `firstNameKanji` | `firstNameKanji` | `String` |
| `fullNameAliases` | `fullNameAliases` | `List<String>` |
| `gender` | `gender` | `String` |
| `idNumber` | `idNumber` | `String` |
| `idNumberSecondary` | `idNumberSecondary` | `String` |
| `lastName` | `lastName` | `String` |
| `lastNameKana` | `lastNameKana` | `String` |
| `lastNameKanji` | `lastNameKanji` | `String` |
| `maidenName` | `maidenName` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `phone` | `phone` | `String` |
| `politicalExposure` | `politicalExposure` | `String` |
| `registeredAddress` | `registeredAddress` | `v02_UpdateAccsReqIndRegisteredAddress` |
| `relationship` | `relationship` | `v02_UpdateAccsReqIndividualRelationship` |
| `ssnLast4` | `ssnLast4` | `String` |
| `verification` | `verification` | `v02_UpdateAccountsReqIndividualVerify` |

### `v02_UpdateAccountsReqIndividualAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_UpdateAccountsReqIndividualDob`

| Field | Stripe API Name | Type |
|---|---|---|
| `day` | `day` | `Integer` |
| `month` | `month` | `Integer` |
| `year` | `year` | `Integer` |

### `v02_UpdateAccountsReqIndividualVerify`

| Field | Stripe API Name | Type |
|---|---|---|
| `additionalDocument` | `additionalDocument` | `v02_UpdateAccsReqIndVerifyAdditionalDoc` |
| `document` | `document` | `v02_UpdateAccountsReqIndividualVerifyDoc` |

### `v02_UpdateAccountsReqIndividualVerifyDoc`

| Field | Stripe API Name | Type |
|---|---|---|
| `back` | `back` | `String` |
| `front` | `front` | `String` |

### `v02_UpdateAccountsReqSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `bacsDebitPayments` | `bacsDebitPayments` | `v02_UpdateAccsReqSetsBacsDebitPayments` |
| `branding` | `branding` | `v02_UpdateAccountsReqSettingsBranding` |
| `cardIssuing` | `cardIssuing` | `v02_UpdateAccountsReqSettingsCardIssuing` |
| `cardPayments` | `cardPayments` | `v02_UpdateAccsReqSettingsCardPayments` |
| `invoices` | `invoices` | `v02_UpdateAccountsReqSettingsInvoices` |
| `payments` | `payments` | `v02_UpdateAccountsReqSettingsPayments` |
| `payouts` | `payouts` | `v02_UpdateAccountsReqSettingsPayouts` |
| `treasury` | `treasury` | `v02_UpdateAccountsReqSettingsTreasury` |

### `v02_UpdateAccountsReqSettingsBranding`

| Field | Stripe API Name | Type |
|---|---|---|
| `icon` | `icon` | `String` |
| `logo` | `logo` | `String` |
| `primaryColor` | `primaryColor` | `String` |
| `secondaryColor` | `secondaryColor` | `String` |

### `v02_UpdateAccountsReqSettingsCardIssuing`

| Field | Stripe API Name | Type |
|---|---|---|
| `tosAcceptance` | `tosAcceptance` | `v02_UpdateAccsReqSetsCardIssuingTosAccpt` |

### `v02_UpdateAccountsReqSettingsInvoices`

| Field | Stripe API Name | Type |
|---|---|---|
| `defaultAccountTaxIds` | `defaultAccountTaxIds` | `List<String>` |
| `hostedPaymentMethodSave` | `hostedPaymentMethodSave` | `String` |

### `v02_UpdateAccountsReqSettingsPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `statementDescriptor` | `statementDescriptor` | `String` |
| `statementDescriptorKana` | `statementDescriptorKana` | `String` |
| `statementDescriptorKanji` | `statementDescriptorKanji` | `String` |

### `v02_UpdateAccountsReqSettingsPayouts`

| Field | Stripe API Name | Type |
|---|---|---|
| `debitNegativeBalances` | `debitNegativeBalances` | `Boolean` |
| `schedule` | `schedule` | `v02_UpdateAccountsReqSettingsPayoutsSch` |
| `statementDescriptor` | `statementDescriptor` | `String` |

### `v02_UpdateAccountsReqSettingsPayoutsSch`

| Field | Stripe API Name | Type |
|---|---|---|
| `delayDays` | `delayDays` | `v02_UpdateAccsReqSetsPayoutsSchDelayDays` |
| `interval` | `interval` | `String` |
| `monthlyAnchor` | `monthlyAnchor` | `Integer` |
| `weeklyAnchor` | `weeklyAnchor` | `String` |

### `v02_UpdateAccountsReqSettingsTreasury`

| Field | Stripe API Name | Type |
|---|---|---|
| `tosAcceptance` | `tosAcceptance` | `v02_UpdateAccsReqSettingsTresTosAccpt` |

### `v02_UpdateAccsExternalAccsReqDocs`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankAccountOwnershipVerification` | `bankAccountOwnershipVerification` | `v02_UpdateAccsExternalAccsReqDocsBac` |

### `v02_UpdateAccsExternalAccsReqDocsBac`

| Field | Stripe API Name | Type |
|---|---|---|
| `files` | `files` | `List<String>` |

### `v02_UpdateAccsPersonsReqAdtlTosAccpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `v02_UpdateAccsPersonsReqAdtlTosAccptsAcc` |

### `v02_UpdateAccsPersonsReqAdtlTosAccptsAcc`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_date` | `r_date` | `Integer` |
| `ip` | `ip` | `String` |
| `userAgent` | `userAgent` | `String` |

### `v02_UpdateAccsPersonsReqUsCfpbDtEt`

| Field | Stripe API Name | Type |
|---|---|---|
| `ethnicity` | `ethnicity` | `List<String>` |
| `ethnicityOther` | `ethnicityOther` | `String` |

### `v02_UpdateAccsPersonsReqUsCfpbDtRa`

| Field | Stripe API Name | Type |
|---|---|---|
| `race` | `race` | `List<String>` |
| `raceOther` | `raceOther` | `String` |

### `v02_UpdateAccsPersonsReqVerifyAdtlDoc`

| Field | Stripe API Name | Type |
|---|---|---|
| `back` | `back` | `String` |
| `front` | `front` | `String` |

### `v02_UpdateAccsReqBusinessProfileAnnu`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `r_currency` | `r_currency` | `String` |
| `fiscalYearEnd` | `fiscalYearEnd` | `String` |

### `v02_UpdateAccsReqBusinessProfileMonth`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `r_currency` | `r_currency` | `String` |

### `v02_UpdateAccsReqCmpDirectorshipDecl`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_date` | `r_date` | `Integer` |
| `ip` | `ip` | `String` |
| `userAgent` | `userAgent` | `String` |

### `v02_UpdateAccsReqCmpOwnrshpDeclaration`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_date` | `r_date` | `Integer` |
| `ip` | `ip` | `String` |
| `userAgent` | `userAgent` | `String` |

### `v02_UpdateAccsReqCpbtAcssDebitPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccsReqCpbtAftClrpayPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccsReqCpbtAmazonPayPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccsReqCpbtAuBecsDebitPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccsReqCpbtBacsDebitPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccsReqCpbtBancontactPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccsReqCpbtBankXferPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccsReqCpbtGbBankXferPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccsReqCpbtIndiaInterPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccsReqCpbtJpBankXferPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccsReqCpbtKakaoPayPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccsReqCpbtMobilepayPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccsReqCpbtMultibancoPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccsReqCpbtMxBankXferPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccsReqCpbtNaverPayPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccsReqCpbtNzBacctBecsDbtPymts`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccsReqCpbtPayByBankPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccsReqCpbtPromptpayPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccsReqCpbtRevolutPayPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccsReqCpbtSamsungPayPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccsReqCpbtSatispayPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccsReqCpbtSepaBankXferPymts`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccsReqCpbtSepaDebitPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccsReqCpbtTaxReportingUs1099K`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccsReqCpbtTaxRptngUs1099Misc`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccsReqCpbtUsBacctAchPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccsReqCpbtUsBankXferPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `Boolean` |

### `v02_UpdateAccsReqDocsBacctOwnrshpVerify`

| Field | Stripe API Name | Type |
|---|---|---|
| `files` | `files` | `List<String>` |

### `v02_UpdateAccsReqDocsProofOfUltimate`

| Field | Stripe API Name | Type |
|---|---|---|
| `files` | `files` | `List<String>` |

### `v02_UpdateAccsReqIndRegisteredAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_UpdateAccsReqIndVerifyAdditionalDoc`

| Field | Stripe API Name | Type |
|---|---|---|
| `back` | `back` | `String` |
| `front` | `front` | `String` |

### `v02_UpdateAccsReqIndividualAddressKana`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |
| `town` | `town` | `String` |

### `v02_UpdateAccsReqIndividualAddressKanji`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |
| `town` | `town` | `String` |

### `v02_UpdateAccsReqIndividualRelationship`

| Field | Stripe API Name | Type |
|---|---|---|
| `director` | `director` | `Boolean` |
| `executive` | `executive` | `Boolean` |
| `owner` | `owner` | `Boolean` |
| `percentOwnership` | `percentOwnership` | `Double` |
| `title` | `title` | `String` |

### `v02_UpdateAccsReqSetsBacsDebitPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayName` | `displayName` | `String` |

### `v02_UpdateAccsReqSetsCardIssuingTosAccpt`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_date` | `r_date` | `Integer` |
| `ip` | `ip` | `String` |
| `userAgent` | `userAgent` | `String` |

### `v02_UpdateAccsReqSetsCardPymtsDeclineOn`

| Field | Stripe API Name | Type |
|---|---|---|
| `avsFailure` | `avsFailure` | `Boolean` |
| `cvcFailure` | `cvcFailure` | `Boolean` |

### `v02_UpdateAccsReqSetsPayoutsSchDelayDays`

| Field | Stripe API Name | Type |
|---|---|---|
| `stringField` | `stringField` | `String` |
| `integerField` | `integerField` | `Integer` |

### `v02_UpdateAccsReqSettingsCardPayments`

| Field | Stripe API Name | Type |
|---|---|---|
| `declineOn` | `declineOn` | `v02_UpdateAccsReqSetsCardPymtsDeclineOn` |
| `statementDescriptorPrefix` | `statementDescriptorPrefix` | `String` |
| `statementDescriptorPrefixKana` | `statementDescriptorPrefixKana` | `String` |
| `statementDescriptorPrefixKanji` | `statementDescriptorPrefixKanji` | `String` |

### `v02_UpdateAccsReqSettingsTresTosAccpt`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_date` | `r_date` | `Integer` |
| `ip` | `ip` | `String` |
| `userAgent` | `userAgent` | `String` |

### `v02_UpdateCOSsReqCollectedInformation`

| Field | Stripe API Name | Type |
|---|---|---|
| `shippingDetails` | `shippingDetails` | `v02_UpdateCOSsReqCollectedInformation` |

### `v02_UpdateCOSsReqShippingOption`

| Field | Stripe API Name | Type |
|---|---|---|
| `shippingRate` | `shippingRate` | `String` |
| `shippingRateData` | `shippingRateData` | `v02_UpdateCOSsReqShippingOptionRate` |

### `v02_UpdateCOSsReqShippingOptionRate`

| Field | Stripe API Name | Type |
|---|---|---|
| `deliveryEstimate` | `deliveryEstimate` | `v02_UpdateCOSsReqShpOptionRateDlvEst` |
| `displayName` | `displayName` | `String` |
| `fixedAmount` | `fixedAmount` | `v02_UpdateCOSsReqShpOptionRateFxdAmt` |
| `metadata` | `metadata` | `v02_Metadata` |
| `taxBehavior` | `taxBehavior` | `String` |
| `taxCode` | `taxCode` | `String` |
| `type` | `type` | `String` |

### `v02_UpdateCOSsReqShpOptRateFxdAmtCOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `taxBehavior` | `taxBehavior` | `String` |

### `v02_UpdateCOSsReqShpOptionRateDlvEst`

| Field | Stripe API Name | Type |
|---|---|---|
| `maximum` | `maximum` | `v02_UpdateCOSsReqShpOptionRateDlvEstMax` |
| `minimum` | `minimum` | `v02_UpdateCOSsReqShpOptionRateDlvEstMin` |

### `v02_UpdateCOSsReqShpOptionRateDlvEstMax`

| Field | Stripe API Name | Type |
|---|---|---|
| `unit` | `unit` | `String` |
| `value` | `value` | `Integer` |

### `v02_UpdateCOSsReqShpOptionRateDlvEstMin`

| Field | Stripe API Name | Type |
|---|---|---|
| `unit` | `unit` | `String` |
| `value` | `value` | `Integer` |

### `v02_UpdateCOSsReqShpOptionRateFxdAmt`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `r_currency` | `r_currency` | `String` |
| `currencyOptions` | `currencyOptions` | `List<v02_AdtlUpdateCOSsReqShpOptRateFxdAmtCOp>` |

### `v02_UpdateChargesReqFraudDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `userReport` | `userReport` | `String` |

### `v02_UpdateChargesReqShipping`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_UpdateChargesReqShippingAddress` |
| `carrier` | `carrier` | `String` |
| `name` | `name` | `String` |
| `phone` | `phone` | `String` |
| `trackingNumber` | `trackingNumber` | `String` |

### `v02_UpdateChargesReqShippingAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_UpdateCouponsReqCurrencyOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountOff` | `amountOff` | `Integer` |

### `v02_UpdateCussReqInvoiceSettingsCField`

| Field | Stripe API Name | Type |
|---|---|---|
| `name` | `name` | `String` |
| `value` | `value` | `String` |

### `v02_UpdateCussReqInvoiceSettingsRndrOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountTaxDisplay` | `amountTaxDisplay` | `String` |
| `template` | `template` | `String` |

### `v02_UpdateCussSourcesReqOwnerAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_UpdateCustomersCBalReqSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `reconciliationMode` | `reconciliationMode` | `String` |

### `v02_UpdateCustomersReqCBalSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `reconciliationMode` | `reconciliationMode` | `String` |

### `v02_UpdateCustomersReqCashBalance`

| Field | Stripe API Name | Type |
|---|---|---|
| `settings` | `settings` | `v02_UpdateCustomersReqCBalSettings` |

### `v02_UpdateCustomersReqInvoiceSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `customFields` | `customFields` | `List<v02_UpdateCussReqInvoiceSettingsCField>` |
| `defaultPaymentMethod` | `defaultPaymentMethod` | `String` |
| `footer` | `footer` | `String` |
| `renderingOptions` | `renderingOptions` | `v02_UpdateCussReqInvoiceSettingsRndrOpts` |

### `v02_UpdateCustomersReqShipping`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_UpdateCustomersReqShippingAddress` |
| `name` | `name` | `String` |
| `phone` | `phone` | `String` |

### `v02_UpdateCustomersReqShippingAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_UpdateCustomersReqTax`

| Field | Stripe API Name | Type |
|---|---|---|
| `ipAddress` | `ipAddress` | `String` |
| `validateLocation` | `validateLocation` | `String` |

### `v02_UpdateCustomersSources200Response`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `addressCity` | `address_city` | `String` |
| `addressCountry` | `address_country` | `String` |
| `addressLine1` | `address_line1` | `String` |
| `addressLine1Check` | `address_line1_check` | `String` |
| `addressLine2` | `address_line2` | `String` |
| `addressState` | `address_state` | `String` |
| `addressZip` | `address_zip` | `String` |
| `addressZipCheck` | `address_zip_check` | `String` |
| `allowRedisplay` | `allow_redisplay` | `String` |
| `availablePayoutMethods` | `available_payout_methods` | `List<String>` |
| `brand` | `brand` | `String` |
| `country` | `country` | `String` |
| `r_currency` | `currency` | `String` |
| `customer` | `customer` | `String` |
| `cvcCheck` | `cvc_check` | `String` |
| `defaultForCurrency` | `default_for_currency` | `Boolean` |
| `description` | `description` | `String` |
| `dynamicLast4` | `dynamic_last4` | `String` |
| `expMonth` | `exp_month` | `Integer` |
| `expYear` | `exp_year` | `Integer` |
| `fingerprint` | `fingerprint` | `String` |
| `funding` | `funding` | `String` |
| `id` | `id` | `String` |
| `iin` | `iin` | `String` |
| `issuer` | `issuer` | `String` |
| `last4` | `last4` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `name` | `name` | `String` |
| `networks` | `networks` | `v02_TokenCardNetworks` |
| `r_object` | `object` | `String` |
| `regulatedStatus` | `regulated_status` | `String` |
| `status` | `status` | `String` |
| `tokenizationMethod` | `tokenization_method` | `String` |
| `accountHolderName` | `account_holder_name` | `String` |
| `accountHolderType` | `account_holder_type` | `String` |
| `accountType` | `account_type` | `String` |
| `bankName` | `bank_name` | `String` |
| `futureRequirements` | `future_requirements` | `v02_ExternalAccountRequirements` |
| `requirements` | `requirements` | `v02_ExternalAccountRequirements` |
| `routingNumber` | `routing_number` | `String` |
| `achCreditTransfer` | `ach_credit_transfer` | `v02_SourceTypeAchCreditTransfer` |
| `achDebit` | `ach_debit` | `v02_SourceTypeAchDebit` |
| `acssDebit` | `acss_debit` | `v02_SourceTypeAcssDebit` |
| `alipay` | `alipay` | `v02_SourceTypeAlipay` |
| `amount` | `amount` | `Integer` |
| `auBecsDebit` | `au_becs_debit` | `v02_SourceTypeAuBecsDebit` |
| `bancontact` | `bancontact` | `v02_SourceTypeBancontact` |
| `card` | `card` | `v02_SourceTypeCard` |
| `cardPresent` | `card_present` | `v02_SourceTypeCardPresent` |
| `clientSecret` | `client_secret` | `String` |
| `codeVerification` | `code_verification` | `v02_SourceCodeVerificationFlow` |
| `created` | `created` | `Integer` |
| `eps` | `eps` | `v02_SourceTypeEps` |
| `flow` | `flow` | `String` |
| `giropay` | `giropay` | `v02_SourceTypeGiropay` |
| `ideal` | `ideal` | `v02_SourceTypeIdeal` |
| `klarna` | `klarna` | `v02_SourceTypeKlarna` |
| `livemode` | `livemode` | `Boolean` |
| `multibanco` | `multibanco` | `v02_SourceTypeMultibanco` |
| `owner` | `owner` | `v02_SourceOwner` |
| `p24` | `p24` | `v02_SourceTypeP24` |
| `receiver` | `receiver` | `v02_SourceReceiverFlow` |
| `redirect` | `redirect` | `v02_SourceRedirectFlow` |
| `sepaCreditTransfer` | `sepa_credit_transfer` | `v02_SourceTypeSepaCreditTransfer` |
| `sepaDebit` | `sepa_debit` | `v02_SourceTypeSepaDebit` |
| `sofort` | `sofort` | `v02_SourceTypeSofort` |
| `sourceOrder` | `source_order` | `v02_SourceOrder` |
| `statementDescriptor` | `statement_descriptor` | `String` |
| `threeDSecure` | `three_d_secure` | `v02_SourceTypeThreeDSecure` |
| `type` | `type` | `String` |
| `usage` | `usage` | `String` |
| `wechat` | `wechat` | `v02_SourceTypeWechat` |

### `v02_UpdateCustomersSourcesReqOwner`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_UpdateCussSourcesReqOwnerAddress` |
| `email` | `email` | `String` |
| `name` | `name` | `String` |
| `phone` | `phone` | `String` |

### `v02_UpdateInvoiceitemsReqDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_UpdateInvoiceitemsReqPriceData`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `product` | `product` | `String` |
| `taxBehavior` | `taxBehavior` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_UpdateInvoiceitemsReqPricing`

| Field | Stripe API Name | Type |
|---|---|---|
| `price` | `price` | `String` |

### `v02_UpdateInvoicesLinesReqDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_UpdateInvoicesLinesReqPdataProdData`

| Field | Stripe API Name | Type |
|---|---|---|
| `description` | `description` | `String` |
| `images` | `images` | `List<String>` |
| `metadata` | `metadata` | `v02_Metadata` |
| `name` | `name` | `String` |
| `taxCode` | `taxCode` | `String` |

### `v02_UpdateInvoicesLinesReqPriceData`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `product` | `product` | `String` |
| `productData` | `productData` | `v02_UpdateInvoicesLinesReqPdataProdData` |
| `taxBehavior` | `taxBehavior` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_UpdateInvoicesLinesReqPricing`

| Field | Stripe API Name | Type |
|---|---|---|
| `price` | `price` | `String` |

### `v02_UpdateInvoicesLinesReqTaxAmount`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `taxRateData` | `taxRateData` | `v02_UpdateInvsLinesReqTaxAmountTaxRateDt` |
| `taxabilityReason` | `taxabilityReason` | `String` |
| `taxableAmount` | `taxableAmount` | `Integer` |

### `v02_UpdateInvoicesReqAutomaticTax`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `liability` | `liability` | `v02_UpdateInvsReqAutomaticTaxLiability` |

### `v02_UpdateInvoicesReqCustomField`

| Field | Stripe API Name | Type |
|---|---|---|
| `name` | `name` | `String` |
| `value` | `value` | `String` |

### `v02_UpdateInvoicesReqDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_UpdateInvoicesReqIssuer`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_UpdateInvoicesReqPaymentSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `defaultMandate` | `defaultMandate` | `String` |
| `paymentMethodOptions` | `paymentMethodOptions` | `v02_UpdateInvoicesReqPaymentSettingsPMO` |
| `paymentMethodTypes` | `paymentMethodTypes` | `List<String>` |

### `v02_UpdateInvoicesReqPaymentSettingsPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `acssDebit` | `acssDebit` | `v02_UpdateInvoicesReqPsetsPMOAcssDebit` |
| `bancontact` | `bancontact` | `v02_UpdateInvoicesReqPsetsPMOBancontact` |
| `card` | `card` | `v02_UpdateInvoicesReqPsetsPMOCard` |
| `customerBalance` | `customerBalance` | `v02_UpdateInvoicesReqPsetsPMOCustbal` |
| `konbini` | `konbini` | `List<v02_AdditionalString>` |
| `sepaDebit` | `sepaDebit` | `List<v02_AdditionalString>` |
| `usBankAccount` | `usBankAccount` | `v02_UpdateInvoicesReqPsetsPMOUsBacct` |

### `v02_UpdateInvoicesReqPsetsPMOAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_UpdateInvsReqPsetsPMOAcssDbtManOpts` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_UpdateInvoicesReqPsetsPMOBancontact`

| Field | Stripe API Name | Type |
|---|---|---|
| `preferredLanguage` | `preferredLanguage` | `String` |

### `v02_UpdateInvoicesReqPsetsPMOCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `installments` | `installments` | `v02_UpdateInvsReqPsetsPMOCardInstls` |
| `requestThreeDSecure` | `requestThreeDSecure` | `String` |

### `v02_UpdateInvoicesReqPsetsPMOCustbal`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankTransfer` | `bankTransfer` | `v02_UpdateInvsReqPsetsPMOCustbalBankXfer` |
| `fundingType` | `fundingType` | `String` |

### `v02_UpdateInvoicesReqPsetsPMOUsBacct`

| Field | Stripe API Name | Type |
|---|---|---|
| `financialConnections` | `financialConnections` | `v02_UpdateInvsReqPsetsPMOUsBacctFinConn` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_UpdateInvoicesReqRendering`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountTaxDisplay` | `amountTaxDisplay` | `String` |
| `pdf` | `pdf` | `v02_UpdateInvoicesReqRenderingPdf` |
| `template` | `template` | `String` |
| `templateVersion` | `templateVersion` | `Integer` |

### `v02_UpdateInvoicesReqRenderingPdf`

| Field | Stripe API Name | Type |
|---|---|---|
| `pageSize` | `pageSize` | `String` |

### `v02_UpdateInvoicesReqShippingCost`

| Field | Stripe API Name | Type |
|---|---|---|
| `shippingRate` | `shippingRate` | `String` |
| `shippingRateData` | `shippingRateData` | `v02_UpdateInvoicesReqShippingCostRate` |

### `v02_UpdateInvoicesReqShippingCostRate`

| Field | Stripe API Name | Type |
|---|---|---|
| `deliveryEstimate` | `deliveryEstimate` | `v02_UpdateInvoicesReqShpCostRateDlvEst` |
| `displayName` | `displayName` | `String` |
| `fixedAmount` | `fixedAmount` | `v02_UpdateInvoicesReqShpCostRateFxdAmt` |
| `metadata` | `metadata` | `v02_Metadata` |
| `taxBehavior` | `taxBehavior` | `String` |
| `taxCode` | `taxCode` | `String` |
| `type` | `type` | `String` |

### `v02_UpdateInvoicesReqShippingDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_UpdateInvoicesReqShpDetailsAddress` |
| `name` | `name` | `String` |
| `phone` | `phone` | `String` |

### `v02_UpdateInvoicesReqShpCostRateDlvEst`

| Field | Stripe API Name | Type |
|---|---|---|
| `maximum` | `maximum` | `v02_UpdateInvsReqShpCostRateDlvEstMax` |
| `minimum` | `minimum` | `v02_UpdateInvsReqShpCostRateDlvEstMin` |

### `v02_UpdateInvoicesReqShpCostRateFxdAmt`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `r_currency` | `r_currency` | `String` |
| `currencyOptions` | `currencyOptions` | `List<v02_AdtlUpdateInvsReqShpCostRateFxdAmtCO>` |

### `v02_UpdateInvoicesReqShpDetailsAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_UpdateInvoicesReqTransferData`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `destination` | `destination` | `String` |

### `v02_UpdateInvsLinesReqTaxAmountTaxRateDt`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |
| `description` | `description` | `String` |
| `displayName` | `displayName` | `String` |
| `inclusive` | `inclusive` | `Boolean` |
| `jurisdiction` | `jurisdiction` | `String` |
| `jurisdictionLevel` | `jurisdictionLevel` | `String` |
| `percentage` | `percentage` | `Double` |
| `state` | `state` | `String` |
| `taxType` | `taxType` | `String` |

### `v02_UpdateInvsReqAutomaticTaxLiability`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_UpdateInvsReqPsetsPMOAcssDbtManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `transactionType` | `transactionType` | `String` |

### `v02_UpdateInvsReqPsetsPMOCardInstls`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `plan` | `plan` | `v02_UpdateInvsReqPsetsPMOCardInstlsPlan` |

### `v02_UpdateInvsReqPsetsPMOCardInstlsPlan`

| Field | Stripe API Name | Type |
|---|---|---|
| `count` | `count` | `Integer` |
| `interval` | `interval` | `String` |
| `type` | `type` | `String` |

### `v02_UpdateInvsReqPsetsPMOCustbalBankXfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `euBankTransfer` | `euBankTransfer` | `v02_UpdateInvsReqPsetsPMOCustbalEuXfer` |
| `type` | `type` | `String` |

### `v02_UpdateInvsReqPsetsPMOCustbalEuXfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |

### `v02_UpdateInvsReqPsetsPMOUsBacctFin`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountSubcategories` | `accountSubcategories` | `List<String>` |

### `v02_UpdateInvsReqPsetsPMOUsBacctFinConn`

| Field | Stripe API Name | Type |
|---|---|---|
| `filters` | `filters` | `v02_UpdateInvsReqPsetsPMOUsBacctFin` |
| `permissions` | `permissions` | `List<String>` |
| `prefetch` | `prefetch` | `List<String>` |

### `v02_UpdateInvsReqShpCostRateDlvEstMax`

| Field | Stripe API Name | Type |
|---|---|---|
| `unit` | `unit` | `String` |
| `value` | `value` | `Integer` |

### `v02_UpdateInvsReqShpCostRateDlvEstMin`

| Field | Stripe API Name | Type |
|---|---|---|
| `unit` | `unit` | `String` |
| `value` | `value` | `Integer` |

### `v02_UpdateInvsReqShpCostRateFxdAmtCOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `taxBehavior` | `taxBehavior` | `String` |

### `v02_UpdatePaymentIntentsReqPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `acssDebit` | `acssDebit` | `v02_UpdatePaymentIntentsReqPMOAcssDebit` |
| `affirm` | `affirm` | `v02_UpdatePaymentIntentsReqPMOAffirm` |
| `afterpayClearpay` | `afterpayClearpay` | `v02_UpdatePaymentIntentsReqPMOAftClrpay` |
| `alipay` | `alipay` | `v02_UpdatePaymentIntentsReqPMOAlipay` |
| `alma` | `alma` | `v02_UpdatePaymentIntentsReqPMOAlma` |
| `amazonPay` | `amazonPay` | `v02_UpdatePaymentIntentsReqPMOAmazonPay` |
| `auBecsDebit` | `auBecsDebit` | `v02_UpdatePisReqPMOAuBecsDebit` |
| `bacsDebit` | `bacsDebit` | `v02_UpdatePaymentIntentsReqPMOBacsDebit` |
| `bancontact` | `bancontact` | `v02_UpdatePaymentIntentsReqPMOBancontact` |
| `billie` | `billie` | `v02_UpdatePaymentIntentsReqPMOBillie` |
| `blik` | `blik` | `v02_UpdatePaymentIntentsReqPMOBlik` |
| `boleto` | `boleto` | `v02_UpdatePaymentIntentsReqPMOBoleto` |
| `card` | `card` | `v02_UpdatePaymentIntentsReqPMOCard` |
| `cardPresent` | `cardPresent` | `v02_UpdatePisReqPMOCardPresent` |
| `cashapp` | `cashapp` | `v02_UpdatePaymentIntentsReqPMOCashapp` |
| `customerBalance` | `customerBalance` | `v02_UpdatePaymentIntentsReqPMOCustbal` |
| `eps` | `eps` | `v02_UpdatePaymentIntentsReqPMOEps` |
| `fpx` | `fpx` | `v02_UpdatePaymentIntentsReqPMOFpx` |
| `giropay` | `giropay` | `v02_UpdatePaymentIntentsReqPMOGiropay` |
| `grabpay` | `grabpay` | `v02_UpdatePaymentIntentsReqPMOGrabpay` |
| `ideal` | `ideal` | `v02_UpdatePaymentIntentsReqPMOIdeal` |
| `interacPresent` | `interacPresent` | `List<v02_AdditionalString>` |
| `kakaoPay` | `kakaoPay` | `v02_UpdatePaymentIntentsReqPMOKakaoPay` |
| `klarna` | `klarna` | `v02_UpdatePaymentIntentsReqPMOKlarna` |
| `konbini` | `konbini` | `v02_UpdatePaymentIntentsReqPMOKonbini` |
| `krCard` | `krCard` | `v02_UpdatePaymentIntentsReqPMOKrCard` |
| `link` | `link` | `v02_UpdatePaymentIntentsReqPMOLink` |
| `mobilepay` | `mobilepay` | `v02_UpdatePaymentIntentsReqPMOMobilepay` |
| `multibanco` | `multibanco` | `v02_UpdatePaymentIntentsReqPMOMultibanco` |
| `naverPay` | `naverPay` | `v02_UpdatePaymentIntentsReqPMONaverPay` |
| `nzBankAccount` | `nzBankAccount` | `v02_UpdatePisReqPMONzBankAccount` |
| `oxxo` | `oxxo` | `v02_UpdatePaymentIntentsReqPMOOxxo` |
| `p24` | `p24` | `v02_UpdatePaymentIntentsReqPMOP24` |
| `payByBank` | `payByBank` | `List<v02_AdditionalString>` |
| `payco` | `payco` | `v02_UpdatePaymentIntentsReqPMOPayco` |
| `paynow` | `paynow` | `v02_UpdatePaymentIntentsReqPMOPaynow` |
| `paypal` | `paypal` | `v02_UpdatePaymentIntentsReqPMOPaypal` |
| `pix` | `pix` | `v02_UpdatePaymentIntentsReqPMOPix` |
| `promptpay` | `promptpay` | `v02_UpdatePaymentIntentsReqPMOPromptpay` |
| `revolutPay` | `revolutPay` | `v02_UpdatePaymentIntentsReqPMORevolutPay` |
| `samsungPay` | `samsungPay` | `v02_UpdatePaymentIntentsReqPMOSamsungPay` |
| `sepaDebit` | `sepaDebit` | `v02_UpdatePaymentIntentsReqPMOSepaDebit` |
| `sofort` | `sofort` | `v02_UpdatePaymentIntentsReqPMOSofort` |
| `swish` | `swish` | `v02_UpdatePaymentIntentsReqPMOSwish` |
| `twint` | `twint` | `v02_UpdatePaymentIntentsReqPMOTwint` |
| `usBankAccount` | `usBankAccount` | `v02_UpdatePisReqPMOUsBankAccount` |
| `wechatPay` | `wechatPay` | `v02_UpdatePaymentIntentsReqPMOWechatPay` |
| `zip` | `zip` | `v02_UpdatePaymentIntentsReqPMOZip` |

### `v02_UpdatePaymentIntentsReqPMOAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_UpdatePisReqPMOAcssDebitManOpts` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_UpdatePaymentIntentsReqPMOAffirm`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `preferredLocale` | `preferredLocale` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOAftClrpay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `reference` | `reference` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOAlipay`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOAlma`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |

### `v02_UpdatePaymentIntentsReqPMOAmazonPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOBacsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_UpdatePisReqPMOBacsDebitManOpts` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |

### `v02_UpdatePaymentIntentsReqPMOBancontact`

| Field | Stripe API Name | Type |
|---|---|---|
| `preferredLanguage` | `preferredLanguage` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOBillie`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |

### `v02_UpdatePaymentIntentsReqPMOBlik`

| Field | Stripe API Name | Type |
|---|---|---|
| `code` | `code` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOBoleto`

| Field | Stripe API Name | Type |
|---|---|---|
| `expiresAfterDays` | `expiresAfterDays` | `Integer` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `cvcToken` | `cvcToken` | `String` |
| `installments` | `installments` | `v02_UpdatePisReqPMOCardInstallments` |
| `mandateOptions` | `mandateOptions` | `v02_UpdatePisReqPMOCardMandateOptions` |
| `moto` | `moto` | `Boolean` |
| `network` | `network` | `String` |
| `requestExtendedAuthorization` | `requestExtendedAuthorization` | `String` |
| `requestIncrementalAuthorization` | `requestIncrementalAuthorization` | `String` |
| `requestMulticapture` | `requestMulticapture` | `String` |
| `requestOvercapture` | `requestOvercapture` | `String` |
| `requestThreeDSecure` | `requestThreeDSecure` | `String` |
| `requireCvcRecollection` | `requireCvcRecollection` | `Boolean` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `statementDescriptorSuffixKana` | `statementDescriptorSuffixKana` | `String` |
| `statementDescriptorSuffixKanji` | `statementDescriptorSuffixKanji` | `String` |
| `threeDSecure` | `threeDSecure` | `v02_UpdatePisReqPMOCardThreeDSecure` |

### `v02_UpdatePaymentIntentsReqPMOCashapp`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOCustbal`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankTransfer` | `bankTransfer` | `v02_UpdatePisReqPMOCustbalBankXfer` |
| `fundingType` | `fundingType` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOEps`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOFpx`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOGiropay`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOGrabpay`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOIdeal`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOKakaoPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOKlarna`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `preferredLocale` | `preferredLocale` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOKonbini`

| Field | Stripe API Name | Type |
|---|---|---|
| `confirmationNumber` | `confirmationNumber` | `String` |
| `expiresAfterDays` | `expiresAfterDays` | `Integer` |
| `expiresAt` | `expiresAt` | `Integer` |
| `productDescription` | `productDescription` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOKrCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOLink`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `persistentToken` | `persistentToken` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOMobilepay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOMultibanco`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMONaverPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOOxxo`

| Field | Stripe API Name | Type |
|---|---|---|
| `expiresAfterDays` | `expiresAfterDays` | `Integer` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOP24`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `tosShownAndAccepted` | `tosShownAndAccepted` | `Boolean` |

### `v02_UpdatePaymentIntentsReqPMOPayco`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |

### `v02_UpdatePaymentIntentsReqPMOPaynow`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOPaypal`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `preferredLocale` | `preferredLocale` | `String` |
| `reference` | `reference` | `String` |
| `riskCorrelationId` | `riskCorrelationId` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOPix`

| Field | Stripe API Name | Type |
|---|---|---|
| `expiresAfterSeconds` | `expiresAfterSeconds` | `Integer` |
| `expiresAt` | `expiresAt` | `Integer` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOPromptpay`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMORevolutPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOSamsungPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |

### `v02_UpdatePaymentIntentsReqPMOSepaDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_UpdatePisReqPMOSepaDebitManOpts` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |

### `v02_UpdatePaymentIntentsReqPMOSofort`

| Field | Stripe API Name | Type |
|---|---|---|
| `preferredLanguage` | `preferredLanguage` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOSwish`

| Field | Stripe API Name | Type |
|---|---|---|
| `reference` | `reference` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOTwint`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOWechatPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `appId` | `appId` | `String` |
| `client` | `client` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqPMOZip`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_UpdatePaymentIntentsReqShipping`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_UpdatePisReqShippingAddress` |
| `carrier` | `carrier` | `String` |
| `name` | `name` | `String` |
| `phone` | `phone` | `String` |
| `trackingNumber` | `trackingNumber` | `String` |

### `v02_UpdatePaymentIntentsReqTransferData`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |

### `v02_UpdatePaymentLinksReqAftCmplHstCfrm`

| Field | Stripe API Name | Type |
|---|---|---|
| `customMessage` | `customMessage` | `String` |

### `v02_UpdatePaymentLinksReqAftCmplRedirect`

| Field | Stripe API Name | Type |
|---|---|---|
| `url` | `url` | `String` |

### `v02_UpdatePaymentLinksReqAfterCompletion`

| Field | Stripe API Name | Type |
|---|---|---|
| `hostedConfirmation` | `hostedConfirmation` | `v02_UpdatePaymentLinksReqAftCmplHstCfrm` |
| `redirect` | `redirect` | `v02_UpdatePaymentLinksReqAftCmplRedirect` |
| `type` | `type` | `String` |

### `v02_UpdatePaymentLinksReqAutomaticTax`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `liability` | `liability` | `v02_UpdatePlinksReqAutomaticTaxLiability` |

### `v02_UpdatePaymentLinksReqCustomField`

| Field | Stripe API Name | Type |
|---|---|---|
| `dropdown` | `dropdown` | `v02_UpdatePlinksReqCustomFieldDropdown` |
| `key` | `key` | `String` |
| `label` | `label` | `v02_UpdatePlinksReqCustomFieldLabel` |
| `numeric` | `numeric` | `v02_UpdatePlinksReqCustomFieldNumeric` |
| `optional` | `optional` | `Boolean` |
| `text` | `text` | `v02_UpdatePaymentLinksReqCustomFieldText` |
| `type` | `type` | `String` |

### `v02_UpdatePaymentLinksReqCustomFieldText`

| Field | Stripe API Name | Type |
|---|---|---|
| `defaultValue` | `defaultValue` | `String` |
| `maximumLength` | `maximumLength` | `Integer` |
| `minimumLength` | `minimumLength` | `Integer` |

### `v02_UpdatePaymentLinksReqCustomText`

| Field | Stripe API Name | Type |
|---|---|---|
| `afterSubmit` | `afterSubmit` | `v02_UpdatePlinksReqCustomTextAfterSubmit` |
| `shippingAddress` | `shippingAddress` | `v02_UpdatePlinksReqCustomTextShpAddress` |
| `submit` | `submit` | `v02_UpdatePlinksReqCustomTextSubmit` |
| `termsOfServiceAcceptance` | `termsOfServiceAcceptance` | `v02_UpdatePlinksReqCustomTextTermsOf` |

### `v02_UpdatePaymentLinksReqInvoiceCreation`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `invoiceData` | `invoiceData` | `v02_UpdatePlinksReqInvCrtnInvoiceData` |

### `v02_UpdatePaymentLinksReqLineItem`

| Field | Stripe API Name | Type |
|---|---|---|
| `adjustableQuantity` | `adjustableQuantity` | `v02_UpdatePlinksReqLineItemAdjstQuan` |
| `id` | `id` | `String` |
| `quantity` | `quantity` | `Integer` |

### `v02_UpdatePaymentLinksReqPiData`

| Field | Stripe API Name | Type |
|---|---|---|
| `description` | `description` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `statementDescriptor` | `statementDescriptor` | `String` |
| `statementDescriptorSuffix` | `statementDescriptorSuffix` | `String` |
| `transferGroup` | `transferGroup` | `String` |

### `v02_UpdatePaymentLinksReqRestrictions`

| Field | Stripe API Name | Type |
|---|---|---|
| `completedSessions` | `completedSessions` | `v02_UpdatePlinksReqRestrictionsComple` |

### `v02_UpdatePaymentLinksReqSubData`

| Field | Stripe API Name | Type |
|---|---|---|
| `invoiceSettings` | `invoiceSettings` | `v02_UpdatePlinksReqSubDataInvSettings` |
| `metadata` | `metadata` | `v02_Metadata` |
| `trialPeriodDays` | `trialPeriodDays` | `Integer` |
| `trialSettings` | `trialSettings` | `v02_UpdatePlinksReqSubDataTrialSettings` |

### `v02_UpdatePaymentMethodsReqCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `expMonth` | `expMonth` | `Integer` |
| `expYear` | `expYear` | `Integer` |
| `networks` | `networks` | `v02_UpdatePaymentMethodsReqCardNetworks` |

### `v02_UpdatePaymentMethodsReqCardNetworks`

| Field | Stripe API Name | Type |
|---|---|---|
| `preferred` | `preferred` | `String` |

### `v02_UpdatePaymentMethodsReqUsBankAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderType` | `accountHolderType` | `String` |
| `accountType` | `accountType` | `String` |

### `v02_UpdatePcodesReqRestrictionsCOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `minimumAmount` | `minimumAmount` | `Integer` |

### `v02_UpdatePisReqPMOAcssDebitManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `customMandateUrl` | `customMandateUrl` | `String` |
| `intervalDescription` | `intervalDescription` | `String` |
| `paymentSchedule` | `paymentSchedule` | `String` |
| `transactionType` | `transactionType` | `String` |

### `v02_UpdatePisReqPMOAuBecsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |

### `v02_UpdatePisReqPMOBacsDebitManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `referencePrefix` | `referencePrefix` | `String` |

### `v02_UpdatePisReqPMOCardInstallments`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `plan` | `plan` | `v02_UpdatePisReqPMOCardInstallmentsPlan` |

### `v02_UpdatePisReqPMOCardInstallmentsPlan`

| Field | Stripe API Name | Type |
|---|---|---|
| `count` | `count` | `Integer` |
| `interval` | `interval` | `String` |
| `type` | `type` | `String` |

### `v02_UpdatePisReqPMOCardMandateOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `amountType` | `amountType` | `String` |
| `description` | `description` | `String` |
| `endDate` | `endDate` | `Integer` |
| `interval` | `interval` | `String` |
| `intervalCount` | `intervalCount` | `Integer` |
| `reference` | `reference` | `String` |
| `startDate` | `startDate` | `Integer` |
| `supportedTypes` | `supportedTypes` | `List<String>` |

### `v02_UpdatePisReqPMOCardPresent`

| Field | Stripe API Name | Type |
|---|---|---|
| `requestExtendedAuthorization` | `requestExtendedAuthorization` | `Boolean` |
| `requestIncrementalAuthorizationSupport` | `requestIncrementalAuthorizationSupport` | `Boolean` |
| `routing` | `routing` | `v02_UpdatePisReqPMOCardPresentRouting` |

### `v02_UpdatePisReqPMOCardPresentRouting`

| Field | Stripe API Name | Type |
|---|---|---|
| `requestedPriority` | `requestedPriority` | `String` |

### `v02_UpdatePisReqPMOCardThreeDSecure`

| Field | Stripe API Name | Type |
|---|---|---|
| `aresTransStatus` | `aresTransStatus` | `String` |
| `cryptogram` | `cryptogram` | `String` |
| `electronicCommerceIndicator` | `electronicCommerceIndicator` | `String` |
| `exemptionIndicator` | `exemptionIndicator` | `String` |
| `networkOptions` | `networkOptions` | `v02_UpdatePisReqPMOCardThreeDSecure` |
| `requestorChallengeIndicator` | `requestorChallengeIndicator` | `String` |
| `transactionId` | `transactionId` | `String` |
| `version` | `version` | `String` |

### `v02_UpdatePisReqPMOCustbalBankXfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `euBankTransfer` | `euBankTransfer` | `v02_UpdatePisReqPMOCustbalEuXfer` |
| `requestedAddressTypes` | `requestedAddressTypes` | `List<String>` |
| `type` | `type` | `String` |

### `v02_UpdatePisReqPMOCustbalEuXfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |

### `v02_UpdatePisReqPMONzBankAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |

### `v02_UpdatePisReqPMOSepaDebitManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `referencePrefix` | `referencePrefix` | `String` |

### `v02_UpdatePisReqPMOUsBacctFinConnFilters`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountSubcategories` | `accountSubcategories` | `List<String>` |

### `v02_UpdatePisReqPMOUsBankAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `financialConnections` | `financialConnections` | `v02_UpdatePisReqPMOUsBankAccountFinConn` |
| `mandateOptions` | `mandateOptions` | `v02_UpdatePisReqPMOUsBankAccountManOpts` |
| `networks` | `networks` | `v02_UpdatePisReqPMOUsBankAccountNetworks` |
| `preferredSettlementSpeed` | `preferredSettlementSpeed` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_UpdatePisReqPMOUsBankAccountFinConn`

| Field | Stripe API Name | Type |
|---|---|---|
| `filters` | `filters` | `v02_UpdatePisReqPMOUsBacctFinConnFilters` |
| `permissions` | `permissions` | `List<String>` |
| `prefetch` | `prefetch` | `List<String>` |
| `returnUrl` | `returnUrl` | `String` |

### `v02_UpdatePisReqPMOUsBankAccountManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `collectionMethod` | `collectionMethod` | `String` |

### `v02_UpdatePisReqPMOUsBankAccountNetworks`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `List<String>` |

### `v02_UpdatePisReqPaymentMethodData`

| Field | Stripe API Name | Type |
|---|---|---|
| `acssDebit` | `acssDebit` | `v02_UpdatePisReqPmDataAcssDebit` |
| `affirm` | `affirm` | `List<v02_AdditionalString>` |
| `afterpayClearpay` | `afterpayClearpay` | `List<v02_AdditionalString>` |
| `alipay` | `alipay` | `List<v02_AdditionalString>` |
| `allowRedisplay` | `allowRedisplay` | `String` |
| `alma` | `alma` | `List<v02_AdditionalString>` |
| `amazonPay` | `amazonPay` | `List<v02_AdditionalString>` |
| `auBecsDebit` | `auBecsDebit` | `v02_UpdatePisReqPmDataAuBecsDebit` |
| `bacsDebit` | `bacsDebit` | `v02_UpdatePisReqPmDataBacsDebit` |
| `bancontact` | `bancontact` | `List<v02_AdditionalString>` |
| `billie` | `billie` | `List<v02_AdditionalString>` |
| `billingDetails` | `billingDetails` | `v02_UpdatePisReqPmDataBillingDetails` |
| `blik` | `blik` | `List<v02_AdditionalString>` |
| `boleto` | `boleto` | `v02_UpdatePisReqPaymentMethodDataBoleto` |
| `cashapp` | `cashapp` | `List<v02_AdditionalString>` |
| `customerBalance` | `customerBalance` | `List<v02_AdditionalString>` |
| `eps` | `eps` | `v02_UpdatePisReqPaymentMethodDataEps` |
| `fpx` | `fpx` | `v02_UpdatePisReqPaymentMethodDataFpx` |
| `giropay` | `giropay` | `List<v02_AdditionalString>` |
| `grabpay` | `grabpay` | `List<v02_AdditionalString>` |
| `ideal` | `ideal` | `v02_UpdatePisReqPaymentMethodDataIdeal` |
| `interacPresent` | `interacPresent` | `List<v02_AdditionalString>` |
| `kakaoPay` | `kakaoPay` | `List<v02_AdditionalString>` |
| `klarna` | `klarna` | `v02_UpdatePisReqPaymentMethodDataKlarna` |
| `konbini` | `konbini` | `List<v02_AdditionalString>` |
| `krCard` | `krCard` | `List<v02_AdditionalString>` |
| `link` | `link` | `List<v02_AdditionalString>` |
| `metadata` | `metadata` | `v02_Metadata` |
| `mobilepay` | `mobilepay` | `List<v02_AdditionalString>` |
| `multibanco` | `multibanco` | `List<v02_AdditionalString>` |
| `naverPay` | `naverPay` | `v02_UpdatePisReqPmDataNaverPay` |
| `nzBankAccount` | `nzBankAccount` | `v02_UpdatePisReqPaymentMethodDataNzBacct` |
| `oxxo` | `oxxo` | `List<v02_AdditionalString>` |
| `p24` | `p24` | `v02_UpdatePisReqPaymentMethodDataP24` |
| `payByBank` | `payByBank` | `List<v02_AdditionalString>` |
| `payco` | `payco` | `List<v02_AdditionalString>` |
| `paynow` | `paynow` | `List<v02_AdditionalString>` |
| `paypal` | `paypal` | `List<v02_AdditionalString>` |
| `pix` | `pix` | `List<v02_AdditionalString>` |
| `promptpay` | `promptpay` | `List<v02_AdditionalString>` |
| `radarOptions` | `radarOptions` | `v02_UpdatePisReqPmDataRadarOptions` |
| `revolutPay` | `revolutPay` | `List<v02_AdditionalString>` |
| `samsungPay` | `samsungPay` | `List<v02_AdditionalString>` |
| `satispay` | `satispay` | `List<v02_AdditionalString>` |
| `sepaDebit` | `sepaDebit` | `v02_UpdatePisReqPmDataSepaDebit` |
| `sofort` | `sofort` | `v02_UpdatePisReqPaymentMethodDataSofort` |
| `swish` | `swish` | `List<v02_AdditionalString>` |
| `twint` | `twint` | `List<v02_AdditionalString>` |
| `type` | `type` | `String` |
| `usBankAccount` | `usBankAccount` | `v02_UpdatePisReqPaymentMethodDataUsBacct` |
| `wechatPay` | `wechatPay` | `List<v02_AdditionalString>` |
| `zip` | `zip` | `List<v02_AdditionalString>` |

### `v02_UpdatePisReqPaymentMethodDataBoleto`

| Field | Stripe API Name | Type |
|---|---|---|
| `taxId` | `taxId` | `String` |

### `v02_UpdatePisReqPaymentMethodDataEps`

| Field | Stripe API Name | Type |
|---|---|---|
| `bank` | `bank` | `String` |

### `v02_UpdatePisReqPaymentMethodDataFpx`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderType` | `accountHolderType` | `String` |
| `bank` | `bank` | `String` |

### `v02_UpdatePisReqPaymentMethodDataIdeal`

| Field | Stripe API Name | Type |
|---|---|---|
| `bank` | `bank` | `String` |

### `v02_UpdatePisReqPaymentMethodDataKlarna`

| Field | Stripe API Name | Type |
|---|---|---|
| `dob` | `dob` | `v02_UpdatePisReqPmDataKlarnaDob` |

### `v02_UpdatePisReqPaymentMethodDataNzBacct`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderName` | `accountHolderName` | `String` |
| `accountNumber` | `accountNumber` | `String` |
| `bankCode` | `bankCode` | `String` |
| `branchCode` | `branchCode` | `String` |
| `reference` | `reference` | `String` |
| `suffix` | `suffix` | `String` |

### `v02_UpdatePisReqPaymentMethodDataP24`

| Field | Stripe API Name | Type |
|---|---|---|
| `bank` | `bank` | `String` |

### `v02_UpdatePisReqPaymentMethodDataSofort`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |

### `v02_UpdatePisReqPaymentMethodDataUsBacct`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderType` | `accountHolderType` | `String` |
| `accountNumber` | `accountNumber` | `String` |
| `accountType` | `accountType` | `String` |
| `financialConnectionsAccount` | `financialConnectionsAccount` | `String` |
| `routingNumber` | `routingNumber` | `String` |

### `v02_UpdatePisReqPmDataAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountNumber` | `accountNumber` | `String` |
| `institutionNumber` | `institutionNumber` | `String` |
| `transitNumber` | `transitNumber` | `String` |

### `v02_UpdatePisReqPmDataAuBecsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountNumber` | `accountNumber` | `String` |
| `bsbNumber` | `bsbNumber` | `String` |

### `v02_UpdatePisReqPmDataBacsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountNumber` | `accountNumber` | `String` |
| `sortCode` | `sortCode` | `String` |

### `v02_UpdatePisReqPmDataBdAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_UpdatePisReqPmDataBillingDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_UpdatePisReqPmDataBdAddress` |
| `email` | `email` | `String` |
| `name` | `name` | `String` |
| `phone` | `phone` | `String` |
| `taxId` | `taxId` | `String` |

### `v02_UpdatePisReqPmDataKlarnaDob`

| Field | Stripe API Name | Type |
|---|---|---|
| `day` | `day` | `Integer` |
| `month` | `month` | `Integer` |
| `year` | `year` | `Integer` |

### `v02_UpdatePisReqPmDataNaverPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `funding` | `funding` | `String` |

### `v02_UpdatePisReqPmDataRadarOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `session` | `session` | `String` |

### `v02_UpdatePisReqPmDataSepaDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `iban` | `iban` | `String` |

### `v02_UpdatePisReqShippingAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_UpdatePlinksReqAutomaticTaxLiability`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_UpdatePlinksReqCFieldDropdownOption`

| Field | Stripe API Name | Type |
|---|---|---|
| `label` | `label` | `String` |
| `value` | `value` | `String` |

### `v02_UpdatePlinksReqCustomFieldDropdown`

| Field | Stripe API Name | Type |
|---|---|---|
| `defaultValue` | `defaultValue` | `String` |
| `options` | `options` | `List<v02_UpdatePlinksReqCFieldDropdownOption>` |

### `v02_UpdatePlinksReqCustomFieldLabel`

| Field | Stripe API Name | Type |
|---|---|---|
| `custom` | `custom` | `String` |
| `type` | `type` | `String` |

### `v02_UpdatePlinksReqCustomFieldNumeric`

| Field | Stripe API Name | Type |
|---|---|---|
| `defaultValue` | `defaultValue` | `String` |
| `maximumLength` | `maximumLength` | `Integer` |
| `minimumLength` | `minimumLength` | `Integer` |

### `v02_UpdatePlinksReqCustomTextAfterSubmit`

| Field | Stripe API Name | Type |
|---|---|---|
| `message` | `message` | `String` |

### `v02_UpdatePlinksReqCustomTextShpAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `message` | `message` | `String` |

### `v02_UpdatePlinksReqCustomTextSubmit`

| Field | Stripe API Name | Type |
|---|---|---|
| `message` | `message` | `String` |

### `v02_UpdatePlinksReqCustomTextTermsOf`

| Field | Stripe API Name | Type |
|---|---|---|
| `message` | `message` | `String` |

### `v02_UpdatePlinksReqInvCrtnInvDataCField`

| Field | Stripe API Name | Type |
|---|---|---|
| `name` | `name` | `String` |
| `value` | `value` | `String` |

### `v02_UpdatePlinksReqInvCrtnInvDataIssuer`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_UpdatePlinksReqInvCrtnInvDtRndrOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountTaxDisplay` | `amountTaxDisplay` | `String` |

### `v02_UpdatePlinksReqInvCrtnInvoiceData`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountTaxIds` | `accountTaxIds` | `List<String>` |
| `customFields` | `customFields` | `List<v02_UpdatePlinksReqInvCrtnInvDataCField>` |
| `description` | `description` | `String` |
| `footer` | `footer` | `String` |
| `issuer` | `issuer` | `v02_UpdatePlinksReqInvCrtnInvDataIssuer` |
| `metadata` | `metadata` | `v02_Metadata` |
| `renderingOptions` | `renderingOptions` | `v02_UpdatePlinksReqInvCrtnInvDtRndrOpts` |

### `v02_UpdatePlinksReqLineItemAdjstQuan`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `maximum` | `maximum` | `Integer` |
| `minimum` | `minimum` | `Integer` |

### `v02_UpdatePlinksReqRestrictionsComple`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_limit` | `r_limit` | `Integer` |

### `v02_UpdatePlinksReqSubDataInvSetsIssuer`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_UpdatePlinksReqSubDataInvSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `issuer` | `issuer` | `v02_UpdatePlinksReqSubDataInvSetsIssuer` |

### `v02_UpdatePlinksReqSubDataTrialSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `endBehavior` | `endBehavior` | `v02_UpdatePlinksReqSubDtTrialSetsEndBhvr` |

### `v02_UpdatePlinksReqSubDtTrialSetsEndBhvr`

| Field | Stripe API Name | Type |
|---|---|---|
| `missingPaymentMethod` | `missingPaymentMethod` | `String` |

### `v02_UpdatePmConfigurationsReqAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqAcssDbtDsplPr` |

### `v02_UpdatePmConfigurationsReqAffirm`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqAffirmDsplPreference` |

### `v02_UpdatePmConfigurationsReqAftClrpay`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqAftClrpayDspl` |

### `v02_UpdatePmConfigurationsReqAlipay`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqAlipayDsplPreference` |

### `v02_UpdatePmConfigurationsReqAlma`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqAlmaDsplPreference` |

### `v02_UpdatePmConfigurationsReqAmazonPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqAmazonPayDspl` |

### `v02_UpdatePmConfigurationsReqApplePay`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqApplePayDsplP` |

### `v02_UpdatePmConfigurationsReqAuBecsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqAuBecsDbtDspl` |

### `v02_UpdatePmConfigurationsReqBacsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqBacsDbtDsplPr` |

### `v02_UpdatePmConfigurationsReqBancontact`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqBancontactDspl` |

### `v02_UpdatePmConfigurationsReqBillie`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqBillieDsplPreference` |

### `v02_UpdatePmConfigurationsReqBlik`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqBlikDsplPreference` |

### `v02_UpdatePmConfigurationsReqBoleto`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqBoletoDsplPreference` |

### `v02_UpdatePmConfigurationsReqCB`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqCBDisplayPreference` |

### `v02_UpdatePmConfigurationsReqCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqCardDsplPreference` |

### `v02_UpdatePmConfigurationsReqCashapp`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqCashappDsplPre` |

### `v02_UpdatePmConfigurationsReqCustbal`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqCustbalDsplPre` |

### `v02_UpdatePmConfigurationsReqEps`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqEpsDisplayPreference` |

### `v02_UpdatePmConfigurationsReqFpx`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqFpxDisplayPreference` |

### `v02_UpdatePmConfigurationsReqGiropay`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqGiropayDsplPre` |

### `v02_UpdatePmConfigurationsReqGooglePay`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqGooglePayDspl` |

### `v02_UpdatePmConfigurationsReqGrabpay`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqGrabpayDsplPre` |

### `v02_UpdatePmConfigurationsReqIdeal`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqIdealDsplPreference` |

### `v02_UpdatePmConfigurationsReqJcb`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqJcbDisplayPreference` |

### `v02_UpdatePmConfigurationsReqKlarna`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqKlarnaDsplPreference` |

### `v02_UpdatePmConfigurationsReqKonbini`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqKonbiniDsplPre` |

### `v02_UpdatePmConfigurationsReqLink`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqLinkDsplPreference` |

### `v02_UpdatePmConfigurationsReqMobilepay`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqMobilepayDsplP` |

### `v02_UpdatePmConfigurationsReqMultibanco`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqMultibancoDspl` |

### `v02_UpdatePmConfigurationsReqNzBacct`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqNzBacctDsplPr` |

### `v02_UpdatePmConfigurationsReqOxxo`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqOxxoDsplPreference` |

### `v02_UpdatePmConfigurationsReqP24`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqP24DisplayPreference` |

### `v02_UpdatePmConfigurationsReqPayByBank`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqPayByBankDspl` |

### `v02_UpdatePmConfigurationsReqPaynow`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqPaynowDsplPreference` |

### `v02_UpdatePmConfigurationsReqPaypal`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqPaypalDsplPreference` |

### `v02_UpdatePmConfigurationsReqPix`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqPixDisplayPreference` |

### `v02_UpdatePmConfigurationsReqPromptpay`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqPromptpayDsplP` |

### `v02_UpdatePmConfigurationsReqRevolutPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqRevolutPayDspl` |

### `v02_UpdatePmConfigurationsReqSatispay`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqSatispayDsplPr` |

### `v02_UpdatePmConfigurationsReqSepaDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqSepaDbtDsplPr` |

### `v02_UpdatePmConfigurationsReqSofort`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqSofortDsplPreference` |

### `v02_UpdatePmConfigurationsReqSwish`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqSwishDsplPreference` |

### `v02_UpdatePmConfigurationsReqTwint`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqTwintDsplPreference` |

### `v02_UpdatePmConfigurationsReqUsBacct`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqUsBacctDsplPr` |

### `v02_UpdatePmConfigurationsReqWechatPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqWechatPayDspl` |

### `v02_UpdatePmConfigurationsReqZip`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqZipDisplayPreference` |

### `v02_UpdatePmConfsReqAcssDbtDsplPr`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqAffirmDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqAftClrpayDspl`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqAlipayDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqAlmaDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqAmazonPayDspl`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqApplePayDsplP`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqApplePayLater`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayPreference` | `displayPreference` | `v02_UpdatePmConfsReqApplePayLaterD` |

### `v02_UpdatePmConfsReqApplePayLaterD`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqAuBecsDbtDspl`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqBacsDbtDsplPr`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqBancontactDspl`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqBillieDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqBlikDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqBoletoDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqCBDisplayPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqCardDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqCashappDsplPre`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqCustbalDsplPre`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqEpsDisplayPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqFpxDisplayPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqGiropayDsplPre`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqGooglePayDspl`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqGrabpayDsplPre`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqIdealDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqJcbDisplayPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqKlarnaDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqKonbiniDsplPre`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqLinkDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqMobilepayDsplP`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqMultibancoDspl`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqNzBacctDsplPr`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqOxxoDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqP24DisplayPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqPayByBankDspl`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqPaynowDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqPaypalDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqPixDisplayPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqPromptpayDsplP`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqRevolutPayDspl`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqSatispayDsplPr`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqSepaDbtDsplPr`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqSofortDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqSwishDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqTwintDsplPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqUsBacctDsplPr`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqWechatPayDspl`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmConfsReqZipDisplayPreference`

| Field | Stripe API Name | Type |
|---|---|---|
| `preference` | `preference` | `String` |

### `v02_UpdatePmsReqBillingDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_UpdatePmsReqBillingDetailsAddress` |
| `email` | `email` | `String` |
| `name` | `name` | `String` |
| `phone` | `phone` | `String` |
| `taxId` | `taxId` | `String` |

### `v02_UpdatePmsReqBillingDetailsAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_UpdatePricesReqCOptsTierUpTo`

| Field | Stripe API Name | Type |
|---|---|---|
| `stringField` | `stringField` | `String` |
| `integerField` | `integerField` | `Integer` |

### `v02_UpdatePricesReqCurrencyOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `customUnitAmount` | `customUnitAmount` | `v02_UpdatePricesReqCurrencyOptionsCUA` |
| `taxBehavior` | `taxBehavior` | `String` |
| `tiers` | `tiers` | `List<v02_UpdatePricesReqCurrencyOptionsTier>` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_UpdatePricesReqCurrencyOptionsCUA`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `maximum` | `maximum` | `Integer` |
| `minimum` | `minimum` | `Integer` |
| `preset` | `preset` | `Integer` |

### `v02_UpdatePricesReqCurrencyOptionsTier`

| Field | Stripe API Name | Type |
|---|---|---|
| `flatAmount` | `flatAmount` | `Integer` |
| `flatAmountDecimal` | `flatAmountDecimal` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |
| `upTo` | `upTo` | `v02_UpdatePricesReqCOptsTierUpTo` |

### `v02_UpdateProductsReqMarketingFeature`

| Field | Stripe API Name | Type |
|---|---|---|
| `name` | `name` | `String` |

### `v02_UpdatePromotionCodesReqRestrictions`

| Field | Stripe API Name | Type |
|---|---|---|
| `currencyOptions` | `currencyOptions` | `List<v02_AdtlUpdatePcodesReqRestrictionsCOpts>` |

### `v02_UpdateQuotesReqAutomaticTax`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `liability` | `liability` | `v02_UpdateQuotesReqAutomaticTaxLiability` |

### `v02_UpdateQuotesReqAutomaticTaxLiability`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_UpdateQuotesReqDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_UpdateQuotesReqInvoiceSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `daysUntilDue` | `daysUntilDue` | `Integer` |
| `issuer` | `issuer` | `v02_UpdateQuotesReqInvoiceSettingsIssuer` |

### `v02_UpdateQuotesReqInvoiceSettingsIssuer`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_UpdateQuotesReqLineItem`

| Field | Stripe API Name | Type |
|---|---|---|
| `discounts` | `discounts` | `List<v02_UpdateQuotesReqLineItemDiscount>` |
| `id` | `id` | `String` |
| `price` | `price` | `String` |
| `priceData` | `priceData` | `v02_UpdateQuotesReqLineItemPriceData` |
| `quantity` | `quantity` | `Integer` |
| `taxRates` | `taxRates` | `List<String>` |

### `v02_UpdateQuotesReqLineItemDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_UpdateQuotesReqLineItemPdataRecur`

| Field | Stripe API Name | Type |
|---|---|---|
| `interval` | `interval` | `String` |
| `intervalCount` | `intervalCount` | `Integer` |

### `v02_UpdateQuotesReqLineItemPriceData`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `product` | `product` | `String` |
| `recurring` | `recurring` | `v02_UpdateQuotesReqLineItemPdataRecur` |
| `taxBehavior` | `taxBehavior` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_UpdateQuotesReqSubDataEffectiveDate`

| Field | Stripe API Name | Type |
|---|---|---|
| `stringField` | `stringField` | `String` |
| `integerField` | `integerField` | `Integer` |

### `v02_UpdateQuotesReqSubscriptionData`

| Field | Stripe API Name | Type |
|---|---|---|
| `description` | `description` | `String` |
| `effectiveDate` | `effectiveDate` | `v02_UpdateQuotesReqSubDataEffectiveDate` |
| `metadata` | `metadata` | `v02_Metadata` |
| `trialPeriodDays` | `trialPeriodDays` | `Integer` |

### `v02_UpdateQuotesReqTransferData`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `amountPercent` | `amountPercent` | `Double` |
| `destination` | `destination` | `String` |

### `v02_UpdateSetupIntentsReqPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `acssDebit` | `acssDebit` | `v02_UpdateSetupIntentsReqPMOAcssDebit` |
| `amazonPay` | `amazonPay` | `List<v02_AdditionalString>` |
| `bacsDebit` | `bacsDebit` | `v02_UpdateSetupIntentsReqPMOBacsDebit` |
| `card` | `card` | `v02_UpdateSetupIntentsReqPMOCard` |
| `cardPresent` | `cardPresent` | `List<v02_AdditionalString>` |
| `link` | `link` | `v02_UpdateSetupIntentsReqPMOLink` |
| `paypal` | `paypal` | `v02_UpdateSetupIntentsReqPMOPaypal` |
| `sepaDebit` | `sepaDebit` | `v02_UpdateSetupIntentsReqPMOSepaDebit` |
| `usBankAccount` | `usBankAccount` | `v02_UpdateSisReqPMOUsBankAccount` |

### `v02_UpdateSetupIntentsReqPMOAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `mandateOptions` | `mandateOptions` | `v02_UpdateSisReqPMOAcssDebitManOpts` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_UpdateSetupIntentsReqPMOBacsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_UpdateSisReqPMOBacsDebitManOpts` |

### `v02_UpdateSetupIntentsReqPMOCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_UpdateSisReqPMOCardMandateOptions` |
| `moto` | `moto` | `Boolean` |
| `network` | `network` | `String` |
| `requestThreeDSecure` | `requestThreeDSecure` | `String` |
| `threeDSecure` | `threeDSecure` | `v02_UpdateSisReqPMOCardThreeDSecure` |

### `v02_UpdateSetupIntentsReqPMOLink`

| Field | Stripe API Name | Type |
|---|---|---|
| `persistentToken` | `persistentToken` | `String` |

### `v02_UpdateSetupIntentsReqPMOPaypal`

| Field | Stripe API Name | Type |
|---|---|---|
| `billingAgreementId` | `billingAgreementId` | `String` |

### `v02_UpdateSetupIntentsReqPMOSepaDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_UpdateSisReqPMOSepaDebitManOpts` |

### `v02_UpdateSisReqPMOAcssDebitManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `customMandateUrl` | `customMandateUrl` | `String` |
| `defaultFor` | `defaultFor` | `List<String>` |
| `intervalDescription` | `intervalDescription` | `String` |
| `paymentSchedule` | `paymentSchedule` | `String` |
| `transactionType` | `transactionType` | `String` |

### `v02_UpdateSisReqPMOBacsDebitManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `referencePrefix` | `referencePrefix` | `String` |

### `v02_UpdateSisReqPMOCardMandateOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `amountType` | `amountType` | `String` |
| `r_currency` | `r_currency` | `String` |
| `description` | `description` | `String` |
| `endDate` | `endDate` | `Integer` |
| `interval` | `interval` | `String` |
| `intervalCount` | `intervalCount` | `Integer` |
| `reference` | `reference` | `String` |
| `startDate` | `startDate` | `Integer` |
| `supportedTypes` | `supportedTypes` | `List<String>` |

### `v02_UpdateSisReqPMOCardThreeDSecure`

| Field | Stripe API Name | Type |
|---|---|---|
| `aresTransStatus` | `aresTransStatus` | `String` |
| `cryptogram` | `cryptogram` | `String` |
| `electronicCommerceIndicator` | `electronicCommerceIndicator` | `String` |
| `networkOptions` | `networkOptions` | `v02_UpdateSisReqPMOCardThreeDSecure` |
| `requestorChallengeIndicator` | `requestorChallengeIndicator` | `String` |
| `transactionId` | `transactionId` | `String` |
| `version` | `version` | `String` |

### `v02_UpdateSisReqPMOSepaDebitManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `referencePrefix` | `referencePrefix` | `String` |

### `v02_UpdateSisReqPMOUsBacctFinConnFilters`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountSubcategories` | `accountSubcategories` | `List<String>` |

### `v02_UpdateSisReqPMOUsBankAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `financialConnections` | `financialConnections` | `v02_UpdateSisReqPMOUsBankAccountFinConn` |
| `mandateOptions` | `mandateOptions` | `v02_UpdateSisReqPMOUsBankAccountManOpts` |
| `networks` | `networks` | `v02_UpdateSisReqPMOUsBankAccountNetworks` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_UpdateSisReqPMOUsBankAccountFinConn`

| Field | Stripe API Name | Type |
|---|---|---|
| `filters` | `filters` | `v02_UpdateSisReqPMOUsBacctFinConnFilters` |
| `permissions` | `permissions` | `List<String>` |
| `prefetch` | `prefetch` | `List<String>` |
| `returnUrl` | `returnUrl` | `String` |

### `v02_UpdateSisReqPMOUsBankAccountManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `collectionMethod` | `collectionMethod` | `String` |

### `v02_UpdateSisReqPMOUsBankAccountNetworks`

| Field | Stripe API Name | Type |
|---|---|---|
| `requested` | `requested` | `List<String>` |

### `v02_UpdateSisReqPaymentMethodData`

| Field | Stripe API Name | Type |
|---|---|---|
| `acssDebit` | `acssDebit` | `v02_UpdateSisReqPmDataAcssDebit` |
| `affirm` | `affirm` | `List<v02_AdditionalString>` |
| `afterpayClearpay` | `afterpayClearpay` | `List<v02_AdditionalString>` |
| `alipay` | `alipay` | `List<v02_AdditionalString>` |
| `allowRedisplay` | `allowRedisplay` | `String` |
| `alma` | `alma` | `List<v02_AdditionalString>` |
| `amazonPay` | `amazonPay` | `List<v02_AdditionalString>` |
| `auBecsDebit` | `auBecsDebit` | `v02_UpdateSisReqPmDataAuBecsDebit` |
| `bacsDebit` | `bacsDebit` | `v02_UpdateSisReqPmDataBacsDebit` |
| `bancontact` | `bancontact` | `List<v02_AdditionalString>` |
| `billie` | `billie` | `List<v02_AdditionalString>` |
| `billingDetails` | `billingDetails` | `v02_UpdateSisReqPmDataBillingDetails` |
| `blik` | `blik` | `List<v02_AdditionalString>` |
| `boleto` | `boleto` | `v02_UpdateSisReqPaymentMethodDataBoleto` |
| `cashapp` | `cashapp` | `List<v02_AdditionalString>` |
| `customerBalance` | `customerBalance` | `List<v02_AdditionalString>` |
| `eps` | `eps` | `v02_UpdateSisReqPaymentMethodDataEps` |
| `fpx` | `fpx` | `v02_UpdateSisReqPaymentMethodDataFpx` |
| `giropay` | `giropay` | `List<v02_AdditionalString>` |
| `grabpay` | `grabpay` | `List<v02_AdditionalString>` |
| `ideal` | `ideal` | `v02_UpdateSisReqPaymentMethodDataIdeal` |
| `interacPresent` | `interacPresent` | `List<v02_AdditionalString>` |
| `kakaoPay` | `kakaoPay` | `List<v02_AdditionalString>` |
| `klarna` | `klarna` | `v02_UpdateSisReqPaymentMethodDataKlarna` |
| `konbini` | `konbini` | `List<v02_AdditionalString>` |
| `krCard` | `krCard` | `List<v02_AdditionalString>` |
| `link` | `link` | `List<v02_AdditionalString>` |
| `metadata` | `metadata` | `v02_Metadata` |
| `mobilepay` | `mobilepay` | `List<v02_AdditionalString>` |
| `multibanco` | `multibanco` | `List<v02_AdditionalString>` |
| `naverPay` | `naverPay` | `v02_UpdateSisReqPmDataNaverPay` |
| `nzBankAccount` | `nzBankAccount` | `v02_UpdateSisReqPaymentMethodDataNzBacct` |
| `oxxo` | `oxxo` | `List<v02_AdditionalString>` |
| `p24` | `p24` | `v02_UpdateSisReqPaymentMethodDataP24` |
| `payByBank` | `payByBank` | `List<v02_AdditionalString>` |
| `payco` | `payco` | `List<v02_AdditionalString>` |
| `paynow` | `paynow` | `List<v02_AdditionalString>` |
| `paypal` | `paypal` | `List<v02_AdditionalString>` |
| `pix` | `pix` | `List<v02_AdditionalString>` |
| `promptpay` | `promptpay` | `List<v02_AdditionalString>` |
| `radarOptions` | `radarOptions` | `v02_UpdateSisReqPmDataRadarOptions` |
| `revolutPay` | `revolutPay` | `List<v02_AdditionalString>` |
| `samsungPay` | `samsungPay` | `List<v02_AdditionalString>` |
| `satispay` | `satispay` | `List<v02_AdditionalString>` |
| `sepaDebit` | `sepaDebit` | `v02_UpdateSisReqPmDataSepaDebit` |
| `sofort` | `sofort` | `v02_UpdateSisReqPaymentMethodDataSofort` |
| `swish` | `swish` | `List<v02_AdditionalString>` |
| `twint` | `twint` | `List<v02_AdditionalString>` |
| `type` | `type` | `String` |
| `usBankAccount` | `usBankAccount` | `v02_UpdateSisReqPaymentMethodDataUsBacct` |
| `wechatPay` | `wechatPay` | `List<v02_AdditionalString>` |
| `zip` | `zip` | `List<v02_AdditionalString>` |

### `v02_UpdateSisReqPaymentMethodDataBoleto`

| Field | Stripe API Name | Type |
|---|---|---|
| `taxId` | `taxId` | `String` |

### `v02_UpdateSisReqPaymentMethodDataEps`

| Field | Stripe API Name | Type |
|---|---|---|
| `bank` | `bank` | `String` |

### `v02_UpdateSisReqPaymentMethodDataFpx`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderType` | `accountHolderType` | `String` |
| `bank` | `bank` | `String` |

### `v02_UpdateSisReqPaymentMethodDataIdeal`

| Field | Stripe API Name | Type |
|---|---|---|
| `bank` | `bank` | `String` |

### `v02_UpdateSisReqPaymentMethodDataKlarna`

| Field | Stripe API Name | Type |
|---|---|---|
| `dob` | `dob` | `v02_UpdateSisReqPmDataKlarnaDob` |

### `v02_UpdateSisReqPaymentMethodDataNzBacct`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderName` | `accountHolderName` | `String` |
| `accountNumber` | `accountNumber` | `String` |
| `bankCode` | `bankCode` | `String` |
| `branchCode` | `branchCode` | `String` |
| `reference` | `reference` | `String` |
| `suffix` | `suffix` | `String` |

### `v02_UpdateSisReqPaymentMethodDataP24`

| Field | Stripe API Name | Type |
|---|---|---|
| `bank` | `bank` | `String` |

### `v02_UpdateSisReqPaymentMethodDataSofort`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |

### `v02_UpdateSisReqPaymentMethodDataUsBacct`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderType` | `accountHolderType` | `String` |
| `accountNumber` | `accountNumber` | `String` |
| `accountType` | `accountType` | `String` |
| `financialConnectionsAccount` | `financialConnectionsAccount` | `String` |
| `routingNumber` | `routingNumber` | `String` |

### `v02_UpdateSisReqPmDataAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountNumber` | `accountNumber` | `String` |
| `institutionNumber` | `institutionNumber` | `String` |
| `transitNumber` | `transitNumber` | `String` |

### `v02_UpdateSisReqPmDataAuBecsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountNumber` | `accountNumber` | `String` |
| `bsbNumber` | `bsbNumber` | `String` |

### `v02_UpdateSisReqPmDataBacsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountNumber` | `accountNumber` | `String` |
| `sortCode` | `sortCode` | `String` |

### `v02_UpdateSisReqPmDataBdAddress`

| Field | Stripe API Name | Type |
|---|---|---|
| `city` | `city` | `String` |
| `country` | `country` | `String` |
| `line1` | `line1` | `String` |
| `line2` | `line2` | `String` |
| `postalCode` | `postalCode` | `String` |
| `state` | `state` | `String` |

### `v02_UpdateSisReqPmDataBillingDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_UpdateSisReqPmDataBdAddress` |
| `email` | `email` | `String` |
| `name` | `name` | `String` |
| `phone` | `phone` | `String` |
| `taxId` | `taxId` | `String` |

### `v02_UpdateSisReqPmDataKlarnaDob`

| Field | Stripe API Name | Type |
|---|---|---|
| `day` | `day` | `Integer` |
| `month` | `month` | `Integer` |
| `year` | `year` | `Integer` |

### `v02_UpdateSisReqPmDataNaverPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `funding` | `funding` | `String` |

### `v02_UpdateSisReqPmDataRadarOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `session` | `session` | `String` |

### `v02_UpdateSisReqPmDataSepaDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `iban` | `iban` | `String` |

### `v02_UpdateSubItemsReqPdataRecurring`

| Field | Stripe API Name | Type |
|---|---|---|
| `interval` | `interval` | `String` |
| `intervalCount` | `intervalCount` | `Integer` |

### `v02_UpdateSubSchedulesReqDefaultSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `applicationFeePercent` | `applicationFeePercent` | `Double` |
| `automaticTax` | `automaticTax` | `v02_UpdateSubSchsReqDefSetsAutomaticTax` |
| `billingCycleAnchor` | `billingCycleAnchor` | `String` |
| `collectionMethod` | `collectionMethod` | `String` |
| `defaultPaymentMethod` | `defaultPaymentMethod` | `String` |
| `description` | `description` | `String` |
| `invoiceSettings` | `invoiceSettings` | `v02_UpdateSubSchsReqDefSetsInvSets` |
| `onBehalfOf` | `onBehalfOf` | `String` |
| `transferData` | `transferData` | `v02_UpdateSubSchsReqDefSettingsXferData` |

### `v02_UpdateSubSchedulesReqPhaseDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_UpdateSubSchedulesReqPhaseEndDate`

| Field | Stripe API Name | Type |
|---|---|---|
| `integerField` | `integerField` | `Integer` |
| `stringField` | `stringField` | `String` |

### `v02_UpdateSubSchedulesReqPhaseStartDate`

| Field | Stripe API Name | Type |
|---|---|---|
| `integerField` | `integerField` | `Integer` |
| `stringField` | `stringField` | `String` |

### `v02_UpdateSubSchedulesReqPhaseTrialEnd`

| Field | Stripe API Name | Type |
|---|---|---|
| `integerField` | `integerField` | `Integer` |
| `stringField` | `stringField` | `String` |

### `v02_UpdateSubSchedulesReqPhaseXferData`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountPercent` | `amountPercent` | `Double` |
| `destination` | `destination` | `String` |

### `v02_UpdateSubSchedulesReqPitemDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_UpdateSubSchedulesReqPitemPdata`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `product` | `product` | `String` |
| `recurring` | `recurring` | `v02_UpdateSubSchsReqPitemPdataRecurring` |
| `taxBehavior` | `taxBehavior` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_UpdateSubSchsReqDefSetsAutomatic`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_UpdateSubSchsReqDefSetsAutomaticTax`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `liability` | `liability` | `v02_UpdateSubSchsReqDefSetsAutomatic` |

### `v02_UpdateSubSchsReqDefSetsInvSets`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountTaxIds` | `accountTaxIds` | `List<String>` |
| `daysUntilDue` | `daysUntilDue` | `Integer` |
| `issuer` | `issuer` | `v02_UpdateSubSchsReqDefSetsInvSetsIssuer` |

### `v02_UpdateSubSchsReqDefSetsInvSetsIssuer`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_UpdateSubSchsReqDefSettingsXferData`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountPercent` | `amountPercent` | `Double` |
| `destination` | `destination` | `String` |

### `v02_UpdateSubSchsReqPhaseAddInvIte`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_UpdateSubSchsReqPhaseAddInvItemPdata`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `product` | `product` | `String` |
| `taxBehavior` | `taxBehavior` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_UpdateSubSchsReqPhaseAddInvoiceItem`

| Field | Stripe API Name | Type |
|---|---|---|
| `discounts` | `discounts` | `List<v02_UpdateSubSchsReqPhaseAddInvIte>` |
| `price` | `price` | `String` |
| `priceData` | `priceData` | `v02_UpdateSubSchsReqPhaseAddInvItemPdata` |
| `quantity` | `quantity` | `Integer` |
| `taxRates` | `taxRates` | `List<String>` |

### `v02_UpdateSubSchsReqPhaseAutomaticT`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_UpdateSubSchsReqPhaseAutomaticTax`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `liability` | `liability` | `v02_UpdateSubSchsReqPhaseAutomaticT` |

### `v02_UpdateSubSchsReqPhaseInvSetsIssuer`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_UpdateSubSchsReqPhaseInvoiceSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountTaxIds` | `accountTaxIds` | `List<String>` |
| `daysUntilDue` | `daysUntilDue` | `Integer` |
| `issuer` | `issuer` | `v02_UpdateSubSchsReqPhaseInvSetsIssuer` |

### `v02_UpdateSubSchsReqPitemPdataRecurring`

| Field | Stripe API Name | Type |
|---|---|---|
| `interval` | `interval` | `String` |
| `intervalCount` | `intervalCount` | `Integer` |

### `v02_UpdateSubsReqAddInvoiceItemDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_UpdateSubsReqAddInvoiceItemPdata`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `product` | `product` | `String` |
| `taxBehavior` | `taxBehavior` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_UpdateSubsReqAutomaticTaxLiability`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_UpdateSubsReqCancellationDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `comment` | `comment` | `String` |
| `feedback` | `feedback` | `String` |

### `v02_UpdateSubsReqInvoiceSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountTaxIds` | `accountTaxIds` | `List<String>` |
| `issuer` | `issuer` | `v02_UpdateSubsReqInvoiceSettingsIssuer` |

### `v02_UpdateSubsReqInvoiceSettingsIssuer`

| Field | Stripe API Name | Type |
|---|---|---|
| `account` | `account` | `String` |
| `type` | `type` | `String` |

### `v02_UpdateSubsReqItemPdataRecurring`

| Field | Stripe API Name | Type |
|---|---|---|
| `interval` | `interval` | `String` |
| `intervalCount` | `intervalCount` | `Integer` |

### `v02_UpdateSubsReqPaymentSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `paymentMethodOptions` | `paymentMethodOptions` | `v02_UpdateSubsReqPaymentSettingsPMO` |
| `paymentMethodTypes` | `paymentMethodTypes` | `List<String>` |
| `saveDefaultPaymentMethod` | `saveDefaultPaymentMethod` | `String` |

### `v02_UpdateSubsReqPaymentSettingsPMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `acssDebit` | `acssDebit` | `v02_UpdateSubsReqPsetsPMOAcssDebit` |
| `bancontact` | `bancontact` | `v02_UpdateSubsReqPsetsPMOBancontact` |
| `card` | `card` | `v02_UpdateSubsReqPaymentSettingsPMOCard` |
| `customerBalance` | `customerBalance` | `v02_UpdateSubsReqPsetsPMOCustbal` |
| `konbini` | `konbini` | `List<v02_AdditionalString>` |
| `sepaDebit` | `sepaDebit` | `List<v02_AdditionalString>` |
| `usBankAccount` | `usBankAccount` | `v02_UpdateSubsReqPsetsPMOUsBankAccount` |

### `v02_UpdateSubsReqPaymentSettingsPMOCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_UpdateSubsReqPsetsPMOCardManOpts` |
| `network` | `network` | `String` |
| `requestThreeDSecure` | `requestThreeDSecure` | `String` |

### `v02_UpdateSubsReqPsetsPMOAcssDbtManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `transactionType` | `transactionType` | `String` |

### `v02_UpdateSubsReqPsetsPMOAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_UpdateSubsReqPsetsPMOAcssDbtManOpts` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_UpdateSubsReqPsetsPMOBancontact`

| Field | Stripe API Name | Type |
|---|---|---|
| `preferredLanguage` | `preferredLanguage` | `String` |

### `v02_UpdateSubsReqPsetsPMOCardManOpts`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `amountType` | `amountType` | `String` |
| `description` | `description` | `String` |

### `v02_UpdateSubsReqPsetsPMOCustbal`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankTransfer` | `bankTransfer` | `v02_UpdateSubsReqPsetsPMOCustbalBankXfer` |
| `fundingType` | `fundingType` | `String` |

### `v02_UpdateSubsReqPsetsPMOCustbalBankXfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `euBankTransfer` | `euBankTransfer` | `v02_UpdateSubsReqPsetsPMOCustbalEuXfer` |
| `type` | `type` | `String` |

### `v02_UpdateSubsReqPsetsPMOCustbalEuXfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |

### `v02_UpdateSubsReqPsetsPMOUsBacctFin`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountSubcategories` | `accountSubcategories` | `List<String>` |

### `v02_UpdateSubsReqPsetsPMOUsBacctFinConn`

| Field | Stripe API Name | Type |
|---|---|---|
| `filters` | `filters` | `v02_UpdateSubsReqPsetsPMOUsBacctFin` |
| `permissions` | `permissions` | `List<String>` |
| `prefetch` | `prefetch` | `List<String>` |

### `v02_UpdateSubsReqPsetsPMOUsBankAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `financialConnections` | `financialConnections` | `v02_UpdateSubsReqPsetsPMOUsBacctFinConn` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_UpdateSubsReqTrialSetsEndBehavior`

| Field | Stripe API Name | Type |
|---|---|---|
| `missingPaymentMethod` | `missingPaymentMethod` | `String` |

### `v02_UpdateSubscriptionItemsReqDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_UpdateSubscriptionItemsReqPriceData`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `product` | `product` | `String` |
| `recurring` | `recurring` | `v02_UpdateSubItemsReqPdataRecurring` |
| `taxBehavior` | `taxBehavior` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_UpdateSubscriptionSchedulesReqPhase`

| Field | Stripe API Name | Type |
|---|---|---|
| `addInvoiceItems` | `addInvoiceItems` | `List<v02_UpdateSubSchsReqPhaseAddInvoiceItem>` |
| `applicationFeePercent` | `applicationFeePercent` | `Double` |
| `automaticTax` | `automaticTax` | `v02_UpdateSubSchsReqPhaseAutomaticTax` |
| `billingCycleAnchor` | `billingCycleAnchor` | `String` |
| `collectionMethod` | `collectionMethod` | `String` |
| `r_currency` | `r_currency` | `String` |
| `defaultPaymentMethod` | `defaultPaymentMethod` | `String` |
| `defaultTaxRates` | `defaultTaxRates` | `List<String>` |
| `description` | `description` | `String` |
| `discounts` | `discounts` | `List<v02_UpdateSubSchedulesReqPhaseDiscount>` |
| `endDate` | `endDate` | `v02_UpdateSubSchedulesReqPhaseEndDate` |
| `invoiceSettings` | `invoiceSettings` | `v02_UpdateSubSchsReqPhaseInvoiceSettings` |
| `items` | `items` | `List<v02_UpdateSubscriptionSchedulesReqPitem>` |
| `iterations` | `iterations` | `Integer` |
| `metadata` | `metadata` | `v02_Metadata` |
| `onBehalfOf` | `onBehalfOf` | `String` |
| `prorationBehavior` | `prorationBehavior` | `String` |
| `startDate` | `startDate` | `v02_UpdateSubSchedulesReqPhaseStartDate` |
| `transferData` | `transferData` | `v02_UpdateSubSchedulesReqPhaseXferData` |
| `trial` | `trial` | `Boolean` |
| `trialEnd` | `trialEnd` | `v02_UpdateSubSchedulesReqPhaseTrialEnd` |

### `v02_UpdateSubscriptionSchedulesReqPitem`

| Field | Stripe API Name | Type |
|---|---|---|
| `discounts` | `discounts` | `List<v02_UpdateSubSchedulesReqPitemDiscount>` |
| `metadata` | `metadata` | `v02_Metadata` |
| `plan` | `plan` | `String` |
| `price` | `price` | `String` |
| `priceData` | `priceData` | `v02_UpdateSubSchedulesReqPitemPdata` |
| `quantity` | `quantity` | `Integer` |
| `taxRates` | `taxRates` | `List<String>` |

### `v02_UpdateSubscriptionsReqAddInvoiceItem`

| Field | Stripe API Name | Type |
|---|---|---|
| `discounts` | `discounts` | `List<v02_UpdateSubsReqAddInvoiceItemDiscount>` |
| `price` | `price` | `String` |
| `priceData` | `priceData` | `v02_UpdateSubsReqAddInvoiceItemPdata` |
| `quantity` | `quantity` | `Integer` |
| `taxRates` | `taxRates` | `List<String>` |

### `v02_UpdateSubscriptionsReqAutomaticTax`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `liability` | `liability` | `v02_UpdateSubsReqAutomaticTaxLiability` |

### `v02_UpdateSubscriptionsReqDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_UpdateSubscriptionsReqItem`

| Field | Stripe API Name | Type |
|---|---|---|
| `clearUsage` | `clearUsage` | `Boolean` |
| `deleted` | `deleted` | `Boolean` |
| `discounts` | `discounts` | `List<v02_UpdateSubscriptionsReqItemDiscount>` |
| `id` | `id` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `plan` | `plan` | `String` |
| `price` | `price` | `String` |
| `priceData` | `priceData` | `v02_UpdateSubscriptionsReqItemPriceData` |
| `quantity` | `quantity` | `Integer` |
| `taxRates` | `taxRates` | `List<String>` |

### `v02_UpdateSubscriptionsReqItemDiscount`

| Field | Stripe API Name | Type |
|---|---|---|
| `coupon` | `coupon` | `String` |
| `discount` | `discount` | `String` |
| `promotionCode` | `promotionCode` | `String` |

### `v02_UpdateSubscriptionsReqItemPriceData`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `product` | `product` | `String` |
| `recurring` | `recurring` | `v02_UpdateSubsReqItemPdataRecurring` |
| `taxBehavior` | `taxBehavior` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |

### `v02_UpdateSubscriptionsReqTransferData`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountPercent` | `amountPercent` | `Double` |
| `destination` | `destination` | `String` |

### `v02_UpdateSubscriptionsReqTrialEnd`

| Field | Stripe API Name | Type |
|---|---|---|
| `stringField` | `stringField` | `String` |
| `integerField` | `integerField` | `Integer` |

### `v02_UpdateSubscriptionsReqTrialSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `endBehavior` | `endBehavior` | `v02_UpdateSubsReqTrialSetsEndBehavior` |

### `v02_UsBankAccountNetworks`

| Field | Stripe API Name | Type |
|---|---|---|
| `preferred` | `preferred` | `String` |
| `supported` | `supported` | `List<String>` |

## Payment Intent

### `v02_PaymentIntent`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `amountCapturable` | `amount_capturable` | `Integer` |
| `amountDetails` | `amount_details` | `v02_PaymentFlowsAmountDetails` |
| `amountReceived` | `amount_received` | `Integer` |
| `application` | `application` | `String` |
| `applicationFeeAmount` | `application_fee_amount` | `Integer` |
| `automaticPaymentMethods` | `automatic_payment_methods` | `v02_PaymentFlowsAutomaticPmsPi` |
| `canceledAt` | `canceled_at` | `Integer` |
| `cancellationReason` | `cancellation_reason` | `String` |
| `captureMethod` | `capture_method` | `String` |
| `clientSecret` | `client_secret` | `String` |
| `confirmationMethod` | `confirmation_method` | `String` |
| `created` | `created` | `Integer` |
| `r_currency` | `currency` | `String` |
| `customer` | `customer` | `String` |
| `description` | `description` | `String` |
| `id` | `id` | `String` |
| `lastPaymentError` | `last_payment_error` | `v02_ApiErrors` |
| `latestCharge` | `latest_charge` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `metadata` | `metadata` | `v02_Metadata` |
| `nextAction` | `next_action` | `v02_PaymentIntentNextAction` |
| `r_object` | `object` | `String` |
| `onBehalfOf` | `on_behalf_of` | `String` |
| `paymentMethod` | `payment_method` | `String` |
| `paymentMethodConfigurationDetails` | `payment_method_configuration_details` | `v02_PmConfigBizPmConfigurationDetails` |
| `paymentMethodOptions` | `payment_method_options` | `v02_PaymentIntentPaymentMethodOptions` |
| `paymentMethodTypes` | `payment_method_types` | `List<String>` |
| `presentmentDetails` | `presentment_details` | `v02_PaymentFlowsPiPresentmentDetails` |
| `processing` | `processing` | `v02_PaymentIntentProcessing` |
| `receiptEmail` | `receipt_email` | `String` |
| `review` | `review` | `String` |
| `setupFutureUsage` | `setup_future_usage` | `String` |
| `shipping` | `shipping` | `v02_Shipping` |
| `source` | `source` | `String` |
| `statementDescriptor` | `statement_descriptor` | `String` |
| `statementDescriptorSuffix` | `statement_descriptor_suffix` | `String` |
| `status` | `status` | `String` |
| `transferData` | `transfer_data` | `v02_TransferData` |
| `transferGroup` | `transfer_group` | `String` |

### `v02_PaymentIntentCardProcessing`

| Field | Stripe API Name | Type |
|---|---|---|
| `customerNotification` | `customerNotification` | `v02_PiProcingCustomerNotification` |

### `v02_PaymentIntentNextAction`

| Field | Stripe API Name | Type |
|---|---|---|
| `alipayHandleRedirect` | `alipayHandleRedirect` | `v02_PiNxtactAlipayHandleRedirect` |
| `boletoDisplayDetails` | `boletoDisplayDetails` | `v02_PaymentIntentNextActionBoleto` |
| `cardAwaitNotification` | `cardAwaitNotification` | `v02_PiNxtactCardAwaitNotification` |
| `cashappHandleRedirectOrDisplayQrCode` | `cashappHandleRedirectOrDisplayQrCode` | `v02_PiNxtactCashappHandleRedirOrDspl` |
| `displayBankTransferInstructions` | `displayBankTransferInstructions` | `v02_PiNxtactDisplayBankXferInstructions` |
| `konbiniDisplayDetails` | `konbiniDisplayDetails` | `v02_PaymentIntentNextActionKonbini` |
| `multibancoDisplayDetails` | `multibancoDisplayDetails` | `v02_PiNxtactDisplayMultibancoDetails` |
| `oxxoDisplayDetails` | `oxxoDisplayDetails` | `v02_PiNxtactDisplayOxxoDetails` |
| `paynowDisplayQrCode` | `paynowDisplayQrCode` | `v02_PiNxtactPaynowDisplayQrCode` |
| `pixDisplayQrCode` | `pixDisplayQrCode` | `v02_PaymentIntentNxtactPixDisplayQrCode` |
| `promptpayDisplayQrCode` | `promptpayDisplayQrCode` | `v02_PiNxtactPromptpayDisplayQrCode` |
| `redirectToUrl` | `redirectToUrl` | `v02_PaymentIntentNextActionRedirectToUrl` |
| `swishHandleRedirectOrDisplayQrCode` | `swishHandleRedirectOrDisplayQrCode` | `v02_PiNxtactSwishHandleRedirOrDsplQrCode` |
| `type` | `type` | `String` |
| `useStripeSdk` | `useStripeSdk` | `List<v02_AdditionalString>` |
| `verifyWithMicrodeposits` | `verifyWithMicrodeposits` | `v02_PiNxtactVerifyWithMicrodep` |
| `wechatPayDisplayQrCode` | `wechatPayDisplayQrCode` | `v02_PiNxtactWechatPayDisplayQrCode` |
| `wechatPayRedirectToAndroidApp` | `wechatPayRedirectToAndroidApp` | `v02_PiNxtactWechatPayRedirToAndroidApp` |
| `wechatPayRedirectToIosApp` | `wechatPayRedirectToIosApp` | `v02_PiNxtactWechatPayRedirectToIosApp` |

### `v02_PaymentIntentNextActionBoleto`

| Field | Stripe API Name | Type |
|---|---|---|
| `expiresAt` | `expiresAt` | `Integer` |
| `hostedVoucherUrl` | `hostedVoucherUrl` | `String` |
| `r_number` | `r_number` | `String` |
| `pdf` | `pdf` | `String` |

### `v02_PaymentIntentNextActionCashappQrCode`

| Field | Stripe API Name | Type |
|---|---|---|
| `expiresAt` | `expiresAt` | `Integer` |
| `imageUrlPng` | `imageUrlPng` | `String` |
| `imageUrlSvg` | `imageUrlSvg` | `String` |

### `v02_PaymentIntentNextActionKonbini`

| Field | Stripe API Name | Type |
|---|---|---|
| `expiresAt` | `expiresAt` | `Integer` |
| `hostedVoucherUrl` | `hostedVoucherUrl` | `String` |
| `stores` | `stores` | `v02_PaymentIntentNextActionKonbiniStores` |

### `v02_PaymentIntentNextActionKonbiniLawson`

| Field | Stripe API Name | Type |
|---|---|---|
| `confirmationNumber` | `confirmationNumber` | `String` |
| `paymentCode` | `paymentCode` | `String` |

### `v02_PaymentIntentNextActionKonbiniStores`

| Field | Stripe API Name | Type |
|---|---|---|
| `familymart` | `familymart` | `v02_PaymentIntentNxtactKonbiniFamilymart` |
| `lawson` | `lawson` | `v02_PaymentIntentNextActionKonbiniLawson` |
| `ministop` | `ministop` | `v02_PaymentIntentNxtactKonbiniMinistop` |
| `seicomart` | `seicomart` | `v02_PaymentIntentNxtactKonbiniSeicomart` |

### `v02_PaymentIntentNextActionRedirectToUrl`

| Field | Stripe API Name | Type |
|---|---|---|
| `returnUrl` | `returnUrl` | `String` |
| `url` | `url` | `String` |

### `v02_PaymentIntentNextActionSwishQrCode`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `String` |
| `imageUrlPng` | `imageUrlPng` | `String` |
| `imageUrlSvg` | `imageUrlSvg` | `String` |

### `v02_PaymentIntentNxtactKonbiniFamilymart`

| Field | Stripe API Name | Type |
|---|---|---|
| `confirmationNumber` | `confirmationNumber` | `String` |
| `paymentCode` | `paymentCode` | `String` |

### `v02_PaymentIntentNxtactKonbiniMinistop`

| Field | Stripe API Name | Type |
|---|---|---|
| `confirmationNumber` | `confirmationNumber` | `String` |
| `paymentCode` | `paymentCode` | `String` |

### `v02_PaymentIntentNxtactKonbiniSeicomart`

| Field | Stripe API Name | Type |
|---|---|---|
| `confirmationNumber` | `confirmationNumber` | `String` |
| `paymentCode` | `paymentCode` | `String` |

### `v02_PaymentIntentNxtactPixDisplayQrCode`

| Field | Stripe API Name | Type |
|---|---|---|
| `data` | `data` | `String` |
| `expiresAt` | `expiresAt` | `Integer` |
| `hostedInstructionsUrl` | `hostedInstructionsUrl` | `String` |
| `imageUrlPng` | `imageUrlPng` | `String` |
| `imageUrlSvg` | `imageUrlSvg` | `String` |

### `v02_PaymentIntentPMOAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_PiPMOMandateOptionsAcssDebit` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_PaymentIntentPMOAuBecsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |

### `v02_PaymentIntentPMOBacsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_PiPMOMandateOptionsBacsDebit` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |

### `v02_PaymentIntentPMOBlik`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentIntentPMOCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `installments` | `installments` | `v02_PaymentMethodOptionsCardInstallments` |
| `mandateOptions` | `mandateOptions` | `v02_PMOCardMandateOptions` |
| `network` | `network` | `String` |
| `requestExtendedAuthorization` | `requestExtendedAuthorization` | `String` |
| `requestIncrementalAuthorization` | `requestIncrementalAuthorization` | `String` |
| `requestMulticapture` | `requestMulticapture` | `String` |
| `requestOvercapture` | `requestOvercapture` | `String` |
| `requestThreeDSecure` | `requestThreeDSecure` | `String` |
| `requireCvcRecollection` | `requireCvcRecollection` | `Boolean` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `statementDescriptorSuffixKana` | `statementDescriptorSuffixKana` | `String` |
| `statementDescriptorSuffixKanji` | `statementDescriptorSuffixKanji` | `String` |

### `v02_PaymentIntentPMOLink`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `persistentToken` | `persistentToken` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentIntentPMOMobilepay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentIntentPMONzBankAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |

### `v02_PaymentIntentPMOSepaDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_PiPMOMandateOptionsSepaDebit` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |

### `v02_PaymentIntentPMOSwish`

| Field | Stripe API Name | Type |
|---|---|---|
| `reference` | `reference` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentIntentPMOUsBankAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `financialConnections` | `financialConnections` | `v02_LinkedAccountOptionsCommon` |
| `mandateOptions` | `mandateOptions` | `v02_PMOUsBankAccountMandateOptions` |
| `preferredSettlementSpeed` | `preferredSettlementSpeed` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `targetDate` | `targetDate` | `String` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_PaymentIntentPaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `acssDebit` | `acssDebit` | `v02_PaymentIntentPMOAcssDebit` |
| `affirm` | `affirm` | `v02_PaymentMethodOptionsAffirm` |
| `afterpayClearpay` | `afterpayClearpay` | `v02_PaymentMethodOptionsAfterpayClearpay` |
| `alipay` | `alipay` | `v02_PaymentMethodOptionsAlipay` |
| `alma` | `alma` | `v02_PaymentMethodOptionsAlma` |
| `amazonPay` | `amazonPay` | `v02_PaymentMethodOptionsAmazonPay` |
| `auBecsDebit` | `auBecsDebit` | `v02_PaymentIntentPMOAuBecsDebit` |
| `bacsDebit` | `bacsDebit` | `v02_PaymentIntentPMOBacsDebit` |
| `bancontact` | `bancontact` | `v02_PaymentMethodOptionsBancontact` |
| `billie` | `billie` | `List<v02_AdditionalString>` |
| `blik` | `blik` | `v02_PaymentIntentPMOBlik` |
| `boleto` | `boleto` | `v02_PaymentMethodOptionsBoleto` |
| `card` | `card` | `v02_PaymentIntentPMOCard` |
| `cardPresent` | `cardPresent` | `v02_PaymentMethodOptionsCardPresent` |
| `cashapp` | `cashapp` | `v02_PaymentMethodOptionsCashapp` |
| `customerBalance` | `customerBalance` | `v02_PaymentMethodOptionsCustomerBalance` |
| `eps` | `eps` | `v02_PaymentIntentPaymentMethodOptionsEps` |
| `fpx` | `fpx` | `v02_PaymentMethodOptionsFpx` |
| `giropay` | `giropay` | `v02_PaymentMethodOptionsGiropay` |
| `grabpay` | `grabpay` | `v02_PaymentMethodOptionsGrabpay` |
| `ideal` | `ideal` | `v02_PaymentMethodOptionsIdeal` |
| `interacPresent` | `interacPresent` | `List<v02_AdditionalString>` |
| `kakaoPay` | `kakaoPay` | `v02_PaymentFlowsPrivatePmsKakaoPayPMO` |
| `klarna` | `klarna` | `v02_PaymentMethodOptionsKlarna` |
| `konbini` | `konbini` | `v02_PaymentMethodOptionsKonbini` |
| `krCard` | `krCard` | `v02_PaymentMethodOptionsKrCard` |
| `link` | `link` | `v02_PaymentIntentPMOLink` |
| `mobilepay` | `mobilepay` | `v02_PaymentIntentPMOMobilepay` |
| `multibanco` | `multibanco` | `v02_PaymentMethodOptionsMultibanco` |
| `naverPay` | `naverPay` | `v02_PaymentFlowsPrivatePmsNaverPayPMO` |
| `nzBankAccount` | `nzBankAccount` | `v02_PaymentIntentPMONzBankAccount` |
| `oxxo` | `oxxo` | `v02_PaymentMethodOptionsOxxo` |
| `p24` | `p24` | `v02_PaymentMethodOptionsP24` |
| `payByBank` | `payByBank` | `List<v02_AdditionalString>` |
| `payco` | `payco` | `v02_PaymentFlowsPrivatePmsPaycoPMO` |
| `paynow` | `paynow` | `v02_PaymentMethodOptionsPaynow` |
| `paypal` | `paypal` | `v02_PaymentMethodOptionsPaypal` |
| `pix` | `pix` | `v02_PaymentMethodOptionsPix` |
| `promptpay` | `promptpay` | `v02_PaymentMethodOptionsPromptpay` |
| `revolutPay` | `revolutPay` | `v02_PaymentMethodOptionsRevolutPay` |
| `samsungPay` | `samsungPay` | `v02_PaymentFlowsPrivatePmsSamsungPayPMO` |
| `sepaDebit` | `sepaDebit` | `v02_PaymentIntentPMOSepaDebit` |
| `sofort` | `sofort` | `v02_PaymentMethodOptionsSofort` |
| `swish` | `swish` | `v02_PaymentIntentPMOSwish` |
| `twint` | `twint` | `v02_PaymentMethodOptionsTwint` |
| `usBankAccount` | `usBankAccount` | `v02_PaymentIntentPMOUsBankAccount` |
| `wechatPay` | `wechatPay` | `v02_PaymentMethodOptionsWechatPay` |
| `zip` | `zip` | `v02_PaymentMethodOptionsZip` |

### `v02_PaymentIntentPaymentMethodOptionsEps`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentIntentProcessing`

| Field | Stripe API Name | Type |
|---|---|---|
| `card` | `card` | `v02_PaymentIntentCardProcessing` |
| `type` | `type` | `String` |

## Payment Link

### `v02_PaymentLink`

| Field | Stripe API Name | Type |
|---|---|---|
| `active` | `active` | `Boolean` |
| `afterCompletion` | `after_completion` | `v02_PaymentLinksResourceAfterCompletion` |
| `allowPromotionCodes` | `allow_promotion_codes` | `Boolean` |
| `application` | `application` | `String` |
| `applicationFeeAmount` | `application_fee_amount` | `Integer` |
| `applicationFeePercent` | `application_fee_percent` | `Double` |
| `automaticTax` | `automatic_tax` | `v02_PaymentLinksResourceAutomaticTax` |
| `billingAddressCollection` | `billing_address_collection` | `String` |
| `consentCollection` | `consent_collection` | `v02_PaymentLinksResourceConsentCol` |
| `r_currency` | `currency` | `String` |
| `customFields` | `custom_fields` | `List<v02_PaymentLinksResourceCustomFields>` |
| `customText` | `custom_text` | `v02_PaymentLinksResourceCustomText` |
| `customerCreation` | `customer_creation` | `String` |
| `id` | `id` | `String` |
| `inactiveMessage` | `inactive_message` | `String` |
| `invoiceCreation` | `invoice_creation` | `v02_PaymentLinksResourceInvoiceCreation` |
| `lineItems` | `line_items` | `v02_PaymentLinksResourceListLineItems` |
| `livemode` | `livemode` | `Boolean` |
| `metadata` | `metadata` | `v02_Metadata` |
| `r_object` | `object` | `String` |
| `onBehalfOf` | `on_behalf_of` | `String` |
| `optionalItems` | `optional_items` | `List<v02_PaymentLinksResourceOptionalItem>` |
| `paymentIntentData` | `payment_intent_data` | `v02_PaymentLinksResourcePiData` |
| `paymentMethodCollection` | `payment_method_collection` | `String` |
| `paymentMethodTypes` | `payment_method_types` | `List<String>` |
| `phoneNumberCollection` | `phone_number_collection` | `v02_PaymentLinksResourcePhoneNumberCol` |
| `restrictions` | `restrictions` | `v02_PaymentLinksResourceRestrictions` |
| `shippingAddressCollection` | `shipping_address_collection` | `v02_PlinksResourceShippingAddressCol` |
| `shippingOptions` | `shipping_options` | `List<v02_PaymentLinksResourceShippingOption>` |
| `submitType` | `submit_type` | `String` |
| `subscriptionData` | `subscription_data` | `v02_PaymentLinksResourceSubscriptionData` |
| `taxIdCollection` | `tax_id_collection` | `v02_PaymentLinksResourceTaxIdCollection` |
| `transferData` | `transfer_data` | `v02_PaymentLinksResourceTransferData` |
| `url` | `url` | `String` |

### `v02_PaymentLinksResourceAfterCompletion`

| Field | Stripe API Name | Type |
|---|---|---|
| `hostedConfirmation` | `hostedConfirmation` | `v02_PlinksResourceCompletionBConfPage` |
| `redirect` | `redirect` | `v02_PlinksCompletionBehaviorRedirect` |
| `type` | `type` | `String` |

### `v02_PaymentLinksResourceAutomaticTax`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `liability` | `liability` | `v02_ConnectAccountReference` |

### `v02_PaymentLinksResourceConsentCol`

| Field | Stripe API Name | Type |
|---|---|---|
| `paymentMethodReuseAgreement` | `paymentMethodReuseAgreement` | `v02_PlinksResourcePmReuseAgreement` |
| `promotions` | `promotions` | `String` |
| `termsOfService` | `termsOfService` | `String` |

### `v02_PaymentLinksResourceCustomFields`

| Field | Stripe API Name | Type |
|---|---|---|
| `dropdown` | `dropdown` | `v02_PlinksResourceCustomFieldsDropdown` |
| `key` | `key` | `String` |
| `label` | `label` | `v02_PlinksResourceCustomFieldsLabel` |
| `numeric` | `numeric` | `v02_PlinksResourceCustomFieldsNumeric` |
| `optional` | `optional` | `Boolean` |
| `text` | `text` | `v02_PaymentLinksResourceCustomFieldsText` |
| `type` | `type` | `String` |

### `v02_PaymentLinksResourceCustomFieldsText`

| Field | Stripe API Name | Type |
|---|---|---|
| `defaultValue` | `defaultValue` | `String` |
| `maximumLength` | `maximumLength` | `Integer` |
| `minimumLength` | `minimumLength` | `Integer` |

### `v02_PaymentLinksResourceCustomText`

| Field | Stripe API Name | Type |
|---|---|---|
| `afterSubmit` | `afterSubmit` | `v02_PlinksResourceCustomTextPosition` |
| `shippingAddress` | `shippingAddress` | `v02_PlinksResourceCustomTextPosition` |
| `submit` | `submit` | `v02_PlinksResourceCustomTextPosition` |
| `termsOfServiceAcceptance` | `termsOfServiceAcceptance` | `v02_PlinksResourceCustomTextPosition` |

### `v02_PaymentLinksResourceInvoiceCreation`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `invoiceData` | `invoiceData` | `v02_PaymentLinksResourceInvoiceSettings` |

### `v02_PaymentLinksResourceInvoiceSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountTaxIds` | `accountTaxIds` | `List<v02_InvoiceAccountTaxIdsInner>` |
| `customFields` | `customFields` | `List<v02_InvoiceSettingCustomField>` |
| `description` | `description` | `String` |
| `footer` | `footer` | `String` |
| `issuer` | `issuer` | `v02_ConnectAccountReference` |
| `metadata` | `metadata` | `v02_Metadata` |
| `renderingOptions` | `renderingOptions` | `v02_InvoiceSettingCheckoutRndrOpts` |

### `v02_PaymentLinksResourceOptionalItem`

| Field | Stripe API Name | Type |
|---|---|---|
| `adjustableQuantity` | `adjustableQuantity` | `v02_PlinksOptionalItemAdjustableQuan` |
| `price` | `price` | `String` |
| `quantity` | `quantity` | `Integer` |

### `v02_PaymentLinksResourcePhoneNumberCol`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |

### `v02_PaymentLinksResourcePiData`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `description` | `description` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |
| `statementDescriptor` | `statementDescriptor` | `String` |
| `statementDescriptorSuffix` | `statementDescriptorSuffix` | `String` |
| `transferGroup` | `transferGroup` | `String` |

### `v02_PaymentLinksResourceRestrictions`

| Field | Stripe API Name | Type |
|---|---|---|
| `completedSessions` | `completedSessions` | `v02_PlinksResourceCompletedSessions` |

### `v02_PaymentLinksResourceShippingOption`

| Field | Stripe API Name | Type |
|---|---|---|
| `shippingAmount` | `shippingAmount` | `Integer` |
| `shippingRate` | `shippingRate` | `String` |

### `v02_PaymentLinksResourceSubscriptionData`

| Field | Stripe API Name | Type |
|---|---|---|
| `description` | `description` | `String` |
| `invoiceSettings` | `invoiceSettings` | `v02_PlinksResourceSubDataInvoiceSettings` |
| `metadata` | `metadata` | `v02_Metadata` |
| `trialPeriodDays` | `trialPeriodDays` | `Integer` |
| `trialSettings` | `trialSettings` | `v02_SubsTrialsResourceTrialSettings` |

### `v02_PaymentLinksResourceTaxIdCollection`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `required` | `required` | `String` |

### `v02_PaymentLinksResourceTransferData`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `destination` | `destination` | `String` |

## Payment Method

### `v02_PaymentMethod`

| Field | Stripe API Name | Type |
|---|---|---|
| `acssDebit` | `acss_debit` | `v02_PaymentMethodAcssDebit` |
| `affirm` | `affirm` | `List<v02_AdditionalString>` |
| `afterpayClearpay` | `afterpay_clearpay` | `List<v02_AdditionalString>` |
| `alipay` | `alipay` | `List<v02_AdditionalString>` |
| `allowRedisplay` | `allow_redisplay` | `String` |
| `alma` | `alma` | `List<v02_AdditionalString>` |
| `amazonPay` | `amazon_pay` | `List<v02_AdditionalString>` |
| `auBecsDebit` | `au_becs_debit` | `v02_PaymentMethodAuBecsDebit` |
| `bacsDebit` | `bacs_debit` | `v02_PaymentMethodBacsDebit` |
| `bancontact` | `bancontact` | `List<v02_AdditionalString>` |
| `billie` | `billie` | `List<v02_AdditionalString>` |
| `billingDetails` | `billing_details` | `v02_BillingDetails` |
| `blik` | `blik` | `List<v02_AdditionalString>` |
| `boleto` | `boleto` | `v02_PaymentMethodBoleto` |
| `card` | `card` | `v02_PaymentMethodCard` |
| `cardPresent` | `card_present` | `v02_PaymentMethodCardPresent` |
| `cashapp` | `cashapp` | `v02_PaymentMethodCashapp` |
| `created` | `created` | `Integer` |
| `customer` | `customer` | `String` |
| `customerBalance` | `customer_balance` | `List<v02_AdditionalString>` |
| `eps` | `eps` | `v02_PaymentMethodEps` |
| `fpx` | `fpx` | `v02_PaymentMethodFpx` |
| `giropay` | `giropay` | `List<v02_AdditionalString>` |
| `grabpay` | `grabpay` | `List<v02_AdditionalString>` |
| `id` | `id` | `String` |
| `ideal` | `ideal` | `v02_PaymentMethodIdeal` |
| `interacPresent` | `interac_present` | `v02_PaymentMethodInteracPresent` |
| `kakaoPay` | `kakao_pay` | `List<v02_AdditionalString>` |
| `klarna` | `klarna` | `v02_PaymentMethodKlarna` |
| `konbini` | `konbini` | `List<v02_AdditionalString>` |
| `krCard` | `kr_card` | `v02_PaymentMethodKrCard` |
| `link` | `link` | `v02_PaymentMethodLink` |
| `livemode` | `livemode` | `Boolean` |
| `metadata` | `metadata` | `v02_Metadata` |
| `mobilepay` | `mobilepay` | `List<v02_AdditionalString>` |
| `multibanco` | `multibanco` | `List<v02_AdditionalString>` |
| `naverPay` | `naver_pay` | `v02_PaymentMethodNaverPay` |
| `nzBankAccount` | `nz_bank_account` | `v02_PaymentMethodNzBankAccount` |
| `r_object` | `object` | `String` |
| `oxxo` | `oxxo` | `List<v02_AdditionalString>` |
| `p24` | `p24` | `v02_PaymentMethodP24` |
| `payByBank` | `pay_by_bank` | `List<v02_AdditionalString>` |
| `payco` | `payco` | `List<v02_AdditionalString>` |
| `paynow` | `paynow` | `List<v02_AdditionalString>` |
| `paypal` | `paypal` | `v02_PaymentMethodPaypal` |
| `pix` | `pix` | `List<v02_AdditionalString>` |
| `promptpay` | `promptpay` | `List<v02_AdditionalString>` |
| `radarOptions` | `radar_options` | `v02_RadarRadarOptions` |
| `revolutPay` | `revolut_pay` | `List<v02_AdditionalString>` |
| `samsungPay` | `samsung_pay` | `List<v02_AdditionalString>` |
| `satispay` | `satispay` | `List<v02_AdditionalString>` |
| `sepaDebit` | `sepa_debit` | `v02_PaymentMethodSepaDebit` |
| `sofort` | `sofort` | `v02_PaymentMethodSofort` |
| `swish` | `swish` | `List<v02_AdditionalString>` |
| `twint` | `twint` | `List<v02_AdditionalString>` |
| `type` | `type` | `String` |
| `usBankAccount` | `us_bank_account` | `v02_PaymentMethodUsBankAccount` |
| `wechatPay` | `wechat_pay` | `List<v02_AdditionalString>` |
| `zip` | `zip` | `List<v02_AdditionalString>` |

### `v02_PaymentMethodAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankName` | `bankName` | `String` |
| `fingerprint` | `fingerprint` | `String` |
| `institutionNumber` | `institutionNumber` | `String` |
| `last4` | `last4` | `String` |
| `transitNumber` | `transitNumber` | `String` |

### `v02_PaymentMethodAuBecsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `bsbNumber` | `bsbNumber` | `String` |
| `fingerprint` | `fingerprint` | `String` |
| `last4` | `last4` | `String` |

### `v02_PaymentMethodBacsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `fingerprint` | `fingerprint` | `String` |
| `last4` | `last4` | `String` |
| `sortCode` | `sortCode` | `String` |

### `v02_PaymentMethodBoleto`

| Field | Stripe API Name | Type |
|---|---|---|
| `taxId` | `taxId` | `String` |

### `v02_PaymentMethodCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `brand` | `brand` | `String` |
| `checks` | `checks` | `v02_PaymentMethodCardChecks` |
| `country` | `country` | `String` |
| `description` | `description` | `String` |
| `displayBrand` | `displayBrand` | `String` |
| `expMonth` | `expMonth` | `Integer` |
| `expYear` | `expYear` | `Integer` |
| `fingerprint` | `fingerprint` | `String` |
| `funding` | `funding` | `String` |
| `generatedFrom` | `generatedFrom` | `v02_PaymentMethodCardGeneratedCard` |
| `iin` | `iin` | `String` |
| `issuer` | `issuer` | `String` |
| `last4` | `last4` | `String` |
| `networks` | `networks` | `v02_Networks` |
| `regulatedStatus` | `regulatedStatus` | `String` |
| `threeDSecureUsage` | `threeDSecureUsage` | `v02_ThreeDSecureUsage` |
| `wallet` | `wallet` | `v02_PaymentMethodCardWallet` |

### `v02_PaymentMethodCardChecks`

| Field | Stripe API Name | Type |
|---|---|---|
| `addressLine1Check` | `addressLine1Check` | `String` |
| `addressPostalCodeCheck` | `addressPostalCodeCheck` | `String` |
| `cvcCheck` | `cvcCheck` | `String` |

### `v02_PaymentMethodCardGeneratedCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `charge` | `charge` | `String` |
| `paymentMethodDetails` | `paymentMethodDetails` | `v02_CardGeneratedFromPMDs` |
| `setupAttempt` | `setupAttempt` | `String` |

### `v02_PaymentMethodCardPresent`

| Field | Stripe API Name | Type |
|---|---|---|
| `brand` | `brand` | `String` |
| `brandProduct` | `brandProduct` | `String` |
| `cardholderName` | `cardholderName` | `String` |
| `country` | `country` | `String` |
| `description` | `description` | `String` |
| `expMonth` | `expMonth` | `Integer` |
| `expYear` | `expYear` | `Integer` |
| `fingerprint` | `fingerprint` | `String` |
| `funding` | `funding` | `String` |
| `iin` | `iin` | `String` |
| `issuer` | `issuer` | `String` |
| `last4` | `last4` | `String` |
| `networks` | `networks` | `v02_PaymentMethodCardPresentNetworks` |
| `offline` | `offline` | `v02_PMDsCardPresentOffline` |
| `preferredLocales` | `preferredLocales` | `List<String>` |
| `readMethod` | `readMethod` | `String` |
| `wallet` | `wallet` | `v02_PymtFlowsPrivatePmsCardPrsCommo` |

### `v02_PaymentMethodCardPresentNetworks`

| Field | Stripe API Name | Type |
|---|---|---|
| `available` | `available` | `List<String>` |
| `preferred` | `preferred` | `String` |

### `v02_PaymentMethodCardWallet`

| Field | Stripe API Name | Type |
|---|---|---|
| `amexExpressCheckout` | `amexExpressCheckout` | `List<v02_AdditionalString>` |
| `applePay` | `applePay` | `List<v02_AdditionalString>` |
| `dynamicLast4` | `dynamicLast4` | `String` |
| `googlePay` | `googlePay` | `List<v02_AdditionalString>` |
| `link` | `link` | `List<v02_AdditionalString>` |
| `masterpass` | `masterpass` | `v02_PaymentMethodCardWalletMasterpass` |
| `samsungPay` | `samsungPay` | `List<v02_AdditionalString>` |
| `type` | `type` | `String` |
| `visaCheckout` | `visaCheckout` | `v02_PaymentMethodCardWalletVisaCheckout` |

### `v02_PaymentMethodCardWalletMasterpass`

| Field | Stripe API Name | Type |
|---|---|---|
| `billingAddress` | `billingAddress` | `v02_Address` |
| `email` | `email` | `String` |
| `name` | `name` | `String` |
| `shippingAddress` | `shippingAddress` | `v02_Address` |

### `v02_PaymentMethodCardWalletVisaCheckout`

| Field | Stripe API Name | Type |
|---|---|---|
| `billingAddress` | `billingAddress` | `v02_Address` |
| `email` | `email` | `String` |
| `name` | `name` | `String` |
| `shippingAddress` | `shippingAddress` | `v02_Address` |

### `v02_PaymentMethodCashapp`

| Field | Stripe API Name | Type |
|---|---|---|
| `buyerId` | `buyerId` | `String` |
| `cashtag` | `cashtag` | `String` |

### `v02_PaymentMethodConfiguration`

| Field | Stripe API Name | Type |
|---|---|---|
| `acssDebit` | `acss_debit` | `v02_PmConfigResourcePmProperties` |
| `active` | `active` | `Boolean` |
| `affirm` | `affirm` | `v02_PmConfigResourcePmProperties` |
| `afterpayClearpay` | `afterpay_clearpay` | `v02_PmConfigResourcePmProperties` |
| `alipay` | `alipay` | `v02_PmConfigResourcePmProperties` |
| `alma` | `alma` | `v02_PmConfigResourcePmProperties` |
| `amazonPay` | `amazon_pay` | `v02_PmConfigResourcePmProperties` |
| `applePay` | `apple_pay` | `v02_PmConfigResourcePmProperties` |
| `application` | `application` | `String` |
| `auBecsDebit` | `au_becs_debit` | `v02_PmConfigResourcePmProperties` |
| `bacsDebit` | `bacs_debit` | `v02_PmConfigResourcePmProperties` |
| `bancontact` | `bancontact` | `v02_PmConfigResourcePmProperties` |
| `billie` | `billie` | `v02_PmConfigResourcePmProperties` |
| `blik` | `blik` | `v02_PmConfigResourcePmProperties` |
| `boleto` | `boleto` | `v02_PmConfigResourcePmProperties` |
| `card` | `card` | `v02_PmConfigResourcePmProperties` |
| `cartesBancaires` | `cartes_bancaires` | `v02_PmConfigResourcePmProperties` |
| `cashapp` | `cashapp` | `v02_PmConfigResourcePmProperties` |
| `customerBalance` | `customer_balance` | `v02_PmConfigResourcePmProperties` |
| `eps` | `eps` | `v02_PmConfigResourcePmProperties` |
| `fpx` | `fpx` | `v02_PmConfigResourcePmProperties` |
| `giropay` | `giropay` | `v02_PmConfigResourcePmProperties` |
| `googlePay` | `google_pay` | `v02_PmConfigResourcePmProperties` |
| `grabpay` | `grabpay` | `v02_PmConfigResourcePmProperties` |
| `id` | `id` | `String` |
| `ideal` | `ideal` | `v02_PmConfigResourcePmProperties` |
| `isDefault` | `is_default` | `Boolean` |
| `jcb` | `jcb` | `v02_PmConfigResourcePmProperties` |
| `klarna` | `klarna` | `v02_PmConfigResourcePmProperties` |
| `konbini` | `konbini` | `v02_PmConfigResourcePmProperties` |
| `link` | `link` | `v02_PmConfigResourcePmProperties` |
| `livemode` | `livemode` | `Boolean` |
| `mobilepay` | `mobilepay` | `v02_PmConfigResourcePmProperties` |
| `multibanco` | `multibanco` | `v02_PmConfigResourcePmProperties` |
| `name` | `name` | `String` |
| `nzBankAccount` | `nz_bank_account` | `v02_PmConfigResourcePmProperties` |
| `r_object` | `object` | `String` |
| `oxxo` | `oxxo` | `v02_PmConfigResourcePmProperties` |
| `p24` | `p24` | `v02_PmConfigResourcePmProperties` |
| `parent` | `parent` | `String` |
| `payByBank` | `pay_by_bank` | `v02_PmConfigResourcePmProperties` |
| `paynow` | `paynow` | `v02_PmConfigResourcePmProperties` |
| `paypal` | `paypal` | `v02_PmConfigResourcePmProperties` |
| `pix` | `pix` | `v02_PmConfigResourcePmProperties` |
| `promptpay` | `promptpay` | `v02_PmConfigResourcePmProperties` |
| `revolutPay` | `revolut_pay` | `v02_PmConfigResourcePmProperties` |
| `satispay` | `satispay` | `v02_PmConfigResourcePmProperties` |
| `sepaDebit` | `sepa_debit` | `v02_PmConfigResourcePmProperties` |
| `sofort` | `sofort` | `v02_PmConfigResourcePmProperties` |
| `swish` | `swish` | `v02_PmConfigResourcePmProperties` |
| `twint` | `twint` | `v02_PmConfigResourcePmProperties` |
| `usBankAccount` | `us_bank_account` | `v02_PmConfigResourcePmProperties` |
| `wechatPay` | `wechat_pay` | `v02_PmConfigResourcePmProperties` |
| `zip` | `zip` | `v02_PmConfigResourcePmProperties` |

### `v02_PaymentMethodDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `achCreditTransfer` | `achCreditTransfer` | `v02_PMDsAchCreditTransfer` |
| `achDebit` | `achDebit` | `v02_PaymentMethodDetailsAchDebit` |
| `acssDebit` | `acssDebit` | `v02_PaymentMethodDetailsAcssDebit` |
| `affirm` | `affirm` | `v02_PaymentMethodDetailsAffirm` |
| `afterpayClearpay` | `afterpayClearpay` | `v02_PaymentMethodDetailsAfterpayClearpay` |
| `alipay` | `alipay` | `v02_PaymentFlowsPrivatePmsAlipayDetails` |
| `alma` | `alma` | `List<v02_AdditionalString>` |
| `amazonPay` | `amazonPay` | `v02_PaymentMethodDetailsAmazonPay` |
| `auBecsDebit` | `auBecsDebit` | `v02_PaymentMethodDetailsAuBecsDebit` |
| `bacsDebit` | `bacsDebit` | `v02_PaymentMethodDetailsBacsDebit` |
| `bancontact` | `bancontact` | `v02_PaymentMethodDetailsBancontact` |
| `billie` | `billie` | `List<v02_AdditionalString>` |
| `blik` | `blik` | `v02_PaymentMethodDetailsBlik` |
| `boleto` | `boleto` | `v02_PaymentMethodDetailsBoleto` |
| `card` | `card` | `v02_PaymentMethodDetailsCard` |
| `cardPresent` | `cardPresent` | `v02_PaymentMethodDetailsCardPresent` |
| `cashapp` | `cashapp` | `v02_PaymentMethodDetailsCashapp` |
| `customerBalance` | `customerBalance` | `List<v02_AdditionalString>` |
| `eps` | `eps` | `v02_PaymentMethodDetailsEps` |
| `fpx` | `fpx` | `v02_PaymentMethodDetailsFpx` |
| `giropay` | `giropay` | `v02_PaymentMethodDetailsGiropay` |
| `grabpay` | `grabpay` | `v02_PaymentMethodDetailsGrabpay` |
| `ideal` | `ideal` | `v02_PaymentMethodDetailsIdeal` |
| `interacPresent` | `interacPresent` | `v02_PaymentMethodDetailsInteracPresent` |
| `kakaoPay` | `kakaoPay` | `v02_PaymentMethodDetailsKakaoPay` |
| `klarna` | `klarna` | `v02_PaymentMethodDetailsKlarna` |
| `konbini` | `konbini` | `v02_PaymentMethodDetailsKonbini` |
| `krCard` | `krCard` | `v02_PaymentMethodDetailsKrCard` |
| `link` | `link` | `v02_PaymentMethodDetailsLink` |
| `mobilepay` | `mobilepay` | `v02_PaymentMethodDetailsMobilepay` |
| `multibanco` | `multibanco` | `v02_PaymentMethodDetailsMultibanco` |
| `naverPay` | `naverPay` | `v02_PaymentMethodDetailsNaverPay` |
| `nzBankAccount` | `nzBankAccount` | `v02_PaymentMethodDetailsNzBankAccount` |
| `oxxo` | `oxxo` | `v02_PaymentMethodDetailsOxxo` |
| `p24` | `p24` | `v02_PaymentMethodDetailsP24` |
| `payByBank` | `payByBank` | `List<v02_AdditionalString>` |
| `payco` | `payco` | `v02_PaymentMethodDetailsPayco` |
| `paynow` | `paynow` | `v02_PaymentMethodDetailsPaynow` |
| `paypal` | `paypal` | `v02_PaymentMethodDetailsPaypal` |
| `pix` | `pix` | `v02_PaymentMethodDetailsPix` |
| `promptpay` | `promptpay` | `v02_PaymentMethodDetailsPromptpay` |
| `revolutPay` | `revolutPay` | `v02_PaymentMethodDetailsRevolutPay` |
| `samsungPay` | `samsungPay` | `v02_PaymentMethodDetailsSamsungPay` |
| `satispay` | `satispay` | `List<v02_AdditionalString>` |
| `sepaCreditTransfer` | `sepaCreditTransfer` | `v02_PMDsSepaCreditTransfer` |
| `sepaDebit` | `sepaDebit` | `v02_PaymentMethodDetailsSepaDebit` |
| `sofort` | `sofort` | `v02_PaymentMethodDetailsSofort` |
| `stripeAccount` | `stripeAccount` | `List<v02_AdditionalString>` |
| `swish` | `swish` | `v02_PaymentMethodDetailsSwish` |
| `twint` | `twint` | `List<v02_AdditionalString>` |
| `type` | `type` | `String` |
| `usBankAccount` | `usBankAccount` | `v02_PaymentMethodDetailsUsBankAccount` |
| `wechat` | `wechat` | `List<v02_AdditionalString>` |
| `wechatPay` | `wechatPay` | `v02_PaymentMethodDetailsWechatPay` |
| `zip` | `zip` | `List<v02_AdditionalString>` |

### `v02_PaymentMethodDetailsAchDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderType` | `accountHolderType` | `String` |
| `bankName` | `bankName` | `String` |
| `country` | `country` | `String` |
| `fingerprint` | `fingerprint` | `String` |
| `last4` | `last4` | `String` |
| `routingNumber` | `routingNumber` | `String` |

### `v02_PaymentMethodDetailsAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankName` | `bankName` | `String` |
| `fingerprint` | `fingerprint` | `String` |
| `institutionNumber` | `institutionNumber` | `String` |
| `last4` | `last4` | `String` |
| `mandate` | `mandate` | `String` |
| `transitNumber` | `transitNumber` | `String` |

### `v02_PaymentMethodDetailsAffirm`

| Field | Stripe API Name | Type |
|---|---|---|
| `transactionId` | `transactionId` | `String` |

### `v02_PaymentMethodDetailsAfterpayClearpay`

| Field | Stripe API Name | Type |
|---|---|---|
| `orderId` | `orderId` | `String` |
| `reference` | `reference` | `String` |

### `v02_PaymentMethodDetailsAmazonPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `funding` | `funding` | `v02_AmazonPayUnderlyingPmFundingDetails` |

### `v02_PaymentMethodDetailsAuBecsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `bsbNumber` | `bsbNumber` | `String` |
| `fingerprint` | `fingerprint` | `String` |
| `last4` | `last4` | `String` |
| `mandate` | `mandate` | `String` |

### `v02_PaymentMethodDetailsBacsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `fingerprint` | `fingerprint` | `String` |
| `last4` | `last4` | `String` |
| `mandate` | `mandate` | `String` |
| `sortCode` | `sortCode` | `String` |

### `v02_PaymentMethodDetailsBancontact`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankCode` | `bankCode` | `String` |
| `bankName` | `bankName` | `String` |
| `bic` | `bic` | `String` |
| `generatedSepaDebit` | `generatedSepaDebit` | `String` |
| `generatedSepaDebitMandate` | `generatedSepaDebitMandate` | `String` |
| `ibanLast4` | `ibanLast4` | `String` |
| `preferredLanguage` | `preferredLanguage` | `String` |
| `verifiedName` | `verifiedName` | `String` |

### `v02_PaymentMethodDetailsBlik`

| Field | Stripe API Name | Type |
|---|---|---|
| `buyerId` | `buyerId` | `String` |

### `v02_PaymentMethodDetailsBoleto`

| Field | Stripe API Name | Type |
|---|---|---|
| `taxId` | `taxId` | `String` |

### `v02_PaymentMethodDetailsCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountAuthorized` | `amountAuthorized` | `Integer` |
| `authorizationCode` | `authorizationCode` | `String` |
| `brand` | `brand` | `String` |
| `captureBefore` | `captureBefore` | `Integer` |
| `checks` | `checks` | `v02_PaymentMethodDetailsCardChecks` |
| `country` | `country` | `String` |
| `description` | `description` | `String` |
| `expMonth` | `expMonth` | `Integer` |
| `expYear` | `expYear` | `Integer` |
| `extendedAuthorization` | `extendedAuthorization` | `v02_PymtFlowsPrivatePmsCardDetailsApiEn` |
| `fingerprint` | `fingerprint` | `String` |
| `funding` | `funding` | `String` |
| `iin` | `iin` | `String` |
| `incrementalAuthorization` | `incrementalAuthorization` | `v02_PymtFlowsPrivatePmsCardDetailsApiEn` |
| `installments` | `installments` | `v02_PaymentMethodDetailsCardInstallments` |
| `issuer` | `issuer` | `String` |
| `last4` | `last4` | `String` |
| `mandate` | `mandate` | `String` |
| `moto` | `moto` | `Boolean` |
| `multicapture` | `multicapture` | `v02_PymtFlowsPrivatePmsCardDetailsA` |
| `network` | `network` | `String` |
| `networkToken` | `networkToken` | `v02_PaymentMethodDetailsCardNetworkToken` |
| `networkTransactionId` | `networkTransactionId` | `String` |
| `overcapture` | `overcapture` | `v02_PymtFlowsPrivatePmsCardDetailsApi` |
| `regulatedStatus` | `regulatedStatus` | `String` |
| `threeDSecure` | `threeDSecure` | `v02_ThreeDSecureDetailsCharge` |
| `wallet` | `wallet` | `v02_PaymentMethodDetailsCardWallet` |

### `v02_PaymentMethodDetailsCardChecks`

| Field | Stripe API Name | Type |
|---|---|---|
| `addressLine1Check` | `addressLine1Check` | `String` |
| `addressPostalCodeCheck` | `addressPostalCodeCheck` | `String` |
| `cvcCheck` | `cvcCheck` | `String` |

### `v02_PaymentMethodDetailsCardInstallments`

| Field | Stripe API Name | Type |
|---|---|---|
| `plan` | `plan` | `v02_PMDsCardInstallmentsPlan` |

### `v02_PaymentMethodDetailsCardNetworkToken`

| Field | Stripe API Name | Type |
|---|---|---|
| `used` | `used` | `Boolean` |

### `v02_PaymentMethodDetailsCardPresent`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountAuthorized` | `amountAuthorized` | `Integer` |
| `brand` | `brand` | `String` |
| `brandProduct` | `brandProduct` | `String` |
| `captureBefore` | `captureBefore` | `Integer` |
| `cardholderName` | `cardholderName` | `String` |
| `country` | `country` | `String` |
| `description` | `description` | `String` |
| `emvAuthData` | `emvAuthData` | `String` |
| `expMonth` | `expMonth` | `Integer` |
| `expYear` | `expYear` | `Integer` |
| `fingerprint` | `fingerprint` | `String` |
| `funding` | `funding` | `String` |
| `generatedCard` | `generatedCard` | `String` |
| `iin` | `iin` | `String` |
| `incrementalAuthorizationSupported` | `incrementalAuthorizationSupported` | `Boolean` |
| `issuer` | `issuer` | `String` |
| `last4` | `last4` | `String` |
| `network` | `network` | `String` |
| `networkTransactionId` | `networkTransactionId` | `String` |
| `offline` | `offline` | `v02_PMDsCardPresentOffline` |
| `overcaptureSupported` | `overcaptureSupported` | `Boolean` |
| `preferredLocales` | `preferredLocales` | `List<String>` |
| `readMethod` | `readMethod` | `String` |
| `receipt` | `receipt` | `v02_PMDsCardPresentReceipt` |
| `wallet` | `wallet` | `v02_PymtFlowsPrivatePmsCardPrsCommo` |

### `v02_PaymentMethodDetailsCardWallet`

| Field | Stripe API Name | Type |
|---|---|---|
| `amexExpressCheckout` | `amexExpressCheckout` | `List<v02_AdditionalString>` |
| `applePay` | `applePay` | `List<v02_AdditionalString>` |
| `dynamicLast4` | `dynamicLast4` | `String` |
| `googlePay` | `googlePay` | `List<v02_AdditionalString>` |
| `link` | `link` | `List<v02_AdditionalString>` |
| `masterpass` | `masterpass` | `v02_PMDsCardWalletMasterpass` |
| `samsungPay` | `samsungPay` | `List<v02_AdditionalString>` |
| `type` | `type` | `String` |
| `visaCheckout` | `visaCheckout` | `v02_PMDsCardWalletVisaCheckout` |

### `v02_PaymentMethodDetailsCashapp`

| Field | Stripe API Name | Type |
|---|---|---|
| `buyerId` | `buyerId` | `String` |
| `cashtag` | `cashtag` | `String` |

### `v02_PaymentMethodDetailsEps`

| Field | Stripe API Name | Type |
|---|---|---|
| `bank` | `bank` | `String` |
| `verifiedName` | `verifiedName` | `String` |

### `v02_PaymentMethodDetailsFpx`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderType` | `accountHolderType` | `String` |
| `bank` | `bank` | `String` |
| `transactionId` | `transactionId` | `String` |

### `v02_PaymentMethodDetailsGiropay`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankCode` | `bankCode` | `String` |
| `bankName` | `bankName` | `String` |
| `bic` | `bic` | `String` |
| `verifiedName` | `verifiedName` | `String` |

### `v02_PaymentMethodDetailsGrabpay`

| Field | Stripe API Name | Type |
|---|---|---|
| `transactionId` | `transactionId` | `String` |

### `v02_PaymentMethodDetailsIdeal`

| Field | Stripe API Name | Type |
|---|---|---|
| `bank` | `bank` | `String` |
| `bic` | `bic` | `String` |
| `generatedSepaDebit` | `generatedSepaDebit` | `String` |
| `generatedSepaDebitMandate` | `generatedSepaDebitMandate` | `String` |
| `ibanLast4` | `ibanLast4` | `String` |
| `verifiedName` | `verifiedName` | `String` |

### `v02_PaymentMethodDetailsInteracPresent`

| Field | Stripe API Name | Type |
|---|---|---|
| `brand` | `brand` | `String` |
| `cardholderName` | `cardholderName` | `String` |
| `country` | `country` | `String` |
| `description` | `description` | `String` |
| `emvAuthData` | `emvAuthData` | `String` |
| `expMonth` | `expMonth` | `Integer` |
| `expYear` | `expYear` | `Integer` |
| `fingerprint` | `fingerprint` | `String` |
| `funding` | `funding` | `String` |
| `generatedCard` | `generatedCard` | `String` |
| `iin` | `iin` | `String` |
| `issuer` | `issuer` | `String` |
| `last4` | `last4` | `String` |
| `network` | `network` | `String` |
| `networkTransactionId` | `networkTransactionId` | `String` |
| `preferredLocales` | `preferredLocales` | `List<String>` |
| `readMethod` | `readMethod` | `String` |
| `receipt` | `receipt` | `v02_PMDsInteracPresentReceipt` |

### `v02_PaymentMethodDetailsKakaoPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `buyerId` | `buyerId` | `String` |

### `v02_PaymentMethodDetailsKlarna`

| Field | Stripe API Name | Type |
|---|---|---|
| `payerDetails` | `payerDetails` | `v02_KlarnaPayerDetails` |
| `paymentMethodCategory` | `paymentMethodCategory` | `String` |
| `preferredLocale` | `preferredLocale` | `String` |

### `v02_PaymentMethodDetailsKonbini`

| Field | Stripe API Name | Type |
|---|---|---|
| `store` | `store` | `v02_PaymentMethodDetailsKonbiniStore` |

### `v02_PaymentMethodDetailsKonbiniStore`

| Field | Stripe API Name | Type |
|---|---|---|
| `chain` | `chain` | `String` |

### `v02_PaymentMethodDetailsKrCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `brand` | `brand` | `String` |
| `buyerId` | `buyerId` | `String` |
| `last4` | `last4` | `String` |

### `v02_PaymentMethodDetailsLink`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |

### `v02_PaymentMethodDetailsMobilepay`

| Field | Stripe API Name | Type |
|---|---|---|
| `card` | `card` | `v02_InternalCard` |

### `v02_PaymentMethodDetailsMultibanco`

| Field | Stripe API Name | Type |
|---|---|---|
| `entity` | `entity` | `String` |
| `reference` | `reference` | `String` |

### `v02_PaymentMethodDetailsNaverPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `buyerId` | `buyerId` | `String` |

### `v02_PaymentMethodDetailsNzBankAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderName` | `accountHolderName` | `String` |
| `bankCode` | `bankCode` | `String` |
| `bankName` | `bankName` | `String` |
| `branchCode` | `branchCode` | `String` |
| `last4` | `last4` | `String` |
| `suffix` | `suffix` | `String` |

### `v02_PaymentMethodDetailsOxxo`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_number` | `r_number` | `String` |

### `v02_PaymentMethodDetailsP24`

| Field | Stripe API Name | Type |
|---|---|---|
| `bank` | `bank` | `String` |
| `reference` | `reference` | `String` |
| `verifiedName` | `verifiedName` | `String` |

### `v02_PaymentMethodDetailsPassthroughCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `brand` | `brand` | `String` |
| `country` | `country` | `String` |
| `expMonth` | `expMonth` | `Integer` |
| `expYear` | `expYear` | `Integer` |
| `funding` | `funding` | `String` |
| `last4` | `last4` | `String` |

### `v02_PaymentMethodDetailsPayco`

| Field | Stripe API Name | Type |
|---|---|---|
| `buyerId` | `buyerId` | `String` |

### `v02_PaymentMethodDetailsPaynow`

| Field | Stripe API Name | Type |
|---|---|---|
| `reference` | `reference` | `String` |

### `v02_PaymentMethodDetailsPaypal`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |
| `payerEmail` | `payerEmail` | `String` |
| `payerId` | `payerId` | `String` |
| `payerName` | `payerName` | `String` |
| `sellerProtection` | `sellerProtection` | `v02_PaypalSellerProtection` |
| `transactionId` | `transactionId` | `String` |

### `v02_PaymentMethodDetailsPix`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankTransactionId` | `bankTransactionId` | `String` |

### `v02_PaymentMethodDetailsPromptpay`

| Field | Stripe API Name | Type |
|---|---|---|
| `reference` | `reference` | `String` |

### `v02_PaymentMethodDetailsRevolutPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `funding` | `funding` | `v02_RevolutPayUnderlyingPmFundingDetails` |

### `v02_PaymentMethodDetailsSamsungPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `buyerId` | `buyerId` | `String` |

### `v02_PaymentMethodDetailsSepaDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankCode` | `bankCode` | `String` |
| `branchCode` | `branchCode` | `String` |
| `country` | `country` | `String` |
| `fingerprint` | `fingerprint` | `String` |
| `last4` | `last4` | `String` |
| `mandate` | `mandate` | `String` |

### `v02_PaymentMethodDetailsSofort`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankCode` | `bankCode` | `String` |
| `bankName` | `bankName` | `String` |
| `bic` | `bic` | `String` |
| `country` | `country` | `String` |
| `generatedSepaDebit` | `generatedSepaDebit` | `String` |
| `generatedSepaDebitMandate` | `generatedSepaDebitMandate` | `String` |
| `ibanLast4` | `ibanLast4` | `String` |
| `preferredLanguage` | `preferredLanguage` | `String` |
| `verifiedName` | `verifiedName` | `String` |

### `v02_PaymentMethodDetailsSwish`

| Field | Stripe API Name | Type |
|---|---|---|
| `fingerprint` | `fingerprint` | `String` |
| `paymentReference` | `paymentReference` | `String` |
| `verifiedPhoneLast4` | `verifiedPhoneLast4` | `String` |

### `v02_PaymentMethodDetailsUsBankAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderType` | `accountHolderType` | `String` |
| `accountType` | `accountType` | `String` |
| `bankName` | `bankName` | `String` |
| `fingerprint` | `fingerprint` | `String` |
| `last4` | `last4` | `String` |
| `mandate` | `mandate` | `String` |
| `paymentReference` | `paymentReference` | `String` |
| `routingNumber` | `routingNumber` | `String` |

### `v02_PaymentMethodDetailsWechatPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `fingerprint` | `fingerprint` | `String` |
| `transactionId` | `transactionId` | `String` |

### `v02_PaymentMethodDomain`

| Field | Stripe API Name | Type |
|---|---|---|
| `amazonPay` | `amazon_pay` | `v02_PmDomainResourcePmStatus` |
| `applePay` | `apple_pay` | `v02_PmDomainResourcePmStatus` |
| `created` | `created` | `Integer` |
| `domainName` | `domain_name` | `String` |
| `enabled` | `enabled` | `Boolean` |
| `googlePay` | `google_pay` | `v02_PmDomainResourcePmStatus` |
| `id` | `id` | `String` |
| `klarna` | `klarna` | `v02_PmDomainResourcePmStatus` |
| `link` | `link` | `v02_PmDomainResourcePmStatus` |
| `livemode` | `livemode` | `Boolean` |
| `r_object` | `object` | `String` |
| `paypal` | `paypal` | `v02_PmDomainResourcePmStatus` |

### `v02_PaymentMethodEps`

| Field | Stripe API Name | Type |
|---|---|---|
| `bank` | `bank` | `String` |

### `v02_PaymentMethodFpx`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderType` | `accountHolderType` | `String` |
| `bank` | `bank` | `String` |

### `v02_PaymentMethodIdeal`

| Field | Stripe API Name | Type |
|---|---|---|
| `bank` | `bank` | `String` |
| `bic` | `bic` | `String` |

### `v02_PaymentMethodInteracPresent`

| Field | Stripe API Name | Type |
|---|---|---|
| `brand` | `brand` | `String` |
| `cardholderName` | `cardholderName` | `String` |
| `country` | `country` | `String` |
| `description` | `description` | `String` |
| `expMonth` | `expMonth` | `Integer` |
| `expYear` | `expYear` | `Integer` |
| `fingerprint` | `fingerprint` | `String` |
| `funding` | `funding` | `String` |
| `iin` | `iin` | `String` |
| `issuer` | `issuer` | `String` |
| `last4` | `last4` | `String` |
| `networks` | `networks` | `v02_PaymentMethodCardPresentNetworks` |
| `preferredLocales` | `preferredLocales` | `List<String>` |
| `readMethod` | `readMethod` | `String` |

### `v02_PaymentMethodKlarna`

| Field | Stripe API Name | Type |
|---|---|---|
| `dob` | `dob` | `v02_PaymentFlowsPrivatePmsKlarnaDob` |

### `v02_PaymentMethodKrCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `brand` | `brand` | `String` |
| `last4` | `last4` | `String` |

### `v02_PaymentMethodLink`

| Field | Stripe API Name | Type |
|---|---|---|
| `email` | `email` | `String` |
| `persistentToken` | `persistentToken` | `String` |

### `v02_PaymentMethodNaverPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `buyerId` | `buyerId` | `String` |
| `funding` | `funding` | `String` |

### `v02_PaymentMethodNzBankAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderName` | `accountHolderName` | `String` |
| `bankCode` | `bankCode` | `String` |
| `bankName` | `bankName` | `String` |
| `branchCode` | `branchCode` | `String` |
| `last4` | `last4` | `String` |
| `suffix` | `suffix` | `String` |

### `v02_PaymentMethodOptionsAffirm`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `preferredLocale` | `preferredLocale` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentMethodOptionsAfterpayClearpay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `reference` | `reference` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentMethodOptionsAlipay`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentMethodOptionsAlma`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |

### `v02_PaymentMethodOptionsAmazonPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentMethodOptionsBancontact`

| Field | Stripe API Name | Type |
|---|---|---|
| `preferredLanguage` | `preferredLanguage` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentMethodOptionsBoleto`

| Field | Stripe API Name | Type |
|---|---|---|
| `expiresAfterDays` | `expiresAfterDays` | `Integer` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentMethodOptionsCardInstallments`

| Field | Stripe API Name | Type |
|---|---|---|
| `availablePlans` | `availablePlans` | `List<v02_PMDsCardInstallmentsPlan>` |
| `enabled` | `enabled` | `Boolean` |
| `plan` | `plan` | `v02_PMDsCardInstallmentsPlan` |

### `v02_PaymentMethodOptionsCardPresent`

| Field | Stripe API Name | Type |
|---|---|---|
| `requestExtendedAuthorization` | `requestExtendedAuthorization` | `Boolean` |
| `requestIncrementalAuthorizationSupport` | `requestIncrementalAuthorizationSupport` | `Boolean` |
| `routing` | `routing` | `v02_PMOCardPresentRouting` |

### `v02_PaymentMethodOptionsCashapp`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentMethodOptionsCustomerBalance`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankTransfer` | `bankTransfer` | `v02_PMOCustomerBalanceBankTransfer` |
| `fundingType` | `fundingType` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentMethodOptionsFpx`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentMethodOptionsGiropay`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentMethodOptionsGrabpay`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentMethodOptionsIdeal`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentMethodOptionsKlarna`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `preferredLocale` | `preferredLocale` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentMethodOptionsKonbini`

| Field | Stripe API Name | Type |
|---|---|---|
| `confirmationNumber` | `confirmationNumber` | `String` |
| `expiresAfterDays` | `expiresAfterDays` | `Integer` |
| `expiresAt` | `expiresAt` | `Integer` |
| `productDescription` | `productDescription` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentMethodOptionsKrCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentMethodOptionsMultibanco`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentMethodOptionsOxxo`

| Field | Stripe API Name | Type |
|---|---|---|
| `expiresAfterDays` | `expiresAfterDays` | `Integer` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentMethodOptionsP24`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentMethodOptionsPaynow`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentMethodOptionsPaypal`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `preferredLocale` | `preferredLocale` | `String` |
| `reference` | `reference` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentMethodOptionsPix`

| Field | Stripe API Name | Type |
|---|---|---|
| `expiresAfterSeconds` | `expiresAfterSeconds` | `Integer` |
| `expiresAt` | `expiresAt` | `Integer` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentMethodOptionsPromptpay`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentMethodOptionsRevolutPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `captureMethod` | `captureMethod` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentMethodOptionsSofort`

| Field | Stripe API Name | Type |
|---|---|---|
| `preferredLanguage` | `preferredLanguage` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentMethodOptionsTwint`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentMethodOptionsWechatPay`

| Field | Stripe API Name | Type |
|---|---|---|
| `appId` | `appId` | `String` |
| `client` | `client` | `String` |
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentMethodOptionsZip`

| Field | Stripe API Name | Type |
|---|---|---|
| `setupFutureUsage` | `setupFutureUsage` | `String` |

### `v02_PaymentMethodP24`

| Field | Stripe API Name | Type |
|---|---|---|
| `bank` | `bank` | `String` |

### `v02_PaymentMethodPaypal`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |
| `payerEmail` | `payerEmail` | `String` |
| `payerId` | `payerId` | `String` |

### `v02_PaymentMethodSepaDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `bankCode` | `bankCode` | `String` |
| `branchCode` | `branchCode` | `String` |
| `country` | `country` | `String` |
| `fingerprint` | `fingerprint` | `String` |
| `generatedFrom` | `generatedFrom` | `v02_SepaDebitGeneratedFrom` |
| `last4` | `last4` | `String` |

### `v02_PaymentMethodSofort`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |

### `v02_PaymentMethodUsBacctStatusDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `blocked` | `blocked` | `v02_PaymentMethodUsBankAccountBlocked` |

### `v02_PaymentMethodUsBankAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `accountHolderType` | `accountHolderType` | `String` |
| `accountType` | `accountType` | `String` |
| `bankName` | `bankName` | `String` |
| `financialConnectionsAccount` | `financialConnectionsAccount` | `String` |
| `fingerprint` | `fingerprint` | `String` |
| `last4` | `last4` | `String` |
| `networks` | `networks` | `v02_UsBankAccountNetworks` |
| `routingNumber` | `routingNumber` | `String` |
| `statusDetails` | `statusDetails` | `v02_PaymentMethodUsBacctStatusDetails` |

### `v02_PaymentMethodUsBankAccountBlocked`

| Field | Stripe API Name | Type |
|---|---|---|
| `networkCode` | `networkCode` | `String` |
| `reason` | `reason` | `String` |

## Payment Source

### `v02_PaymentSource`

| Field | Stripe API Name | Type |
|---|---|---|
| `businessProfile` | `business_profile` | `v02_AccountBusinessProfile` |
| `businessType` | `business_type` | `String` |
| `capabilities` | `capabilities` | `v02_AccountCapabilities` |
| `chargesEnabled` | `charges_enabled` | `Boolean` |
| `company` | `company` | `v02_LegalEntityCompany` |
| `controller` | `controller` | `v02_AccountUnificationAccountController` |
| `country` | `country` | `String` |
| `created` | `created` | `Integer` |
| `defaultCurrency` | `default_currency` | `String` |
| `detailsSubmitted` | `details_submitted` | `Boolean` |
| `email` | `email` | `String` |
| `externalAccounts` | `external_accounts` | `v02_ExternalAccountList` |
| `futureRequirements` | `future_requirements` | `v02_ExternalAccountRequirements` |
| `groups` | `groups` | `v02_AccountGroupMembership` |
| `id` | `id` | `String` |
| `individual` | `individual` | `v02_Person` |
| `metadata` | `metadata` | `v02_Metadata` |
| `r_object` | `object` | `String` |
| `payoutsEnabled` | `payouts_enabled` | `Boolean` |
| `requirements` | `requirements` | `v02_ExternalAccountRequirements` |
| `settings` | `settings` | `v02_AccountSettings` |
| `tosAcceptance` | `tos_acceptance` | `v02_AccountTosAcceptance` |
| `type` | `type` | `String` |
| `account` | `account` | `String` |
| `accountHolderName` | `account_holder_name` | `String` |
| `accountHolderType` | `account_holder_type` | `String` |
| `accountType` | `account_type` | `String` |
| `availablePayoutMethods` | `available_payout_methods` | `List<String>` |
| `bankName` | `bank_name` | `String` |
| `r_currency` | `currency` | `String` |
| `customer` | `customer` | `String` |
| `defaultForCurrency` | `default_for_currency` | `Boolean` |
| `fingerprint` | `fingerprint` | `String` |
| `last4` | `last4` | `String` |
| `routingNumber` | `routing_number` | `String` |
| `status` | `status` | `String` |
| `addressCity` | `address_city` | `String` |
| `addressCountry` | `address_country` | `String` |
| `addressLine1` | `address_line1` | `String` |
| `addressLine1Check` | `address_line1_check` | `String` |
| `addressLine2` | `address_line2` | `String` |
| `addressState` | `address_state` | `String` |
| `addressZip` | `address_zip` | `String` |
| `addressZipCheck` | `address_zip_check` | `String` |
| `allowRedisplay` | `allow_redisplay` | `String` |
| `brand` | `brand` | `String` |
| `cvcCheck` | `cvc_check` | `String` |
| `description` | `description` | `String` |
| `dynamicLast4` | `dynamic_last4` | `String` |
| `expMonth` | `exp_month` | `Integer` |
| `expYear` | `exp_year` | `Integer` |
| `funding` | `funding` | `String` |
| `iin` | `iin` | `String` |
| `issuer` | `issuer` | `String` |
| `name` | `name` | `String` |
| `networks` | `networks` | `v02_TokenCardNetworks` |
| `regulatedStatus` | `regulated_status` | `String` |
| `tokenizationMethod` | `tokenization_method` | `String` |
| `achCreditTransfer` | `ach_credit_transfer` | `v02_SourceTypeAchCreditTransfer` |
| `achDebit` | `ach_debit` | `v02_SourceTypeAchDebit` |
| `acssDebit` | `acss_debit` | `v02_SourceTypeAcssDebit` |
| `alipay` | `alipay` | `v02_SourceTypeAlipay` |
| `amount` | `amount` | `Integer` |
| `auBecsDebit` | `au_becs_debit` | `v02_SourceTypeAuBecsDebit` |
| `bancontact` | `bancontact` | `v02_SourceTypeBancontact` |
| `card` | `card` | `v02_SourceTypeCard` |
| `cardPresent` | `card_present` | `v02_SourceTypeCardPresent` |
| `clientSecret` | `client_secret` | `String` |
| `codeVerification` | `code_verification` | `v02_SourceCodeVerificationFlow` |
| `eps` | `eps` | `v02_SourceTypeEps` |
| `flow` | `flow` | `String` |
| `giropay` | `giropay` | `v02_SourceTypeGiropay` |
| `ideal` | `ideal` | `v02_SourceTypeIdeal` |
| `klarna` | `klarna` | `v02_SourceTypeKlarna` |
| `livemode` | `livemode` | `Boolean` |
| `multibanco` | `multibanco` | `v02_SourceTypeMultibanco` |
| `owner` | `owner` | `v02_SourceOwner` |
| `p24` | `p24` | `v02_SourceTypeP24` |
| `receiver` | `receiver` | `v02_SourceReceiverFlow` |
| `redirect` | `redirect` | `v02_SourceRedirectFlow` |
| `sepaCreditTransfer` | `sepa_credit_transfer` | `v02_SourceTypeSepaCreditTransfer` |
| `sepaDebit` | `sepa_debit` | `v02_SourceTypeSepaDebit` |
| `sofort` | `sofort` | `v02_SourceTypeSofort` |
| `sourceOrder` | `source_order` | `v02_SourceOrder` |
| `statementDescriptor` | `statement_descriptor` | `String` |
| `threeDSecure` | `three_d_secure` | `v02_SourceTypeThreeDSecure` |
| `usage` | `usage` | `String` |
| `wechat` | `wechat` | `v02_SourceTypeWechat` |

## Payout

### `v02_Payout`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `applicationFee` | `application_fee` | `String` |
| `applicationFeeAmount` | `application_fee_amount` | `Integer` |
| `arrivalDate` | `arrival_date` | `Integer` |
| `automatic` | `automatic` | `Boolean` |
| `balanceTransaction` | `balance_transaction` | `String` |
| `created` | `created` | `Integer` |
| `r_currency` | `currency` | `String` |
| `description` | `description` | `String` |
| `destination` | `destination` | `String` |
| `failureBalanceTransaction` | `failure_balance_transaction` | `String` |
| `failureCode` | `failure_code` | `String` |
| `failureMessage` | `failure_message` | `String` |
| `id` | `id` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `metadata` | `metadata` | `v02_Metadata` |
| `method` | `method` | `String` |
| `r_object` | `object` | `String` |
| `originalPayout` | `original_payout` | `String` |
| `reconciliationStatus` | `reconciliation_status` | `String` |
| `reversedBy` | `reversed_by` | `String` |
| `sourceType` | `source_type` | `String` |
| `statementDescriptor` | `statement_descriptor` | `String` |
| `status` | `status` | `String` |
| `traceId` | `trace_id` | `v02_PayoutsTraceId` |
| `type` | `type` | `String` |

### `v02_PayoutsTraceId`

| Field | Stripe API Name | Type |
|---|---|---|
| `status` | `status` | `String` |
| `value` | `value` | `String` |

## Plan

### `v02_Plan`

| Field | Stripe API Name | Type |
|---|---|---|
| `active` | `active` | `Boolean` |
| `amount` | `amount` | `Integer` |
| `amountDecimal` | `amount_decimal (String)` | `String` |
| `billingScheme` | `billing_scheme` | `String` |
| `created` | `created` | `Integer` |
| `r_currency` | `currency` | `String` |
| `id` | `id` | `String` |
| `interval` | `interval` | `String` |
| `intervalCount` | `interval_count` | `Integer` |
| `livemode` | `livemode` | `Boolean` |
| `metadata` | `metadata` | `v02_Metadata` |
| `meter` | `meter` | `String` |
| `nickname` | `nickname` | `String` |
| `r_object` | `object` | `String` |
| `product` | `product` | `String` |
| `tiers` | `tiers` | `List<v02_PlanTier>` |
| `tiersMode` | `tiers_mode` | `String` |
| `transformUsage` | `transform_usage` | `v02_TransformUsage` |
| `trialPeriodDays` | `trial_period_days` | `Integer` |
| `usageType` | `usage_type` | `String` |

### `v02_PlanTier`

| Field | Stripe API Name | Type |
|---|---|---|
| `flatAmount` | `flatAmount` | `Integer` |
| `flatAmountDecimal` | `flatAmountDecimal` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |
| `upTo` | `upTo` | `Integer` |

## Price

### `v02_Price`

| Field | Stripe API Name | Type |
|---|---|---|
| `active` | `active` | `Boolean` |
| `billingScheme` | `billing_scheme` | `String` |
| `created` | `created` | `Integer` |
| `r_currency` | `currency` | `String` |
| `currencyOptions` | `currency_options` | `List<v02_AdditionalCurrencyOption>` |
| `customUnitAmount` | `custom_unit_amount` | `v02_CustomUnitAmount` |
| `id` | `id` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `lookupKey` | `lookup_key` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `nickname` | `nickname` | `String` |
| `r_object` | `object` | `String` |
| `product` | `product` | `String` |
| `recurring` | `recurring` | `v02_Recurring` |
| `taxBehavior` | `tax_behavior` | `String` |
| `tiers` | `tiers` | `List<v02_PriceTier>` |
| `tiersMode` | `tiers_mode` | `String` |
| `transformQuantity` | `transform_quantity` | `v02_TransformQuantity` |
| `type` | `type` | `String` |
| `unitAmount` | `unit_amount` | `Integer` |
| `unitAmountDecimal` | `unit_amount_decimal (String)` | `String` |

### `v02_PriceCurrencyOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `listAdditionalCreatePricesReqCurrOptsField` | `listAdditionalCreatePricesReqCurrOptsField` | `List<v02_AdditionalCreatePricesReqCurrOpts>` |

### `v02_PriceCurrencyOptions1`

| Field | Stripe API Name | Type |
|---|---|---|
| `listAdditionalUpdatePricesReqCurrOptsField` | `listAdditionalUpdatePricesReqCurrOptsField` | `List<v02_AdditionalUpdatePricesReqCurrOpts>` |

### `v02_PriceTier`

| Field | Stripe API Name | Type |
|---|---|---|
| `flatAmount` | `flatAmount` | `Integer` |
| `flatAmountDecimal` | `flatAmountDecimal` | `String` |
| `unitAmount` | `unitAmount` | `Integer` |
| `unitAmountDecimal` | `unitAmountDecimal` | `String` |
| `upTo` | `upTo` | `Integer` |

## Product

### `v02_Product`

| Field | Stripe API Name | Type |
|---|---|---|
| `active` | `active` | `Boolean` |
| `created` | `created` | `Integer` |
| `defaultPrice` | `default_price` | `String` |
| `description` | `description` | `String` |
| `id` | `id` | `String` |
| `images` | `images` | `List<String>` |
| `livemode` | `livemode` | `Boolean` |
| `marketingFeatures` | `marketing_features` | `List<v02_ProductMarketingFeature>` |
| `metadata` | `metadata` | `v02_Metadata` |
| `name` | `name` | `String` |
| `r_object` | `object` | `String` |
| `packageDimensions` | `package_dimensions` | `v02_PackageDimensions` |
| `shippable` | `shippable` | `Boolean` |
| `statementDescriptor` | `statement_descriptor` | `String` |
| `taxCode` | `tax_code` | `String` |
| `type` | `type` | `String` |
| `unitLabel` | `unit_label` | `String` |
| `updated` | `updated` | `Integer` |
| `url` | `url` | `String` |

### `v02_ProductFeature`

| Field | Stripe API Name | Type |
|---|---|---|
| `entitlementFeature` | `entitlement_feature` | `v02_EntitlementsFeature` |
| `id` | `id` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `r_object` | `object` | `String` |

### `v02_ProductMarketingFeature`

| Field | Stripe API Name | Type |
|---|---|---|
| `name` | `name` | `String` |

## Promotion Code

### `v02_PromotionCode`

| Field | Stripe API Name | Type |
|---|---|---|
| `active` | `active` | `Boolean` |
| `code` | `code` | `String` |
| `coupon` | `coupon` | `v02_Coupon` |
| `created` | `created` | `Integer` |
| `customer` | `customer` | `String` |
| `expiresAt` | `expires_at` | `Integer` |
| `id` | `id` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `maxRedemptions` | `max_redemptions` | `Integer` |
| `metadata` | `metadata` | `v02_Metadata` |
| `r_object` | `object` | `String` |
| `restrictions` | `restrictions` | `v02_PromotionCodesResourceRestrictions` |
| `timesRedeemed` | `times_redeemed` | `Integer` |

### `v02_PromotionCodeCurrencyOption`

| Field | Stripe API Name | Type |
|---|---|---|
| `minimumAmount` | `minimumAmount` | `Integer` |

### `v02_PromotionCodesResourceRestrictions`

| Field | Stripe API Name | Type |
|---|---|---|
| `currencyOptions` | `currencyOptions` | `List<v02_AdditionalPromotionCodeCurrencyOpt>` |
| `firstTimeTransaction` | `firstTimeTransaction` | `Boolean` |
| `minimumAmount` | `minimumAmount` | `Integer` |
| `minimumAmountCurrency` | `minimumAmountCurrency` | `String` |

## Quote

### `v02_Quote`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountSubtotal` | `amount_subtotal` | `Integer` |
| `amountTotal` | `amount_total` | `Integer` |
| `application` | `application` | `String` |
| `applicationFeeAmount` | `application_fee_amount` | `Integer` |
| `applicationFeePercent` | `application_fee_percent` | `Double` |
| `automaticTax` | `automatic_tax` | `v02_QuotesResourceAutomaticTax` |
| `collectionMethod` | `collection_method` | `String` |
| `computed` | `computed` | `v02_QuotesResourceComputed` |
| `created` | `created` | `Integer` |
| `r_currency` | `currency` | `String` |
| `customer` | `customer` | `String` |
| `defaultTaxRates` | `default_tax_rates` | `List<v02_QuoteDefaultTaxRatesInner>` |
| `description` | `description` | `String` |
| `discounts` | `discounts` | `List<v02_InvoiceitemDiscountsInner>` |
| `expiresAt` | `expires_at` | `Integer` |
| `footer` | `footer` | `String` |
| `fromQuote` | `from_quote` | `v02_QuotesResourceFromQuote` |
| `header` | `header` | `String` |
| `id` | `id` | `String` |
| `invoice` | `invoice` | `String` |
| `invoiceSettings` | `invoice_settings` | `v02_InvoiceSettingQuoteSetting` |
| `lineItems` | `line_items` | `v02_QuotesResourceListLineItems` |
| `livemode` | `livemode` | `Boolean` |
| `metadata` | `metadata` | `v02_Metadata` |
| `r_number` | `number` | `String` |
| `r_object` | `object` | `String` |
| `onBehalfOf` | `on_behalf_of` | `String` |
| `status` | `status` | `String` |
| `statusTransitions` | `status_transitions` | `v02_QuotesResourceStatusTransitions` |
| `subscription` | `subscription` | `String` |
| `subscriptionData` | `subscription_data` | `v02_QuotesResourceSubDataSubData` |
| `subscriptionSchedule` | `subscription_schedule` | `String` |
| `testClock` | `test_clock` | `String` |
| `totalDetails` | `total_details` | `v02_QuotesResourceTotalDetails` |
| `transferData` | `transfer_data` | `v02_QuotesResourceTransferData` |

### `v02_QuoteDefaultTaxRatesInner`

| Field | Stripe API Name | Type |
|---|---|---|
| `stringField` | `stringField` | `String` |
| `active` | `active` | `Boolean` |
| `country` | `country` | `String` |
| `created` | `created` | `Integer` |
| `description` | `description` | `String` |
| `displayName` | `displayName` | `String` |
| `effectivePercentage` | `effectivePercentage` | `Double` |
| `flatAmount` | `flatAmount` | `v02_TaxRateFlatAmount` |
| `id` | `id` | `String` |
| `inclusive` | `inclusive` | `Boolean` |
| `jurisdiction` | `jurisdiction` | `String` |
| `jurisdictionLevel` | `jurisdictionLevel` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `metadata` | `metadata` | `v02_Metadata` |
| `r_object` | `r_object` | `String` |
| `percentage` | `percentage` | `Double` |
| `rateType` | `rateType` | `String` |
| `state` | `state` | `String` |
| `taxType` | `taxType` | `String` |

### `v02_QuotesResourceAutomaticTax`

| Field | Stripe API Name | Type |
|---|---|---|
| `enabled` | `enabled` | `Boolean` |
| `liability` | `liability` | `v02_ConnectAccountReference` |
| `provider` | `provider` | `String` |
| `status` | `status` | `String` |

### `v02_QuotesResourceComputed`

| Field | Stripe API Name | Type |
|---|---|---|
| `recurring` | `recurring` | `v02_QuotesResourceRecurring` |
| `upfront` | `upfront` | `v02_QuotesResourceUpfront` |

### `v02_QuotesResourceFromQuote`

| Field | Stripe API Name | Type |
|---|---|---|
| `isRevision` | `isRevision` | `Boolean` |
| `quote` | `quote` | `String` |

### `v02_QuotesResourceRecurring`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountSubtotal` | `amountSubtotal` | `Integer` |
| `amountTotal` | `amountTotal` | `Integer` |
| `interval` | `interval` | `String` |
| `intervalCount` | `intervalCount` | `Integer` |
| `totalDetails` | `totalDetails` | `v02_QuotesResourceTotalDetails` |

### `v02_QuotesResourceStatusTransitions`

| Field | Stripe API Name | Type |
|---|---|---|
| `acceptedAt` | `acceptedAt` | `Integer` |
| `canceledAt` | `canceledAt` | `Integer` |
| `finalizedAt` | `finalizedAt` | `Integer` |

### `v02_QuotesResourceSubDataSubData`

| Field | Stripe API Name | Type |
|---|---|---|
| `description` | `description` | `String` |
| `effectiveDate` | `effectiveDate` | `Integer` |
| `metadata` | `metadata` | `v02_Metadata` |
| `trialPeriodDays` | `trialPeriodDays` | `Integer` |

### `v02_QuotesResourceTotalDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountDiscount` | `amountDiscount` | `Integer` |
| `amountShipping` | `amountShipping` | `Integer` |
| `amountTax` | `amountTax` | `Integer` |
| `breakdown` | `breakdown` | `v02_QuotesResourceTotalDetailsResBkd` |

### `v02_QuotesResourceTotalDetailsResBkd`

| Field | Stripe API Name | Type |
|---|---|---|
| `discounts` | `discounts` | `List<v02_LineItemsDiscountAmount>` |
| `taxes` | `taxes` | `List<v02_LineItemsTaxAmount>` |

### `v02_QuotesResourceTransferData`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `amountPercent` | `amountPercent` | `Double` |
| `destination` | `destination` | `String` |

### `v02_QuotesResourceUpfront`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountSubtotal` | `amountSubtotal` | `Integer` |
| `amountTotal` | `amountTotal` | `Integer` |
| `lineItems` | `lineItems` | `v02_QuotesResourceListLineItems` |
| `totalDetails` | `totalDetails` | `v02_QuotesResourceTotalDetails` |

## Refund

### `v02_Refund`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `balanceTransaction` | `balance_transaction` | `String` |
| `charge` | `charge` | `String` |
| `created` | `created` | `Integer` |
| `r_currency` | `currency` | `String` |
| `description` | `description` | `String` |
| `destinationDetails` | `destination_details` | `v02_RefundDestinationDetails` |
| `failureBalanceTransaction` | `failure_balance_transaction` | `String` |
| `failureReason` | `failure_reason` | `String` |
| `id` | `id` | `String` |
| `instructionsEmail` | `instructions_email` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `nextAction` | `next_action` | `v02_RefundNextAction` |
| `r_object` | `object` | `String` |
| `paymentIntent` | `payment_intent` | `String` |
| `pendingReason` | `pending_reason` | `String` |
| `presentmentDetails` | `presentment_details` | `v02_PaymentFlowsPiPresentmentDetails` |
| `reason` | `reason` | `String` |
| `receiptNumber` | `receipt_number` | `String` |
| `sourceTransferReversal` | `source_transfer_reversal` | `String` |
| `status` | `status` | `String` |
| `transferReversal` | `transfer_reversal` | `String` |

### `v02_RefundDestinationDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `affirm` | `affirm` | `List<v02_AdditionalString>` |
| `afterpayClearpay` | `afterpayClearpay` | `List<v02_AdditionalString>` |
| `alipay` | `alipay` | `List<v02_AdditionalString>` |
| `alma` | `alma` | `List<v02_AdditionalString>` |
| `amazonPay` | `amazonPay` | `List<v02_AdditionalString>` |
| `auBankTransfer` | `auBankTransfer` | `List<v02_AdditionalString>` |
| `blik` | `blik` | `v02_RefundDestinationDetailsBlik` |
| `brBankTransfer` | `brBankTransfer` | `v02_RefundDestinationDetailsBrBankXfer` |
| `card` | `card` | `v02_RefundDestinationDetailsCard` |
| `cashapp` | `cashapp` | `List<v02_AdditionalString>` |
| `customerCashBalance` | `customerCashBalance` | `List<v02_AdditionalString>` |
| `eps` | `eps` | `List<v02_AdditionalString>` |
| `euBankTransfer` | `euBankTransfer` | `v02_RefundDestinationDetailsEuBankXfer` |
| `gbBankTransfer` | `gbBankTransfer` | `v02_RefundDestinationDetailsGbBankXfer` |
| `giropay` | `giropay` | `List<v02_AdditionalString>` |
| `grabpay` | `grabpay` | `List<v02_AdditionalString>` |
| `jpBankTransfer` | `jpBankTransfer` | `v02_RefundDestinationDetailsJpBankXfer` |
| `klarna` | `klarna` | `List<v02_AdditionalString>` |
| `multibanco` | `multibanco` | `v02_RefundDestinationDetailsMultibanco` |
| `mxBankTransfer` | `mxBankTransfer` | `v02_RefundDestinationDetailsMxBankXfer` |
| `nzBankTransfer` | `nzBankTransfer` | `List<v02_AdditionalString>` |
| `p24` | `p24` | `v02_RefundDestinationDetailsP24` |
| `paynow` | `paynow` | `List<v02_AdditionalString>` |
| `paypal` | `paypal` | `List<v02_AdditionalString>` |
| `pix` | `pix` | `List<v02_AdditionalString>` |
| `revolut` | `revolut` | `List<v02_AdditionalString>` |
| `sofort` | `sofort` | `List<v02_AdditionalString>` |
| `swish` | `swish` | `v02_RefundDestinationDetailsSwish` |
| `thBankTransfer` | `thBankTransfer` | `v02_RefundDestinationDetailsThBankXfer` |
| `type` | `type` | `String` |
| `usBankTransfer` | `usBankTransfer` | `v02_RefundDestinationDetailsUsBankXfer` |
| `wechatPay` | `wechatPay` | `List<v02_AdditionalString>` |
| `zip` | `zip` | `List<v02_AdditionalString>` |

### `v02_RefundDestinationDetailsBlik`

| Field | Stripe API Name | Type |
|---|---|---|
| `networkDeclineCode` | `networkDeclineCode` | `String` |
| `reference` | `reference` | `String` |
| `referenceStatus` | `referenceStatus` | `String` |

### `v02_RefundDestinationDetailsBrBankXfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `reference` | `reference` | `String` |
| `referenceStatus` | `referenceStatus` | `String` |

### `v02_RefundDestinationDetailsCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `reference` | `reference` | `String` |
| `referenceStatus` | `referenceStatus` | `String` |
| `referenceType` | `referenceType` | `String` |
| `type` | `type` | `String` |

### `v02_RefundDestinationDetailsEuBankXfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `reference` | `reference` | `String` |
| `referenceStatus` | `referenceStatus` | `String` |

### `v02_RefundDestinationDetailsGbBankXfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `reference` | `reference` | `String` |
| `referenceStatus` | `referenceStatus` | `String` |

### `v02_RefundDestinationDetailsJpBankXfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `reference` | `reference` | `String` |
| `referenceStatus` | `referenceStatus` | `String` |

### `v02_RefundDestinationDetailsMultibanco`

| Field | Stripe API Name | Type |
|---|---|---|
| `reference` | `reference` | `String` |
| `referenceStatus` | `referenceStatus` | `String` |

### `v02_RefundDestinationDetailsMxBankXfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `reference` | `reference` | `String` |
| `referenceStatus` | `referenceStatus` | `String` |

### `v02_RefundDestinationDetailsP24`

| Field | Stripe API Name | Type |
|---|---|---|
| `reference` | `reference` | `String` |
| `referenceStatus` | `referenceStatus` | `String` |

### `v02_RefundDestinationDetailsSwish`

| Field | Stripe API Name | Type |
|---|---|---|
| `networkDeclineCode` | `networkDeclineCode` | `String` |
| `reference` | `reference` | `String` |
| `referenceStatus` | `referenceStatus` | `String` |

### `v02_RefundDestinationDetailsThBankXfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `reference` | `reference` | `String` |
| `referenceStatus` | `referenceStatus` | `String` |

### `v02_RefundDestinationDetailsUsBankXfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `reference` | `reference` | `String` |
| `referenceStatus` | `referenceStatus` | `String` |

### `v02_RefundNextAction`

| Field | Stripe API Name | Type |
|---|---|---|
| `displayDetails` | `displayDetails` | `v02_RefundNextActionDisplayDetails` |
| `type` | `type` | `String` |

### `v02_RefundNextActionDisplayDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `emailSent` | `emailSent` | `v02_EmailSent` |
| `expiresAt` | `expiresAt` | `Integer` |

## Setup Intent

### `v02_SetupIntent`

| Field | Stripe API Name | Type |
|---|---|---|
| `application` | `application` | `String` |
| `attachToSelf` | `attach_to_self` | `Boolean` |
| `automaticPaymentMethods` | `automatic_payment_methods` | `v02_PaymentFlowsAutomaticPmsSi` |
| `cancellationReason` | `cancellation_reason` | `String` |
| `clientSecret` | `client_secret` | `String` |
| `created` | `created` | `Integer` |
| `customer` | `customer` | `String` |
| `description` | `description` | `String` |
| `flowDirections` | `flow_directions` | `List<String>` |
| `id` | `id` | `String` |
| `lastSetupError` | `last_setup_error` | `v02_ApiErrors` |
| `latestAttempt` | `latest_attempt` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `mandate` | `mandate` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `nextAction` | `next_action` | `v02_SetupIntentNextAction` |
| `r_object` | `object` | `String` |
| `onBehalfOf` | `on_behalf_of` | `String` |
| `paymentMethod` | `payment_method` | `String` |
| `paymentMethodConfigurationDetails` | `payment_method_configuration_details` | `v02_PmConfigBizPmConfigurationDetails` |
| `paymentMethodOptions` | `payment_method_options` | `v02_SetupIntentPaymentMethodOptions` |
| `paymentMethodTypes` | `payment_method_types` | `List<String>` |
| `singleUseMandate` | `single_use_mandate` | `String` |
| `status` | `status` | `String` |
| `usage` | `usage` | `String` |

### `v02_SetupIntentNextAction`

| Field | Stripe API Name | Type |
|---|---|---|
| `cashappHandleRedirectOrDisplayQrCode` | `cashappHandleRedirectOrDisplayQrCode` | `v02_PiNxtactCashappHandleRedirOrDspl` |
| `redirectToUrl` | `redirectToUrl` | `v02_SetupIntentNextActionRedirectToUrl` |
| `type` | `type` | `String` |
| `useStripeSdk` | `useStripeSdk` | `List<v02_AdditionalString>` |
| `verifyWithMicrodeposits` | `verifyWithMicrodeposits` | `v02_SetupIntentNxtactVerifyWithMicrodep` |

### `v02_SetupIntentNextActionRedirectToUrl`

| Field | Stripe API Name | Type |
|---|---|---|
| `returnUrl` | `returnUrl` | `String` |
| `url` | `url` | `String` |

### `v02_SetupIntentNxtactVerifyWithMicrodep`

| Field | Stripe API Name | Type |
|---|---|---|
| `arrivalDate` | `arrivalDate` | `Integer` |
| `hostedVerificationUrl` | `hostedVerificationUrl` | `String` |
| `microdepositType` | `microdepositType` | `String` |

### `v02_SetupIntentPMOAcssDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `mandateOptions` | `mandateOptions` | `v02_SiPMOMandateOptionsAcssDebit` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_SetupIntentPMOBacsDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_SiPMOMandateOptionsBacsDebit` |

### `v02_SetupIntentPMOCardMandateOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `amountType` | `amountType` | `String` |
| `r_currency` | `r_currency` | `String` |
| `description` | `description` | `String` |
| `endDate` | `endDate` | `Integer` |
| `interval` | `interval` | `String` |
| `intervalCount` | `intervalCount` | `Integer` |
| `reference` | `reference` | `String` |
| `startDate` | `startDate` | `Integer` |
| `supportedTypes` | `supportedTypes` | `List<String>` |

### `v02_SetupIntentPMOPaypal`

| Field | Stripe API Name | Type |
|---|---|---|
| `billingAgreementId` | `billingAgreementId` | `String` |

### `v02_SetupIntentPMOSepaDebit`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_SiPMOMandateOptionsSepaDebit` |

### `v02_SetupIntentPMOUsBankAccount`

| Field | Stripe API Name | Type |
|---|---|---|
| `financialConnections` | `financialConnections` | `v02_LinkedAccountOptionsCommon` |
| `mandateOptions` | `mandateOptions` | `v02_PMOUsBankAccountMandateOptions` |
| `verificationMethod` | `verificationMethod` | `String` |

### `v02_SetupIntentPaymentMethodOptions`

| Field | Stripe API Name | Type |
|---|---|---|
| `acssDebit` | `acssDebit` | `v02_SetupIntentPMOAcssDebit` |
| `amazonPay` | `amazonPay` | `List<v02_AdditionalString>` |
| `bacsDebit` | `bacsDebit` | `v02_SetupIntentPMOBacsDebit` |
| `card` | `card` | `v02_SetupIntentPaymentMethodOptionsCard` |
| `cardPresent` | `cardPresent` | `List<v02_AdditionalString>` |
| `link` | `link` | `v02_SetupIntentPaymentMethodOptionsLink` |
| `paypal` | `paypal` | `v02_SetupIntentPMOPaypal` |
| `sepaDebit` | `sepaDebit` | `v02_SetupIntentPMOSepaDebit` |
| `usBankAccount` | `usBankAccount` | `v02_SetupIntentPMOUsBankAccount` |

### `v02_SetupIntentPaymentMethodOptionsCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_SetupIntentPMOCardMandateOptions` |
| `network` | `network` | `String` |
| `requestThreeDSecure` | `requestThreeDSecure` | `String` |

### `v02_SetupIntentPaymentMethodOptionsLink`

| Field | Stripe API Name | Type |
|---|---|---|
| `persistentToken` | `persistentToken` | `String` |

## Subscription

### `v02_Subscription`

| Field | Stripe API Name | Type |
|---|---|---|
| `application` | `application` | `String` |
| `applicationFeePercent` | `application_fee_percent` | `Double` |
| `automaticTax` | `automatic_tax` | `v02_SubscriptionAutomaticTax` |
| `billingCycleAnchor` | `billing_cycle_anchor` | `Integer` |
| `billingCycleAnchorConfig` | `billing_cycle_anchor_config` | `v02_SubsResourceBillingCycleAnchorConfig` |
| `cancelAt` | `cancel_at` | `Integer` |
| `cancelAtPeriodEnd` | `cancel_at_period_end` | `Boolean` |
| `canceledAt` | `canceled_at` | `Integer` |
| `cancellationDetails` | `cancellation_details` | `v02_CancellationDetails` |
| `collectionMethod` | `collection_method` | `String` |
| `created` | `created` | `Integer` |
| `r_currency` | `currency` | `String` |
| `customer` | `customer` | `String` |
| `daysUntilDue` | `days_until_due` | `Integer` |
| `defaultPaymentMethod` | `default_payment_method` | `String` |
| `defaultSource` | `default_source` | `String` |
| `defaultTaxRates` | `default_tax_rates` | `List<v02_TaxRate>` |
| `description` | `description` | `String` |
| `discounts` | `discounts` | `List<v02_InvoiceitemDiscountsInner>` |
| `endedAt` | `ended_at` | `Integer` |
| `id` | `id` | `String` |
| `invoiceSettings` | `invoice_settings` | `v02_SubsResourceSubInvoiceSettings` |
| `items` | `items` | `v02_SubscriptionItemList` |
| `latestInvoice` | `latest_invoice` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `metadata` | `metadata` | `v02_Metadata` |
| `nextPendingInvoiceItemInvoice` | `next_pending_invoice_item_invoice` | `Integer` |
| `r_object` | `object` | `String` |
| `onBehalfOf` | `on_behalf_of` | `String` |
| `pauseCollection` | `pause_collection` | `v02_SubscriptionsResourcePauseCollection` |
| `paymentSettings` | `payment_settings` | `v02_SubscriptionsResourcePaymentSettings` |
| `pendingInvoiceItemInterval` | `pending_invoice_item_interval` | `v02_SubPendingInvoiceItemInterval` |
| `pendingSetupIntent` | `pending_setup_intent` | `String` |
| `pendingUpdate` | `pending_update` | `v02_SubscriptionsResourcePendingUpdate` |
| `schedule` | `schedule` | `String` |
| `startDate` | `start_date` | `Integer` |
| `status` | `status` | `String` |
| `testClock` | `test_clock` | `String` |
| `transferData` | `transfer_data` | `v02_SubscriptionTransferData` |
| `trialEnd` | `trial_end` | `Integer` |
| `trialSettings` | `trial_settings` | `v02_SubsTrialsResourceTrialSettings` |
| `trialStart` | `trial_start` | `Integer` |

### `v02_SubscriptionAutomaticTax`

| Field | Stripe API Name | Type |
|---|---|---|
| `disabledReason` | `disabledReason` | `String` |
| `enabled` | `enabled` | `Boolean` |
| `liability` | `liability` | `v02_ConnectAccountReference` |

### `v02_SubscriptionItem`

| Field | Stripe API Name | Type |
|---|---|---|
| `created` | `created` | `Integer` |
| `currentPeriodEnd` | `current_period_end` | `Integer` |
| `currentPeriodStart` | `current_period_start` | `Integer` |
| `discounts` | `discounts` | `List<v02_InvoiceitemDiscountsInner>` |
| `id` | `id` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `r_object` | `object` | `String` |
| `plan` | `plan` | `v02_Plan` |
| `price` | `price` | `v02_Price` |
| `quantity` | `quantity` | `Integer` |
| `subscription` | `subscription` | `String` |
| `taxRates` | `tax_rates` | `List<v02_TaxRate>` |

### `v02_SubscriptionPaymentMethodOptionsCard`

| Field | Stripe API Name | Type |
|---|---|---|
| `mandateOptions` | `mandateOptions` | `v02_InvoiceMandateOptionsCard` |
| `network` | `network` | `String` |
| `requestThreeDSecure` | `requestThreeDSecure` | `String` |

### `v02_SubscriptionSchedule`

| Field | Stripe API Name | Type |
|---|---|---|
| `application` | `application` | `String` |
| `canceledAt` | `canceled_at` | `Integer` |
| `completedAt` | `completed_at` | `Integer` |
| `created` | `created` | `Integer` |
| `currentPhase` | `current_phase` | `v02_SubscriptionScheduleCurrentPhase` |
| `customer` | `customer` | `String` |
| `defaultSettings` | `default_settings` | `v02_SubSchedulesResourceDefaultSettings` |
| `endBehavior` | `end_behavior` | `String` |
| `id` | `id` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `metadata` | `metadata` | `v02_Metadata` |
| `r_object` | `object` | `String` |
| `phases` | `phases` | `List<v02_SubSchedulePhaseConfiguration>` |
| `releasedAt` | `released_at` | `Integer` |
| `releasedSubscription` | `released_subscription` | `String` |
| `status` | `status` | `String` |
| `subscription` | `subscription` | `String` |
| `testClock` | `test_clock` | `String` |

### `v02_SubscriptionScheduleAddInvoiceItem`

| Field | Stripe API Name | Type |
|---|---|---|
| `discounts` | `discounts` | `List<v02_DiscountsResourceStackableDiscount>` |
| `price` | `price` | `String` |
| `quantity` | `quantity` | `Integer` |
| `taxRates` | `taxRates` | `List<v02_TaxRate>` |

### `v02_SubscriptionScheduleCurrentPhase`

| Field | Stripe API Name | Type |
|---|---|---|
| `endDate` | `endDate` | `Integer` |
| `startDate` | `startDate` | `Integer` |

### `v02_SubscriptionTransferData`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountPercent` | `amountPercent` | `Double` |
| `destination` | `destination` | `String` |

### `v02_SubscriptionsResourcePMO`

| Field | Stripe API Name | Type |
|---|---|---|
| `acssDebit` | `acssDebit` | `v02_InvoicePaymentMethodOptionsAcssDebit` |
| `bancontact` | `bancontact` | `v02_InvoicePMOBancontact` |
| `card` | `card` | `v02_SubscriptionPaymentMethodOptionsCard` |
| `customerBalance` | `customerBalance` | `v02_InvoicePMOCustomerBalance` |
| `konbini` | `konbini` | `List<v02_AdditionalString>` |
| `sepaDebit` | `sepaDebit` | `List<v02_AdditionalString>` |
| `usBankAccount` | `usBankAccount` | `v02_InvoicePMOUsBankAccount` |

### `v02_SubscriptionsResourcePauseCollection`

| Field | Stripe API Name | Type |
|---|---|---|
| `behavior` | `behavior` | `String` |
| `resumesAt` | `resumesAt` | `Integer` |

### `v02_SubscriptionsResourcePaymentSettings`

| Field | Stripe API Name | Type |
|---|---|---|
| `paymentMethodOptions` | `paymentMethodOptions` | `v02_SubscriptionsResourcePMO` |
| `paymentMethodTypes` | `paymentMethodTypes` | `List<String>` |
| `saveDefaultPaymentMethod` | `saveDefaultPaymentMethod` | `String` |

### `v02_SubscriptionsResourcePendingUpdate`

| Field | Stripe API Name | Type |
|---|---|---|
| `billingCycleAnchor` | `billingCycleAnchor` | `Integer` |
| `expiresAt` | `expiresAt` | `Integer` |
| `subscriptionItems` | `subscriptionItems` | `List<v02_SubscriptionItem>` |
| `trialEnd` | `trialEnd` | `Integer` |
| `trialFromPlan` | `trialFromPlan` | `Boolean` |

## Tax

### `v02_TaxId`

| Field | Stripe API Name | Type |
|---|---|---|
| `country` | `country` | `String` |
| `created` | `created` | `Integer` |
| `customer` | `customer` | `String` |
| `id` | `id` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `r_object` | `object` | `String` |
| `owner` | `owner` | `v02_TaxIDsOwner` |
| `type` | `type` | `String` |
| `value` | `value` | `String` |
| `verification` | `verification` | `v02_TaxIdVerification` |

### `v02_TaxIdVerification`

| Field | Stripe API Name | Type |
|---|---|---|
| `status` | `status` | `String` |
| `verifiedAddress` | `verifiedAddress` | `String` |
| `verifiedName` | `verifiedName` | `String` |

## Terminal

### `v02_TerminalReader`

| Field | Stripe API Name | Type |
|---|---|---|
| `action` | `action` | `v02_TerminalReaderResourceReaderAction` |
| `deviceSwVersion` | `device_sw_version` | `String` |
| `deviceType` | `device_type` | `String` |
| `id` | `id` | `String` |
| `ipAddress` | `ip_address` | `String` |
| `label` | `label` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `location` | `location` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `r_object` | `object` | `String` |
| `serialNumber` | `serial_number` | `String` |
| `status` | `status` | `String` |

### `v02_TerminalReaderProcSetupConfig`

| Field | Stripe API Name | Type |
|---|---|---|
| `enableCustomerCancellation` | `enableCustomerCancellation` | `Boolean` |

### `v02_TerminalReaderReaderResourceCart`

| Field | Stripe API Name | Type |
|---|---|---|
| `r_currency` | `r_currency` | `String` |
| `lineItems` | `lineItems` | `List<v02_TerminalReaderReaderResourceLineItem>` |
| `tax` | `tax` | `Integer` |
| `total` | `total` | `Integer` |

### `v02_TerminalReaderReaderResourceLineItem`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `description` | `description` | `String` |
| `quantity` | `quantity` | `Integer` |

### `v02_TerminalReaderRefundPaymentAction`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `charge` | `charge` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `paymentIntent` | `paymentIntent` | `String` |
| `reason` | `reason` | `String` |
| `refund` | `refund` | `String` |
| `refundApplicationFee` | `refundApplicationFee` | `Boolean` |
| `refundPaymentConfig` | `refundPaymentConfig` | `v02_TerminalReaderRefundPaymentConfig` |
| `reverseTransfer` | `reverseTransfer` | `Boolean` |

### `v02_TerminalReaderRefundPaymentConfig`

| Field | Stripe API Name | Type |
|---|---|---|
| `enableCustomerCancellation` | `enableCustomerCancellation` | `Boolean` |

### `v02_TerminalReaderResourceProcPiAction`

| Field | Stripe API Name | Type |
|---|---|---|
| `paymentIntent` | `paymentIntent` | `String` |
| `processConfig` | `processConfig` | `v02_TerminalReaderResourceProcessConfig` |

### `v02_TerminalReaderResourceProcSiAction`

| Field | Stripe API Name | Type |
|---|---|---|
| `generatedCard` | `generatedCard` | `String` |
| `processConfig` | `processConfig` | `v02_TerminalReaderProcSetupConfig` |
| `setupIntent` | `setupIntent` | `String` |

### `v02_TerminalReaderResourceProcessConfig`

| Field | Stripe API Name | Type |
|---|---|---|
| `enableCustomerCancellation` | `enableCustomerCancellation` | `Boolean` |
| `skipTipping` | `skipTipping` | `Boolean` |
| `tipping` | `tipping` | `v02_TerminalReaderResourceTippingConfig` |

### `v02_TerminalReaderResourceReaderAction`

| Field | Stripe API Name | Type |
|---|---|---|
| `failureCode` | `failureCode` | `String` |
| `failureMessage` | `failureMessage` | `String` |
| `processPaymentIntent` | `processPaymentIntent` | `v02_TerminalReaderResourceProcPiAction` |
| `processSetupIntent` | `processSetupIntent` | `v02_TerminalReaderResourceProcSiAction` |
| `refundPayment` | `refundPayment` | `v02_TerminalReaderRefundPaymentAction` |
| `setReaderDisplay` | `setReaderDisplay` | `v02_TerminalReaderSetReaderDisplayAction` |
| `status` | `status` | `String` |
| `type` | `type` | `String` |

### `v02_TerminalReaderResourceTippingConfig`

| Field | Stripe API Name | Type |
|---|---|---|
| `amountEligible` | `amountEligible` | `Integer` |

### `v02_TerminalReaderSetReaderDisplayAction`

| Field | Stripe API Name | Type |
|---|---|---|
| `cart` | `cart` | `v02_TerminalReaderReaderResourceCart` |
| `type` | `type` | `String` |

## Transfer

### `v02_Transfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `amountReversed` | `amount_reversed` | `Integer` |
| `balanceTransaction` | `balance_transaction` | `String` |
| `created` | `created` | `Integer` |
| `r_currency` | `currency` | `String` |
| `description` | `description` | `String` |
| `destination` | `destination` | `String` |
| `destinationPayment` | `destination_payment` | `String` |
| `id` | `id` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `metadata` | `metadata` | `v02_Metadata` |
| `r_object` | `object` | `String` |
| `reversals` | `reversals` | `v02_TransferReversalList` |
| `reversed` | `reversed` | `Boolean` |
| `sourceTransaction` | `source_transaction` | `String` |
| `sourceType` | `source_type` | `String` |
| `transferGroup` | `transfer_group` | `String` |

### `v02_TransferData`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `destination` | `destination` | `String` |

### `v02_TransferReversal`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `balanceTransaction` | `balance_transaction` | `String` |
| `created` | `created` | `Integer` |
| `r_currency` | `currency` | `String` |
| `destinationPaymentRefund` | `destination_payment_refund` | `String` |
| `id` | `id` | `String` |
| `metadata` | `metadata` | `v02_Metadata` |
| `r_object` | `object` | `String` |
| `sourceRefund` | `source_refund` | `String` |
| `transfer` | `transfer` | `String` |

### `v02_TransferSchedule`

| Field | Stripe API Name | Type |
|---|---|---|
| `delayDays` | `delayDays` | `Integer` |
| `interval` | `interval` | `String` |
| `monthlyAnchor` | `monthlyAnchor` | `Integer` |
| `weeklyAnchor` | `weeklyAnchor` | `String` |

## Treasury

### `v02_TreasuryInboundTransfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `cancelable` | `cancelable` | `Boolean` |
| `created` | `created` | `Integer` |
| `r_currency` | `currency` | `String` |
| `description` | `description` | `String` |
| `failureDetails` | `failure_details` | `v02_TresInbXfersResourceFailureDetails` |
| `financialAccount` | `financial_account` | `String` |
| `hostedRegulatoryReceiptUrl` | `hosted_regulatory_receipt_url` | `String` |
| `id` | `id` | `String` |
| `linkedFlows` | `linked_flows` | `v02_TresInbXfersInbXferLinkedFlows` |
| `livemode` | `livemode` | `Boolean` |
| `metadata` | `metadata` | `v02_Metadata` |
| `r_object` | `object` | `String` |
| `originPaymentMethod` | `origin_payment_method` | `String` |
| `originPaymentMethodDetails` | `origin_payment_method_details` | `v02_InboundTransfers` |
| `returned` | `returned` | `Boolean` |
| `statementDescriptor` | `statement_descriptor` | `String` |
| `status` | `status` | `String` |
| `statusTransitions` | `status_transitions` | `v02_TresInbXfersInbXferStatusTransitions` |
| `r_transaction` | `transaction` | `String` |

### `v02_TreasuryOutboundTransfer`

| Field | Stripe API Name | Type |
|---|---|---|
| `amount` | `amount` | `Integer` |
| `cancelable` | `cancelable` | `Boolean` |
| `created` | `created` | `Integer` |
| `r_currency` | `currency` | `String` |
| `description` | `description` | `String` |
| `destinationPaymentMethod` | `destination_payment_method` | `String` |
| `destinationPaymentMethodDetails` | `destination_payment_method_details` | `v02_OutboundTransfersPMDs` |
| `expectedArrivalDate` | `expected_arrival_date` | `Integer` |
| `financialAccount` | `financial_account` | `String` |
| `hostedRegulatoryReceiptUrl` | `hosted_regulatory_receipt_url` | `String` |
| `id` | `id` | `String` |
| `livemode` | `livemode` | `Boolean` |
| `metadata` | `metadata` | `v02_Metadata` |
| `r_object` | `object` | `String` |
| `returnedDetails` | `returned_details` | `v02_TreasuryOutboundXfersResourceRetDets` |
| `statementDescriptor` | `statement_descriptor` | `String` |
| `status` | `status` | `String` |
| `statusTransitions` | `status_transitions` | `v02_TresObXfersResourceStatusTransitions` |
| `trackingDetails` | `tracking_details` | `v02_TresObXfersObXferTrackingDetails` |
| `r_transaction` | `transaction` | `String` |

### `v02_TreasuryOutboundXfersResourceRetDets`

| Field | Stripe API Name | Type |
|---|---|---|
| `code` | `code` | `String` |
| `r_transaction` | `r_transaction` | `String` |

### `v02_TreasurySharedResourceBillingDetails`

| Field | Stripe API Name | Type |
|---|---|---|
| `address` | `address` | `v02_Address` |
| `email` | `email` | `String` |
| `name` | `name` | `String` |
