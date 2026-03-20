# Stripe Invocable Actions Reference

Auto-generated reference for all `v02_*` invocable actions in the Stripe Universal Connector AutoGen extension (2025-04-30).

## Common Parameters

Every invocable action includes these parameters. They are omitted from the per-action tables below.

| Param | Type | Required | Default | Description |
|---|---|---|---|---|
| `accountRecordId` | String | ✓ | — | Salesforce record ID of the Stripe Account (`stripeGC__Stripe_Account__c.Id`) |
| `connectAccount` | String | | — | ID of the Stripe Connected Account (for Connect platforms) |
| `idempotencyKey` | String | | — | Idempotency key for the request |
| `performDmlSaveAfterCalls` | Boolean | | `true` | Upsert Sync Log/Api Transaction records after callouts. Set `false` when chaining callouts. |
| `ignoreBillingSyncEventProcessing` | Boolean | | `true` | Prevents infinite loops from Billing Data Import event processing |

## Flow XML Usage

In Flow XML, reference these actions as:
```xml
<actionName>stripeGC__{ClassName}</actionName>
<actionType>apex</actionType>
```

---

## Resources

- [Account](#account) (1 actions)
- [AccountLinks](#accountlinks) (1 actions)
- [AccountSessions](#accountsessions) (1 actions)
- [Accounts](#accounts) (19 actions)
- [ApplicationFees](#applicationfees) (4 actions)
- [Balance](#balance) (1 actions)
- [BalanceTransactions](#balancetransactions) (2 actions)
- [BillingCreditBalance](#billingcreditbalance) (3 actions)
- [BillingPortalSessions](#billingportalsessions) (1 actions)
- [Charges](#charges) (8 actions)
- [CheckoutSessions](#checkoutsessions) (6 actions)
- [ClimateProducts](#climateproducts) (2 actions)
- [Coupons](#coupons) (5 actions)
- [CreditNotes](#creditnotes) (8 actions)
- [CustomerSessions](#customersessions) (1 actions)
- [Customers](#customers) (28 actions)
- [Events](#events) (2 actions)
- [InvoicePayments](#invoicepayments) (2 actions)
- [InvoiceRenderingTemplates](#invoicerenderingtemplates) (3 actions)
- [Invoiceitems](#invoiceitems) (5 actions)
- [Invoices](#invoices) (17 actions)
- [PaymentIntents](#paymentintents) (11 actions)
- [PaymentLinks](#paymentlinks) (5 actions)
- [PaymentMethodConfigurations](#paymentmethodconfigurations) (4 actions)
- [PaymentMethodDomains](#paymentmethoddomains) (5 actions)
- [PaymentMethods](#paymentmethods) (6 actions)
- [Payouts](#payouts) (6 actions)
- [Plans](#plans) (5 actions)
- [Prices](#prices) (5 actions)
- [Products](#products) (10 actions)
- [PromotionCodes](#promotioncodes) (4 actions)
- [Quotes](#quotes) (10 actions)
- [Refunds](#refunds) (5 actions)
- [SetupIntents](#setupintents) (7 actions)
- [SubscriptionItems](#subscriptionitems) (5 actions)
- [SubscriptionSchedules](#subscriptionschedules) (6 actions)
- [Subscriptions](#subscriptions) (8 actions)
- [TerminalReaders](#terminalreaders) (3 actions)
- [TestHelpers](#testhelpers) (2 actions)
- [TestingIssuingTransactions](#testingissuingtransactions) (1 actions)
- [Transfers](#transfers) (8 actions)
- [TreasuryInboundTransfers](#treasuryinboundtransfers) (4 actions)
- [TreasuryOutboundTransfers](#treasuryoutboundtransfers) (4 actions)

---

## Account

### `v02_GetAccount`

`GET /v1/account` → `v02_Account`

*No API-specific parameters.*

## AccountLinks

### `v02_CreateAccountLinks`

`POST /v1/account_links` → `v02_AccountLink`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `account` | `account` | `String` | ✓ |
| `type` | `type` | `String` | ✓ |
| `r_collect` | `collect` | `String` |  |
| `collectionOptions` | `collection_options` | `v02_CreateAccountLinksReqColOptions` |  |
| `refreshUrl` | `refresh_url` | `String` |  |
| `returnUrl` | `return_url` | `String` |  |

## AccountSessions

### `v02_CreateAccountSessions`

`POST /v1/account_sessions` → `v02_AccountSession`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `account` | `account` | `String` | ✓ |
| `components` | `components` | `v02_CreateAccountSessionsReqComponents` | ✓ |

## Accounts

### `v02_CreateAccounts`

`POST /v1/accounts` → `v02_Account`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `accountToken` | `account_token` | `String` |  |
| `businessProfile` | `business_profile` | `v02_CreateAccountsReqBusinessProfile` |  |
| `businessType` | `business_type` | `String` |  |
| `capabilities` | `capabilities` | `v02_CreateAccountsReqCapabilities` |  |
| `company` | `company` | `v02_CreateAccountsReqCompany` |  |
| `controller` | `controller` | `v02_CreateAccountsReqController` |  |
| `country` | `country` | `String` |  |
| `defaultCurrency` | `default_currency` | `String` |  |
| `documents` | `documents` | `v02_CreateAccountsReqDocuments` |  |
| `email` | `email` | `String` |  |
| `externalAccount` | `external_account` | `String` |  |
| `groups` | `groups` | `v02_AccountGroupMembership` |  |
| `individual` | `individual` | `v02_CreateAccountsReqIndividual` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `settings` | `settings` | `v02_CreateAccountsReqSettings` |  |
| `tosAcceptance` | `tos_acceptance` | `v02_AccountTosAcceptance` |  |
| `type` | `type` | `String` |  |

### `v02_CreateAccountsExternalAccounts`

`POST /v1/accounts/{account}/external_accounts` → `v02_ExternalAccount`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `account` | `account` | `String` | ✓ |
| `externalAccount` | `external_account` | `String` | ✓ |
| `defaultForCurrency` | `default_for_currency` | `Boolean` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |

### `v02_CreateAccountsLoginLinks`

`POST /v1/accounts/{account}/login_links` → `v02_LoginLink`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `account` | `account` | `String` | ✓ |

### `v02_CreateAccountsPersons`

`POST /v1/accounts/{account}/persons` → `v02_Person`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `account` | `account` | `String` | ✓ |
| `additionalTosAcceptances` | `additional_tos_acceptances` | `v02_CreateAccsPersonsReqAdtlTosAccpts` |  |
| `address` | `address` | `v02_Address` |  |
| `addressKana` | `address_kana` | `v02_LegalEntityJapanAddress` |  |
| `addressKanji` | `address_kanji` | `v02_LegalEntityJapanAddress` |  |
| `dob` | `dob` | `v02_LegalEntityDob` |  |
| `documents` | `documents` | `v02_CreateAccountsPersonsReqDocuments` |  |
| `email` | `email` | `String` |  |
| `firstName` | `first_name` | `String` |  |
| `firstNameKana` | `first_name_kana` | `String` |  |
| `firstNameKanji` | `first_name_kanji` | `String` |  |
| `fullNameAliases` | `full_name_aliases (List<String>)` | `List<String>` |  |
| `gender` | `gender` | `String` |  |
| `idNumber` | `id_number` | `String` |  |
| `idNumberSecondary` | `id_number_secondary` | `String` |  |
| `lastName` | `last_name` | `String` |  |
| `lastNameKana` | `last_name_kana` | `String` |  |
| `lastNameKanji` | `last_name_kanji` | `String` |  |
| `maidenName` | `maiden_name` | `String` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `nationality` | `nationality` | `String` |  |
| `personToken` | `person_token` | `String` |  |
| `phone` | `phone` | `String` |  |
| `politicalExposure` | `political_exposure` | `String` |  |
| `registeredAddress` | `registered_address` | `v02_Address` |  |
| `relationship` | `relationship` | `v02_PersonRelationship` |  |
| `ssnLast4` | `ssn_last_4` | `String` |  |
| `usCfpbData` | `us_cfpb_data` | `v02_CreateAccountsPersonsReqUsCfpbData` |  |
| `verification` | `verification` | `v02_CreateAccountsPersonsReqVerification` |  |

### `v02_DeleteAccounts`

`DELETE /v1/accounts/{account}` → `v02_DeletedAccount`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `account` | `account` | `String` | ✓ |

### `v02_DeleteAccountsExternalAccounts`

`DELETE /v1/accounts/{account}/external_accounts/{id}` → `v02_DeletedExternalAccount`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `account` | `account` | `String` | ✓ |
| `id` | `id` | `String` | ✓ |

### `v02_DeleteAccountsPersons`

`DELETE /v1/accounts/{account}/persons/{person}` → `v02_DeletedPerson`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `account` | `account` | `String` | ✓ |
| `person` | `person` | `String` | ✓ |

### `v02_GetAccounts`

`GET /v1/accounts/{account}` → `v02_Account`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `account` | `account` | `String` | ✓ |

### `v02_GetAccountsCapabilities`

`GET /v1/accounts/{account}/capabilities/{capability}` → `v02_Capability`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `account` | `account` | `String` | ✓ |
| `capability` | `capability` | `String` | ✓ |

### `v02_GetAccountsExternalAccounts`

`GET /v1/accounts/{account}/external_accounts/{id}` → `v02_ExternalAccount`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `account` | `account` | `String` | ✓ |
| `id` | `id` | `String` | ✓ |

### `v02_GetAccountsPersons`

`GET /v1/accounts/{account}/persons/{person}` → `v02_Person`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `account` | `account` | `String` | ✓ |
| `person` | `person` | `String` | ✓ |

### `v02_ListAccounts`

`GET /v1/accounts` → `v02_AccountList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `created` | `created` | `v02_ListCreatedParameter` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_ListAccountsCapabilities`

`GET /v1/accounts/{account}/capabilities` → `v02_ListAccountCapability`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `account` | `account` | `String` | ✓ |

### `v02_ListAccountsExternalAccounts`

`GET /v1/accounts/{account}/external_accounts` → `v02_ExternalAccountList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `account` | `account` | `String` | ✓ |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `r_object` | `object` | `String` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_ListAccountsPersons`

`GET /v1/accounts/{account}/persons` → `v02_PersonList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `account` | `account` | `String` | ✓ |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `relationship` | `relationship` | `List<v02_AdditionalString>` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_UpdateAccounts`

`POST /v1/accounts/{account}` → `v02_Account`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `account` | `account` | `String` | ✓ |
| `accountToken` | `account_token` | `String` |  |
| `businessProfile` | `business_profile` | `v02_UpdateAccountsReqBusinessProfile` |  |
| `businessType` | `business_type` | `String` |  |
| `capabilities` | `capabilities` | `v02_UpdateAccountsReqCapabilities` |  |
| `company` | `company` | `v02_UpdateAccountsReqCompany` |  |
| `defaultCurrency` | `default_currency` | `String` |  |
| `documents` | `documents` | `v02_UpdateAccountsReqDocuments` |  |
| `email` | `email` | `String` |  |
| `externalAccount` | `external_account` | `String` |  |
| `groups` | `groups` | `v02_AccountGroupMembership` |  |
| `individual` | `individual` | `v02_UpdateAccountsReqIndividual` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `settings` | `settings` | `v02_UpdateAccountsReqSettings` |  |
| `tosAcceptance` | `tos_acceptance` | `v02_AccountTosAcceptance` |  |

### `v02_UpdateAccountsCapabilities`

`POST /v1/accounts/{account}/capabilities/{capability}` → `v02_Capability`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `account` | `account` | `String` | ✓ |
| `capability` | `capability` | `String` | ✓ |
| `requested` | `requested` | `Boolean` |  |

### `v02_UpdateAccountsExternalAccounts`

`POST /v1/accounts/{account}/external_accounts/{id}` → `v02_ExternalAccount`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `account` | `account` | `String` | ✓ |
| `id` | `id` | `String` | ✓ |
| `accountHolderName` | `account_holder_name` | `String` |  |
| `accountHolderType` | `account_holder_type` | `String` |  |
| `accountType` | `account_type` | `String` |  |
| `addressCity` | `address_city` | `String` |  |
| `addressCountry` | `address_country` | `String` |  |
| `addressLine1` | `address_line1` | `String` |  |
| `addressLine2` | `address_line2` | `String` |  |
| `addressState` | `address_state` | `String` |  |
| `addressZip` | `address_zip` | `String` |  |
| `defaultForCurrency` | `default_for_currency` | `Boolean` |  |
| `documents` | `documents` | `v02_UpdateAccsExternalAccsReqDocs` |  |
| `expMonth` | `exp_month` | `String` |  |
| `expYear` | `exp_year` | `String` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `name` | `name` | `String` |  |

### `v02_UpdateAccountsPersons`

`POST /v1/accounts/{account}/persons/{person}` → `v02_Person`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `account` | `account` | `String` | ✓ |
| `person` | `person` | `String` | ✓ |
| `additionalTosAcceptances` | `additional_tos_acceptances` | `v02_UpdateAccsPersonsReqAdtlTosAccpts` |  |
| `address` | `address` | `v02_Address` |  |
| `addressKana` | `address_kana` | `v02_LegalEntityJapanAddress` |  |
| `addressKanji` | `address_kanji` | `v02_LegalEntityJapanAddress` |  |
| `dob` | `dob` | `v02_LegalEntityDob` |  |
| `documents` | `documents` | `v02_UpdateAccountsPersonsReqDocuments` |  |
| `email` | `email` | `String` |  |
| `firstName` | `first_name` | `String` |  |
| `firstNameKana` | `first_name_kana` | `String` |  |
| `firstNameKanji` | `first_name_kanji` | `String` |  |
| `fullNameAliases` | `full_name_aliases (List<String>)` | `List<String>` |  |
| `gender` | `gender` | `String` |  |
| `idNumber` | `id_number` | `String` |  |
| `idNumberSecondary` | `id_number_secondary` | `String` |  |
| `lastName` | `last_name` | `String` |  |
| `lastNameKana` | `last_name_kana` | `String` |  |
| `lastNameKanji` | `last_name_kanji` | `String` |  |
| `maidenName` | `maiden_name` | `String` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `nationality` | `nationality` | `String` |  |
| `personToken` | `person_token` | `String` |  |
| `phone` | `phone` | `String` |  |
| `politicalExposure` | `political_exposure` | `String` |  |
| `registeredAddress` | `registered_address` | `v02_Address` |  |
| `relationship` | `relationship` | `v02_PersonRelationship` |  |
| `ssnLast4` | `ssn_last_4` | `String` |  |
| `usCfpbData` | `us_cfpb_data` | `v02_UpdateAccountsPersonsReqUsCfpbData` |  |
| `verification` | `verification` | `v02_UpdateAccountsPersonsReqVerification` |  |

## ApplicationFees

### `v02_CreateApplicationFeesRefunds`

`POST /v1/application_fees/{id}/refunds` → `v02_FeeRefund`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `id` | `id` | `String` | ✓ |
| `amount` | `amount` | `Integer` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |

### `v02_GetApplicationFeesRefunds`

`GET /v1/application_fees/{fee}/refunds/{id}` → `v02_FeeRefund`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `fee` | `fee` | `String` | ✓ |
| `id` | `id` | `String` | ✓ |

### `v02_ListApplicationFeesRefunds`

`GET /v1/application_fees/{id}/refunds` → `v02_FeeRefundList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `id` | `id` | `String` | ✓ |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_UpdateApplicationFeesRefunds`

`POST /v1/application_fees/{fee}/refunds/{id}` → `v02_FeeRefund`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `fee` | `fee` | `String` | ✓ |
| `id` | `id` | `String` | ✓ |
| `metadata` | `metadata` | `v02_Metadata` |  |

## Balance

### `v02_GetBalance`

`GET /v1/balance` → `v02_Balance`

*No API-specific parameters.*

## BalanceTransactions

### `v02_GetBalanceTransactions`

`GET /v1/balance_transactions/{id}` → `v02_BalanceTransaction`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `id` | `id` | `String` | ✓ |

### `v02_ListBalanceTransactions`

`GET /v1/balance_transactions` → `v02_BalanceTransactionsList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `created` | `created` | `v02_ListCreatedParameter` |  |
| `r_currency` | `currency` | `String` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `payout` | `payout` | `String` |  |
| `source` | `source` | `String` |  |
| `startingAfter` | `starting_after` | `String` |  |
| `type` | `type` | `String` |  |

## BillingCreditBalance

### `v02_GetBillingCreditBalanceSummary`

`GET /v1/billing/credit_balance_summary` → `v02_BillingCreditBalanceSummary`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |
| `filter` | `filter` | `List<v02_AdditionalString>` | ✓ |

### `v02_GetBillingCreditBalanceTransactions`

`GET /v1/billing/credit_balance_transactions/{id}` → `v02_BillingCreditBalanceTransaction`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `id` | `id` | `String` | ✓ |

### `v02_ListBillingCreditBalanceTransactions`

`GET /v1/billing/credit_balance_transactions` → `v02_BillingCreditGrantsBalTrxList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |
| `creditGrant` | `credit_grant` | `String` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |

## BillingPortalSessions

### `v02_CreateBillingPortalSessions`

`POST /v1/billing_portal/sessions` → `v02_BillingPortalSession`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |
| `configuration` | `configuration` | `String` |  |
| `flowData` | `flow_data` | `v02_CreateBpSessReqFlowData` |  |
| `locale` | `locale` | `String` |  |
| `onBehalfOf` | `on_behalf_of` | `String` |  |
| `returnUrl` | `return_url` | `String` |  |

## Charges

### `v02_CreateCharges`

`POST /v1/charges` → `v02_Charge`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `amount` | `amount` | `Integer` |  |
| `applicationFee` | `application_fee` | `Integer` |  |
| `applicationFeeAmount` | `application_fee_amount` | `Integer` |  |
| `capture` | `capture` | `Boolean` |  |
| `r_currency` | `currency` | `String` |  |
| `customer` | `customer` | `String` |  |
| `description` | `description` | `String` |  |
| `destination` | `destination` | `v02_CreateChargesReqDestination` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `onBehalfOf` | `on_behalf_of` | `String` |  |
| `radarOptions` | `radar_options` | `v02_RadarRadarOptions` |  |
| `receiptEmail` | `receipt_email` | `String` |  |
| `shipping` | `shipping` | `v02_CreateChargesReqShipping` |  |
| `source` | `source` | `String` |  |
| `statementDescriptor` | `statement_descriptor` | `String` |  |
| `statementDescriptorSuffix` | `statement_descriptor_suffix` | `String` |  |
| `transferData` | `transfer_data` | `v02_CreateChargesReqTransferData` |  |
| `transferGroup` | `transfer_group` | `String` |  |

### `v02_GetCharges`

`GET /v1/charges/{charge}` → `v02_Charge`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `charge` | `charge` | `String` | ✓ |

### `v02_GetChargesRefunds`

`GET /v1/charges/{charge}/refunds/{refund}` → `v02_Refund`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `charge` | `charge` | `String` | ✓ |
| `refund` | `refund` | `String` | ✓ |

### `v02_GetChargesSearch`

`GET /v1/charges/search` → `v02_ChargeSearchResult`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `query` | `query` | `String` | ✓ |
| `r_limit` | `limit` | `Integer` |  |
| `page` | `page` | `String` |  |

### `v02_ListCharges`

`GET /v1/charges` → `v02_ChargeList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `created` | `created` | `v02_ListCreatedParameter` |  |
| `customer` | `customer` | `String` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `paymentIntent` | `payment_intent` | `String` |  |
| `startingAfter` | `starting_after` | `String` |  |
| `transferGroup` | `transfer_group` | `String` |  |

### `v02_ListChargesRefunds`

`GET /v1/charges/{charge}/refunds` → `v02_RefundList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `charge` | `charge` | `String` | ✓ |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_PostChargesCapture`

`POST /v1/charges/{charge}/capture` → `v02_Charge`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `charge` | `charge` | `String` | ✓ |
| `amount` | `amount` | `Integer` |  |
| `applicationFee` | `application_fee` | `Integer` |  |
| `applicationFeeAmount` | `application_fee_amount` | `Integer` |  |
| `receiptEmail` | `receipt_email` | `String` |  |
| `statementDescriptor` | `statement_descriptor` | `String` |  |
| `statementDescriptorSuffix` | `statement_descriptor_suffix` | `String` |  |
| `transferData` | `transfer_data` | `v02_PostChargesCaptureReqTransferData` |  |
| `transferGroup` | `transfer_group` | `String` |  |

### `v02_UpdateCharges`

`POST /v1/charges/{charge}` → `v02_Charge`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `charge` | `charge` | `String` | ✓ |
| `customer` | `customer` | `String` |  |
| `description` | `description` | `String` |  |
| `fraudDetails` | `fraud_details` | `v02_UpdateChargesReqFraudDetails` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `receiptEmail` | `receipt_email` | `String` |  |
| `shipping` | `shipping` | `v02_UpdateChargesReqShipping` |  |
| `transferGroup` | `transfer_group` | `String` |  |

## CheckoutSessions

### `v02_CreateCheckoutSessions`

`POST /v1/checkout/sessions` → `v02_CheckoutSession`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `adaptivePricing` | `adaptive_pricing` | `v02_PaymentPagesCOSAdaptivePricing` |  |
| `afterExpiration` | `after_expiration` | `v02_CreateCheckoutSessionsReqAfterExp` |  |
| `allowPromotionCodes` | `allow_promotion_codes` | `Boolean` |  |
| `automaticTax` | `automatic_tax` | `v02_CreateCOSsReqAutomaticTax` |  |
| `billingAddressCollection` | `billing_address_collection` | `String` |  |
| `cancelUrl` | `cancel_url` | `String` |  |
| `clientReferenceId` | `client_reference_id` | `String` |  |
| `consentCollection` | `consent_collection` | `v02_CreateCOSsReqConsentCollection` |  |
| `r_currency` | `currency` | `String` |  |
| `customFields` | `custom_fields` | `List<v02_CreateCheckoutSessionsReqCustomField>` |  |
| `customText` | `custom_text` | `v02_CreateCheckoutSessionsReqCustomText` |  |
| `customer` | `customer` | `String` |  |
| `customerCreation` | `customer_creation` | `String` |  |
| `customerEmail` | `customer_email` | `String` |  |
| `customerUpdate` | `customer_update` | `v02_CreateCOSsReqCustomerUpdate` |  |
| `discounts` | `discounts` | `List<v02_CreateCheckoutSessionsReqDiscount>` |  |
| `expiresAt` | `expires_at` | `Integer` |  |
| `invoiceCreation` | `invoice_creation` | `v02_CreateCheckoutSessionsReqInvCrtn` |  |
| `lineItems` | `line_items` | `List<v02_CreateCheckoutSessionsReqLineItem>` |  |
| `locale` | `locale` | `String` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `mode` | `mode` | `String` |  |
| `optionalItems` | `optional_items` | `List<v02_CreateCOSsReqOptionalItem>` |  |
| `paymentIntentData` | `payment_intent_data` | `v02_CreateCheckoutSessionsReqPiData` |  |
| `paymentMethodCollection` | `payment_method_collection` | `String` |  |
| `paymentMethodConfiguration` | `payment_method_configuration` | `String` |  |
| `paymentMethodData` | `payment_method_data` | `v02_CreateCOSsReqPaymentMethodData` |  |
| `paymentMethodOptions` | `payment_method_options` | `v02_CreateCheckoutSessionsReqPMO` |  |
| `paymentMethodTypes` | `payment_method_types (List<String>)` | `List<String>` |  |
| `permissions` | `permissions` | `v02_PaymentPagesCOSPermissions` |  |
| `phoneNumberCollection` | `phone_number_collection` | `v02_PaymentPagesCOSPhoneNumberCollection` |  |
| `redirectOnCompletion` | `redirect_on_completion` | `String` |  |
| `returnUrl` | `return_url` | `String` |  |
| `savedPaymentMethodOptions` | `saved_payment_method_options` | `v02_CreateCheckoutSessionsReqSavedPMO` |  |
| `setupIntentData` | `setup_intent_data` | `v02_CreateCheckoutSessionsReqSiData` |  |
| `shippingAddressCollection` | `shipping_address_collection` | `v02_PaymentPagesCOSShippingAddressCol` |  |
| `shippingOptions` | `shipping_options` | `List<v02_CreateCOSsReqShippingOption>` |  |
| `submitType` | `submit_type` | `String` |  |
| `subscriptionData` | `subscription_data` | `v02_CreateCheckoutSessionsReqSubData` |  |
| `successUrl` | `success_url` | `String` |  |
| `taxIdCollection` | `tax_id_collection` | `v02_PaymentPagesCOSTaxIdCollection` |  |
| `uiMode` | `ui_mode` | `String` |  |
| `walletOptions` | `wallet_options` | `v02_CreateCOSsReqWalletOptions` |  |

### `v02_GetCheckoutSessions`

`GET /v1/checkout/sessions/{session}` → `v02_CheckoutSession`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `session` | `session` | `String` | ✓ |

### `v02_ListCheckoutSessions`

`GET /v1/checkout/sessions` → `v02_PaymentPagesCheckoutSessionList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `created` | `created` | `v02_ListCreatedParameter` |  |
| `customer` | `customer` | `String` |  |
| `customerDetails` | `customer_details` | `List<v02_AdditionalString>` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `paymentIntent` | `payment_intent` | `String` |  |
| `paymentLink` | `payment_link` | `String` |  |
| `startingAfter` | `starting_after` | `String` |  |
| `status` | `status` | `String` |  |
| `subscription` | `subscription` | `String` |  |

### `v02_ListCheckoutSessionsLineItems`

`GET /v1/checkout/sessions/{session}/line_items` → `v02_PaymentPagesCOSListLineItems`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `session` | `session` | `String` | ✓ |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_PostCheckoutSessionsExpire`

`POST /v1/checkout/sessions/{session}/expire` → `v02_CheckoutSession`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `session` | `session` | `String` | ✓ |

### `v02_UpdateCheckoutSessions`

`POST /v1/checkout/sessions/{session}` → `v02_CheckoutSession`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `session` | `session` | `String` | ✓ |
| `collectedInformation` | `collected_information` | `v02_UpdateCOSsReqCollectedInformation` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `shippingOptions` | `shipping_options` | `List<v02_UpdateCOSsReqShippingOption>` |  |

## ClimateProducts

### `v02_GetClimateProducts`

`GET /v1/climate/products/{product}` → `v02_ClimateProduct`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `product` | `product` | `String` | ✓ |

### `v02_ListClimateProducts`

`GET /v1/climate/products` → `v02_ClimateRemovalsProductsList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |

## Coupons

### `v02_CreateCoupons`

`POST /v1/coupons` → `v02_Coupon`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `amountOff` | `amount_off` | `Integer` |  |
| `appliesTo` | `applies_to` | `v02_CouponAppliesTo` |  |
| `r_currency` | `currency` | `String` |  |
| `currencyOptions` | `currency_options` | `v02_CouponCurrencyOptions` |  |
| `duration` | `duration` | `String` |  |
| `durationInMonths` | `duration_in_months` | `Integer` |  |
| `id` | `id` | `String` |  |
| `maxRedemptions` | `max_redemptions` | `Integer` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `name` | `name` | `String` |  |
| `percentOff` | `percent_off` | `Double` |  |
| `redeemBy` | `redeem_by` | `Integer` |  |

### `v02_DeleteCoupons`

`DELETE /v1/coupons/{coupon}` → `v02_DeletedCoupon`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `coupon` | `coupon` | `String` | ✓ |

### `v02_GetCoupons`

`GET /v1/coupons/{coupon}` → `v02_Coupon`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `coupon` | `coupon` | `String` | ✓ |

### `v02_ListCoupons`

`GET /v1/coupons` → `v02_CouponsResourceCouponList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `created` | `created` | `v02_ListCreatedParameter` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_UpdateCoupons`

`POST /v1/coupons/{coupon}` → `v02_Coupon`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `coupon` | `coupon` | `String` | ✓ |
| `currencyOptions` | `currency_options` | `v02_CouponCurrencyOptions1` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `name` | `name` | `String` |  |

## CreditNotes

### `v02_CreateCreditNotes`

`POST /v1/credit_notes` → `v02_CreditNote`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `invoice` | `invoice` | `String` | ✓ |
| `amount` | `amount` | `Integer` |  |
| `creditAmount` | `credit_amount` | `Integer` |  |
| `effectiveAt` | `effective_at` | `Integer` |  |
| `emailType` | `email_type` | `String` |  |
| `lines` | `lines` | `List<v02_CreateCreditNotesReqLine>` |  |
| `memo` | `memo` | `String` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `outOfBandAmount` | `out_of_band_amount` | `Integer` |  |
| `reason` | `reason` | `String` |  |
| `refundAmount` | `refund_amount` | `Integer` |  |
| `refunds` | `refunds` | `List<v02_CreateCreditNotesReqRefund>` |  |
| `shippingCost` | `shipping_cost` | `v02_CreateCreditNotesReqShippingCost` |  |

### `v02_GetCreditNotes`

`GET /v1/credit_notes/{id}` → `v02_CreditNote`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `id` | `id` | `String` | ✓ |

### `v02_GetCreditNotesPreview`

`GET /v1/credit_notes/preview` → `v02_CreditNote`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `invoice` | `invoice` | `String` | ✓ |
| `amount` | `amount` | `Integer` |  |
| `creditAmount` | `credit_amount` | `Integer` |  |
| `effectiveAt` | `effective_at` | `Integer` |  |
| `emailType` | `email_type` | `String` |  |
| `lines` | `lines` | `List<v02_CreditNoteLineItemParams>` |  |
| `memo` | `memo` | `String` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `outOfBandAmount` | `out_of_band_amount` | `Integer` |  |
| `reason` | `reason` | `String` |  |
| `refundAmount` | `refund_amount` | `Integer` |  |
| `refunds` | `refunds` | `List<v02_CreditNoteRefundParams>` |  |
| `shippingCost` | `shipping_cost` | `List<v02_AdditionalString>` |  |

### `v02_GetCreditNotesPreviewLines`

`GET /v1/credit_notes/preview/lines` → `v02_CreditNoteLinesList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `invoice` | `invoice` | `String` | ✓ |
| `amount` | `amount` | `Integer` |  |
| `creditAmount` | `credit_amount` | `Integer` |  |
| `effectiveAt` | `effective_at` | `Integer` |  |
| `emailType` | `email_type` | `String` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `lines` | `lines` | `List<v02_CreditNoteLineItemParams>` |  |
| `memo` | `memo` | `String` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `outOfBandAmount` | `out_of_band_amount` | `Integer` |  |
| `reason` | `reason` | `String` |  |
| `refundAmount` | `refund_amount` | `Integer` |  |
| `refunds` | `refunds` | `List<v02_CreditNoteRefundParams>` |  |
| `shippingCost` | `shipping_cost` | `List<v02_AdditionalString>` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_ListCreditNotes`

`GET /v1/credit_notes` → `v02_CreditNotesList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `created` | `created` | `v02_ListCreatedParameter` |  |
| `customer` | `customer` | `String` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `invoice` | `invoice` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_ListCreditNotesLines`

`GET /v1/credit_notes/{credit_note}/lines` → `v02_CreditNoteLinesList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `creditNote` | `credit_note` | `String` | ✓ |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_PostCreditNotesVoid`

`POST /v1/credit_notes/{id}/void` → `v02_CreditNote`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `id` | `id` | `String` | ✓ |

### `v02_UpdateCreditNotes`

`POST /v1/credit_notes/{id}` → `v02_CreditNote`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `id` | `id` | `String` | ✓ |
| `memo` | `memo` | `String` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |

## CustomerSessions

### `v02_CreateCustomerSessions`

`POST /v1/customer_sessions` → `v02_CustomerSession`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `components` | `components` | `v02_CreateCustomerSessionsReqComponents` | ✓ |
| `customer` | `customer` | `String` | ✓ |

## Customers

### `v02_CreateCustomers`

`POST /v1/customers` → `v02_Customer`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `address` | `address` | `v02_Address` |  |
| `balance` | `balance` | `Integer` |  |
| `cashBalance` | `cash_balance` | `v02_CreateCustomersReqCashBalance` |  |
| `description` | `description` | `String` |  |
| `email` | `email` | `String` |  |
| `invoicePrefix` | `invoice_prefix` | `String` |  |
| `invoiceSettings` | `invoice_settings` | `v02_CreateCustomersReqInvoiceSettings` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `name` | `name` | `String` |  |
| `nextInvoiceSequence` | `next_invoice_sequence` | `Integer` |  |
| `paymentMethod` | `payment_method` | `String` |  |
| `phone` | `phone` | `String` |  |
| `preferredLocales` | `preferred_locales (List<String>)` | `List<String>` |  |
| `shipping` | `shipping` | `v02_CreateCustomersReqShipping` |  |
| `source` | `source` | `String` |  |
| `tax` | `tax` | `v02_CreateCustomersReqTax` |  |
| `taxExempt` | `tax_exempt` | `String` |  |
| `taxIdData` | `tax_id_data` | `List<v02_CreateCustomersReqTaxIdData>` |  |
| `testClock` | `test_clock` | `String` |  |
| `validate` | `validate` | `Boolean` |  |

### `v02_CreateCustomersBalanceTransactions`

`POST /v1/customers/{customer}/balance_transactions` → `v02_CustomerBalanceTransaction`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |
| `amount` | `amount` | `Integer` | ✓ |
| `r_currency` | `currency` | `String` | ✓ |
| `description` | `description` | `String` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |

### `v02_CreateCustomersSources`

`POST /v1/customers/{customer}/sources` → `v02_PaymentSource`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |
| `source` | `source` | `String` | ✓ |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `validate` | `validate` | `Boolean` |  |

### `v02_CreateCustomersTaxIds`

`POST /v1/customers/{customer}/tax_ids` → `v02_TaxId`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |
| `type` | `type` | `String` | ✓ |
| `value` | `value` | `String` | ✓ |

### `v02_DeleteCustomers`

`DELETE /v1/customers/{customer}` → `v02_DeletedCustomer`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |

### `v02_DeleteCustomersDiscount`

`DELETE /v1/customers/{customer}/discount` → `v02_DeletedDiscount`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |

### `v02_DeleteCustomersSources`

`DELETE /v1/customers/{customer}/sources/{id}` → `v02_DeleteCustomersSources200Response`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |
| `id` | `id` | `String` | ✓ |

### `v02_DeleteCustomersTaxIds`

`DELETE /v1/customers/{customer}/tax_ids/{id}` → `v02_DeletedTaxId`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |
| `id` | `id` | `String` | ✓ |

### `v02_GetCustomers`

`GET /v1/customers/{customer}` → `v02_GetCustomers200Response`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |

### `v02_GetCustomersBalanceTransactions`

`GET /v1/customers/{customer}/balance_transactions/{transaction}` → `v02_CustomerBalanceTransaction`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |
| `r_transaction` | `transaction` | `String` | ✓ |

### `v02_GetCustomersCashBalance`

`GET /v1/customers/{customer}/cash_balance` → `v02_CashBalance`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |

### `v02_GetCustomersCashBalanceTransactions`

`GET /v1/customers/{customer}/cash_balance_transactions/{transaction}` → `v02_CustomerCashBalanceTransaction`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |
| `r_transaction` | `transaction` | `String` | ✓ |

### `v02_GetCustomersPaymentMethods`

`GET /v1/customers/{customer}/payment_methods/{payment_method}` → `v02_PaymentMethod`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |
| `paymentMethod` | `payment_method` | `String` | ✓ |

### `v02_GetCustomersSearch`

`GET /v1/customers/search` → `v02_CustomerSearchResult`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `query` | `query` | `String` | ✓ |
| `r_limit` | `limit` | `Integer` |  |
| `page` | `page` | `String` |  |

### `v02_GetCustomersSources`

`GET /v1/customers/{customer}/sources/{id}` → `v02_PaymentSource`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |
| `id` | `id` | `String` | ✓ |

### `v02_GetCustomersTaxIds`

`GET /v1/customers/{customer}/tax_ids/{id}` → `v02_TaxId`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |
| `id` | `id` | `String` | ✓ |

### `v02_ListCustomers`

`GET /v1/customers` → `v02_CustomerResourceCustomerList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `created` | `created` | `v02_ListCreatedParameter` |  |
| `email` | `email` | `String` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |
| `testClock` | `test_clock` | `String` |  |

### `v02_ListCustomersBalanceTransactions`

`GET /v1/customers/{customer}/balance_transactions` → `v02_CustomerBalanceTransactionList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_ListCustomersCashBalanceTransactions`

`GET /v1/customers/{customer}/cash_balance_transactions` → `v02_CustomerCashBalanceTransactionList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_ListCustomersPaymentMethods`

`GET /v1/customers/{customer}/payment_methods` → `v02_CustomerPaymentMethodResourceList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |
| `allowRedisplay` | `allow_redisplay` | `String` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |
| `type` | `type` | `String` |  |

### `v02_ListCustomersSources`

`GET /v1/customers/{customer}/sources` → `v02_ApmsSourcesSourceList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `r_object` | `object` | `String` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_ListCustomersTaxIds`

`GET /v1/customers/{customer}/tax_ids` → `v02_TaxIDsList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_PostCustomersFundingInstructions`

`POST /v1/customers/{customer}/funding_instructions` → `v02_FundingInstructions`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |
| `bankTransfer` | `bank_transfer` | `v02_PostCustomersFundingInsReqBankXfer` | ✓ |
| `r_currency` | `currency` | `String` | ✓ |
| `fundingType` | `funding_type` | `String` | ✓ |

### `v02_PostCustomersSourcesVerify`

`POST /v1/customers/{customer}/sources/{id}/verify` → `v02_BankAccount`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |
| `id` | `id` | `String` | ✓ |
| `amounts` | `amounts (List<Integer>)` | `List<Integer>` |  |

### `v02_UpdateCustomers`

`POST /v1/customers/{customer}` → `v02_Customer`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |
| `address` | `address` | `v02_Address` |  |
| `balance` | `balance` | `Integer` |  |
| `cashBalance` | `cash_balance` | `v02_UpdateCustomersReqCashBalance` |  |
| `defaultSource` | `default_source` | `String` |  |
| `description` | `description` | `String` |  |
| `email` | `email` | `String` |  |
| `invoicePrefix` | `invoice_prefix` | `String` |  |
| `invoiceSettings` | `invoice_settings` | `v02_UpdateCustomersReqInvoiceSettings` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `name` | `name` | `String` |  |
| `nextInvoiceSequence` | `next_invoice_sequence` | `Integer` |  |
| `phone` | `phone` | `String` |  |
| `preferredLocales` | `preferred_locales (List<String>)` | `List<String>` |  |
| `shipping` | `shipping` | `v02_UpdateCustomersReqShipping` |  |
| `source` | `source` | `String` |  |
| `tax` | `tax` | `v02_UpdateCustomersReqTax` |  |
| `taxExempt` | `tax_exempt` | `String` |  |
| `validate` | `validate` | `Boolean` |  |

### `v02_UpdateCustomersBalanceTransactions`

`POST /v1/customers/{customer}/balance_transactions/{transaction}` → `v02_CustomerBalanceTransaction`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |
| `r_transaction` | `transaction` | `String` | ✓ |
| `description` | `description` | `String` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |

### `v02_UpdateCustomersCashBalance`

`POST /v1/customers/{customer}/cash_balance` → `v02_CashBalance`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |
| `settings` | `settings` | `v02_UpdateCustomersCBalReqSettings` |  |

### `v02_UpdateCustomersSources`

`POST /v1/customers/{customer}/sources/{id}` → `v02_UpdateCustomersSources200Response`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |
| `id` | `id` | `String` | ✓ |
| `accountHolderName` | `account_holder_name` | `String` |  |
| `accountHolderType` | `account_holder_type` | `String` |  |
| `addressCity` | `address_city` | `String` |  |
| `addressCountry` | `address_country` | `String` |  |
| `addressLine1` | `address_line1` | `String` |  |
| `addressLine2` | `address_line2` | `String` |  |
| `addressState` | `address_state` | `String` |  |
| `addressZip` | `address_zip` | `String` |  |
| `expMonth` | `exp_month` | `String` |  |
| `expYear` | `exp_year` | `String` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `name` | `name` | `String` |  |
| `owner` | `owner` | `v02_UpdateCustomersSourcesReqOwner` |  |

## Events

### `v02_GetEvents`

`GET /v1/events/{id}` → `v02_Event`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `id` | `id` | `String` | ✓ |

### `v02_ListEvents`

`GET /v1/events` → `v02_NotificationEventList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `created` | `created` | `v02_ListCreatedParameter` |  |
| `deliverySuccess` | `delivery_success` | `Boolean` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |
| `type` | `type` | `String` |  |
| `types` | `types (List<String>)` | `List<String>` |  |

## InvoicePayments

### `v02_GetInvoicePayments`

`GET /v1/invoice_payments/{invoice_payment}` → `v02_InvoicePayment`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `invoicePayment` | `invoice_payment` | `String` | ✓ |

### `v02_ListInvoicePayments`

`GET /v1/invoice_payments` → `v02_InvoicesPaymentsListInvoicePayments`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `endingBefore` | `ending_before` | `String` |  |
| `invoice` | `invoice` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `payment` | `payment` | `List<v02_AdditionalString>` |  |
| `startingAfter` | `starting_after` | `String` |  |
| `status` | `status` | `String` |  |

## InvoiceRenderingTemplates

### `v02_GetInvoiceRenderingTemplates`

`GET /v1/invoice_rendering_templates/{template}` → `v02_InvoiceRenderingTemplate`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `template` | `template` | `String` | ✓ |
| `version` | `version` | `Integer` |  |

### `v02_ListInvoiceRenderingTemplates`

`GET /v1/invoice_rendering_templates` → `v02_InvoiceRenderingTemplatesList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |
| `status` | `status` | `String` |  |

### `v02_PostInvoiceRenderingTemplatesArchive`

`POST /v1/invoice_rendering_templates/{template}/archive` → `v02_InvoiceRenderingTemplate`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `template` | `template` | `String` | ✓ |

## Invoiceitems

### `v02_CreateInvoiceitems`

`POST /v1/invoiceitems` → `v02_Invoiceitem`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |
| `amount` | `amount` | `Integer` |  |
| `r_currency` | `currency` | `String` |  |
| `description` | `description` | `String` |  |
| `discountable` | `discountable` | `Boolean` |  |
| `discounts` | `discounts` | `List<v02_CreateInvoiceitemsReqDiscount>` |  |
| `invoice` | `invoice` | `String` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `period` | `period` | `v02_InvoiceLineItemPeriod` |  |
| `priceData` | `price_data` | `v02_CreateInvoiceitemsReqPriceData` |  |
| `pricing` | `pricing` | `v02_CreateInvoiceitemsReqPricing` |  |
| `quantity` | `quantity` | `Integer` |  |
| `subscription` | `subscription` | `String` |  |
| `taxBehavior` | `tax_behavior` | `String` |  |
| `taxCode` | `tax_code` | `String` |  |
| `taxRates` | `tax_rates (List<String>)` | `List<String>` |  |
| `unitAmountDecimal` | `unit_amount_decimal` | `String` |  |

### `v02_DeleteInvoiceitems`

`DELETE /v1/invoiceitems/{invoiceitem}` → `v02_DeletedInvoiceitem`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `invoiceitem` | `invoiceitem` | `String` | ✓ |

### `v02_GetInvoiceitems`

`GET /v1/invoiceitems/{invoiceitem}` → `v02_Invoiceitem`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `invoiceitem` | `invoiceitem` | `String` | ✓ |

### `v02_ListInvoiceitems`

`GET /v1/invoiceitems` → `v02_InvoicesItemsList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `created` | `created` | `v02_ListCreatedParameter` |  |
| `customer` | `customer` | `String` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `invoice` | `invoice` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `pending` | `pending` | `Boolean` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_UpdateInvoiceitems`

`POST /v1/invoiceitems/{invoiceitem}` → `v02_Invoiceitem`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `invoiceitem` | `invoiceitem` | `String` | ✓ |
| `amount` | `amount` | `Integer` |  |
| `description` | `description` | `String` |  |
| `discountable` | `discountable` | `Boolean` |  |
| `discounts` | `discounts` | `List<v02_UpdateInvoiceitemsReqDiscount>` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `period` | `period` | `v02_InvoiceLineItemPeriod` |  |
| `priceData` | `price_data` | `v02_UpdateInvoiceitemsReqPriceData` |  |
| `pricing` | `pricing` | `v02_UpdateInvoiceitemsReqPricing` |  |
| `quantity` | `quantity` | `Integer` |  |
| `taxBehavior` | `tax_behavior` | `String` |  |
| `taxCode` | `tax_code` | `String` |  |
| `taxRates` | `tax_rates (List<String>)` | `List<String>` |  |
| `unitAmountDecimal` | `unit_amount_decimal` | `String` |  |

## Invoices

### `v02_CreateInvoices`

`POST /v1/invoices` → `v02_Invoice`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `accountTaxIds` | `account_tax_ids (List<String>)` | `List<String>` |  |
| `applicationFeeAmount` | `application_fee_amount` | `Integer` |  |
| `autoAdvance` | `auto_advance` | `Boolean` |  |
| `automaticTax` | `automatic_tax` | `v02_CreateInvoicesReqAutomaticTax` |  |
| `automaticallyFinalizesAt` | `automatically_finalizes_at` | `Integer` |  |
| `collectionMethod` | `collection_method` | `String` |  |
| `r_currency` | `currency` | `String` |  |
| `customFields` | `custom_fields` | `List<v02_CreateInvoicesReqCustomField>` |  |
| `customer` | `customer` | `String` |  |
| `daysUntilDue` | `days_until_due` | `Integer` |  |
| `defaultPaymentMethod` | `default_payment_method` | `String` |  |
| `defaultSource` | `default_source` | `String` |  |
| `defaultTaxRates` | `default_tax_rates (List<String>)` | `List<String>` |  |
| `description` | `description` | `String` |  |
| `discounts` | `discounts` | `List<v02_CreateInvoicesReqDiscount>` |  |
| `dueDate` | `due_date` | `Integer` |  |
| `effectiveAt` | `effective_at` | `Integer` |  |
| `footer` | `footer` | `String` |  |
| `fromInvoice` | `from_invoice` | `v02_CreateInvoicesReqFromInvoice` |  |
| `issuer` | `issuer` | `v02_CreateInvoicesReqIssuer` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `r_number` | `number` | `String` |  |
| `onBehalfOf` | `on_behalf_of` | `String` |  |
| `paymentSettings` | `payment_settings` | `v02_CreateInvoicesReqPaymentSettings` |  |
| `pendingInvoiceItemsBehavior` | `pending_invoice_items_behavior` | `String` |  |
| `rendering` | `rendering` | `v02_CreateInvoicesReqRendering` |  |
| `shippingCost` | `shipping_cost` | `v02_CreateInvoicesReqShippingCost` |  |
| `shippingDetails` | `shipping_details` | `v02_CreateInvoicesReqShippingDetails` |  |
| `statementDescriptor` | `statement_descriptor` | `String` |  |
| `subscription` | `subscription` | `String` |  |
| `transferData` | `transfer_data` | `v02_CreateInvoicesReqTransferData` |  |

### `v02_DeleteInvoices`

`DELETE /v1/invoices/{invoice}` → `v02_DeletedInvoice`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `invoice` | `invoice` | `String` | ✓ |

### `v02_GetInvoices`

`GET /v1/invoices/{invoice}` → `v02_Invoice`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `invoice` | `invoice` | `String` | ✓ |

### `v02_GetInvoicesSearch`

`GET /v1/invoices/search` → `v02_InvoiceSearchResult`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `query` | `query` | `String` | ✓ |
| `r_limit` | `limit` | `Integer` |  |
| `page` | `page` | `String` |  |

### `v02_ListInvoices`

`GET /v1/invoices` → `v02_InvoicesResourceList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `collectionMethod` | `collection_method` | `String` |  |
| `created` | `created` | `v02_ListCreatedParameter` |  |
| `customer` | `customer` | `String` |  |
| `dueDate` | `due_date` | `v02_ListCreatedParameter` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |
| `status` | `status` | `String` |  |
| `subscription` | `subscription` | `String` |  |

### `v02_ListInvoicesLines`

`GET /v1/invoices/{invoice}/lines` → `v02_InvoiceLinesList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `invoice` | `invoice` | `String` | ✓ |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_PostInvoicesAddLines`

`POST /v1/invoices/{invoice}/add_lines` → `v02_Invoice`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `invoice` | `invoice` | `String` | ✓ |
| `lines` | `lines` | `List<v02_PostInvoicesAddLinesReqLine>` | ✓ |
| `invoiceMetadata` | `invoice_metadata` | `v02_InvoiceInvoiceMetadata` |  |

### `v02_PostInvoicesCreatePreview`

`POST /v1/invoices/create_preview` → `v02_Invoice`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `automaticTax` | `automatic_tax` | `v02_PostInvsCreatePreviewReqAutomaticTax` |  |
| `r_currency` | `currency` | `String` |  |
| `customer` | `customer` | `String` |  |
| `customerDetails` | `customer_details` | `v02_PostInvsCreatePreviewReqCusDetails` |  |
| `discounts` | `discounts` | `List<v02_PostInvoicesCreatePreviewReqDiscount>` |  |
| `invoiceItems` | `invoice_items` | `List<v02_PostInvsCreatePreviewReqInvItem>` |  |
| `issuer` | `issuer` | `v02_PostInvoicesCreatePreviewReqIssuer` |  |
| `onBehalfOf` | `on_behalf_of` | `String` |  |
| `previewMode` | `preview_mode` | `String` |  |
| `schedule` | `schedule` | `String` |  |
| `scheduleDetails` | `schedule_details` | `v02_PostInvsCreatePreviewReqSchDetails` |  |
| `subscription` | `subscription` | `String` |  |
| `subscriptionDetails` | `subscription_details` | `v02_PostInvsCreatePreviewReqSubDetails` |  |

### `v02_PostInvoicesFinalize`

`POST /v1/invoices/{invoice}/finalize` → `v02_Invoice`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `invoice` | `invoice` | `String` | ✓ |
| `autoAdvance` | `auto_advance` | `Boolean` |  |

### `v02_PostInvoicesMarkUncollectible`

`POST /v1/invoices/{invoice}/mark_uncollectible` → `v02_Invoice`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `invoice` | `invoice` | `String` | ✓ |

### `v02_PostInvoicesPay`

`POST /v1/invoices/{invoice}/pay` → `v02_Invoice`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `invoice` | `invoice` | `String` | ✓ |
| `forgive` | `forgive` | `Boolean` |  |
| `mandate` | `mandate` | `String` |  |
| `offSession` | `off_session` | `Boolean` |  |
| `paidOutOfBand` | `paid_out_of_band` | `Boolean` |  |
| `paymentMethod` | `payment_method` | `String` |  |
| `source` | `source` | `String` |  |

### `v02_PostInvoicesRemoveLines`

`POST /v1/invoices/{invoice}/remove_lines` → `v02_Invoice`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `invoice` | `invoice` | `String` | ✓ |
| `lines` | `lines` | `List<v02_PostInvoicesRemoveLinesReqLine>` | ✓ |
| `invoiceMetadata` | `invoice_metadata` | `v02_InvoiceInvoiceMetadata1` |  |

### `v02_PostInvoicesSend`

`POST /v1/invoices/{invoice}/send` → `v02_Invoice`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `invoice` | `invoice` | `String` | ✓ |

### `v02_PostInvoicesUpdateLines`

`POST /v1/invoices/{invoice}/update_lines` → `v02_Invoice`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `invoice` | `invoice` | `String` | ✓ |
| `lines` | `lines` | `List<v02_PostInvoicesUpdateLinesReqLine>` | ✓ |
| `invoiceMetadata` | `invoice_metadata` | `v02_InvoiceInvoiceMetadata2` |  |

### `v02_PostInvoicesVoid`

`POST /v1/invoices/{invoice}/void` → `v02_Invoice`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `invoice` | `invoice` | `String` | ✓ |

### `v02_UpdateInvoices`

`POST /v1/invoices/{invoice}` → `v02_Invoice`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `invoice` | `invoice` | `String` | ✓ |
| `accountTaxIds` | `account_tax_ids (List<String>)` | `List<String>` |  |
| `applicationFeeAmount` | `application_fee_amount` | `Integer` |  |
| `autoAdvance` | `auto_advance` | `Boolean` |  |
| `automaticTax` | `automatic_tax` | `v02_UpdateInvoicesReqAutomaticTax` |  |
| `automaticallyFinalizesAt` | `automatically_finalizes_at` | `Integer` |  |
| `collectionMethod` | `collection_method` | `String` |  |
| `customFields` | `custom_fields` | `List<v02_UpdateInvoicesReqCustomField>` |  |
| `daysUntilDue` | `days_until_due` | `Integer` |  |
| `defaultPaymentMethod` | `default_payment_method` | `String` |  |
| `defaultSource` | `default_source` | `String` |  |
| `defaultTaxRates` | `default_tax_rates (List<String>)` | `List<String>` |  |
| `description` | `description` | `String` |  |
| `discounts` | `discounts` | `List<v02_UpdateInvoicesReqDiscount>` |  |
| `dueDate` | `due_date` | `Integer` |  |
| `effectiveAt` | `effective_at` | `Integer` |  |
| `footer` | `footer` | `String` |  |
| `issuer` | `issuer` | `v02_UpdateInvoicesReqIssuer` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `r_number` | `number` | `String` |  |
| `onBehalfOf` | `on_behalf_of` | `String` |  |
| `paymentSettings` | `payment_settings` | `v02_UpdateInvoicesReqPaymentSettings` |  |
| `rendering` | `rendering` | `v02_UpdateInvoicesReqRendering` |  |
| `shippingCost` | `shipping_cost` | `v02_UpdateInvoicesReqShippingCost` |  |
| `shippingDetails` | `shipping_details` | `v02_UpdateInvoicesReqShippingDetails` |  |
| `statementDescriptor` | `statement_descriptor` | `String` |  |
| `transferData` | `transfer_data` | `v02_UpdateInvoicesReqTransferData` |  |

### `v02_UpdateInvoicesLines`

`POST /v1/invoices/{invoice}/lines/{line_item_id}` → `v02_LineItem`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `invoice` | `invoice` | `String` | ✓ |
| `lineItemId` | `line_item_id` | `String` | ✓ |
| `amount` | `amount` | `Integer` |  |
| `description` | `description` | `String` |  |
| `discountable` | `discountable` | `Boolean` |  |
| `discounts` | `discounts` | `List<v02_UpdateInvoicesLinesReqDiscount>` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `period` | `period` | `v02_InvoiceLineItemPeriod` |  |
| `priceData` | `price_data` | `v02_UpdateInvoicesLinesReqPriceData` |  |
| `pricing` | `pricing` | `v02_UpdateInvoicesLinesReqPricing` |  |
| `quantity` | `quantity` | `Integer` |  |
| `taxAmounts` | `tax_amounts` | `List<v02_UpdateInvoicesLinesReqTaxAmount>` |  |
| `taxRates` | `tax_rates (List<String>)` | `List<String>` |  |

## PaymentIntents

### `v02_CreatePaymentIntents`

`POST /v1/payment_intents` → `v02_PaymentIntent`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `amount` | `amount` | `Integer` | ✓ |
| `r_currency` | `currency` | `String` | ✓ |
| `applicationFeeAmount` | `application_fee_amount` | `Integer` |  |
| `automaticPaymentMethods` | `automatic_payment_methods` | `v02_PaymentFlowsAutomaticPmsPi` |  |
| `captureMethod` | `capture_method` | `String` |  |
| `confirm` | `confirm` | `Boolean` |  |
| `confirmationMethod` | `confirmation_method` | `String` |  |
| `confirmationToken` | `confirmation_token` | `String` |  |
| `customer` | `customer` | `String` |  |
| `description` | `description` | `String` |  |
| `errorOnRequiresAction` | `error_on_requires_action` | `Boolean` |  |
| `mandate` | `mandate` | `String` |  |
| `mandateData` | `mandate_data` | `v02_CreatePaymentIntentsReqMandateData` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `offSession` | `off_session` | `v02_CreatePaymentIntentsReqOffSession` |  |
| `onBehalfOf` | `on_behalf_of` | `String` |  |
| `paymentMethod` | `payment_method` | `String` |  |
| `paymentMethodConfiguration` | `payment_method_configuration` | `String` |  |
| `paymentMethodData` | `payment_method_data` | `v02_CreatePisReqPaymentMethodData` |  |
| `paymentMethodOptions` | `payment_method_options` | `v02_CreatePaymentIntentsReqPMO` |  |
| `paymentMethodTypes` | `payment_method_types (List<String>)` | `List<String>` |  |
| `radarOptions` | `radar_options` | `v02_CreatePaymentIntentsReqRadarOptions` |  |
| `receiptEmail` | `receipt_email` | `String` |  |
| `returnUrl` | `return_url` | `String` |  |
| `setupFutureUsage` | `setup_future_usage` | `String` |  |
| `shipping` | `shipping` | `v02_CreatePaymentIntentsReqShipping` |  |
| `statementDescriptor` | `statement_descriptor` | `String` |  |
| `statementDescriptorSuffix` | `statement_descriptor_suffix` | `String` |  |
| `transferData` | `transfer_data` | `v02_CreatePaymentIntentsReqTransferData` |  |
| `transferGroup` | `transfer_group` | `String` |  |
| `useStripeSdk` | `use_stripe_sdk` | `Boolean` |  |

### `v02_GetPaymentIntents`

`GET /v1/payment_intents/{intent}` → `v02_PaymentIntent`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `intent` | `intent` | `String` | ✓ |
| `clientSecret` | `client_secret` | `String` |  |

### `v02_GetPaymentIntentsSearch`

`GET /v1/payment_intents/search` → `v02_PaymentIntentSearchResult`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `query` | `query` | `String` | ✓ |
| `r_limit` | `limit` | `Integer` |  |
| `page` | `page` | `String` |  |

### `v02_ListPaymentIntents`

`GET /v1/payment_intents` → `v02_PaymentFlowsPaymentIntentList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `created` | `created` | `v02_ListCreatedParameter` |  |
| `customer` | `customer` | `String` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_PostPaymentIntentsApplyCustbal`

`POST /v1/payment_intents/{intent}/apply_customer_balance` → `v02_PaymentIntent`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `intent` | `intent` | `String` | ✓ |
| `amount` | `amount` | `Integer` |  |
| `r_currency` | `currency` | `String` |  |

### `v02_PostPaymentIntentsCancel`

`POST /v1/payment_intents/{intent}/cancel` → `v02_PaymentIntent`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `intent` | `intent` | `String` | ✓ |
| `cancellationReason` | `cancellation_reason` | `String` |  |

### `v02_PostPaymentIntentsCapture`

`POST /v1/payment_intents/{intent}/capture` → `v02_PaymentIntent`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `intent` | `intent` | `String` | ✓ |
| `amountToCapture` | `amount_to_capture` | `Integer` |  |
| `applicationFeeAmount` | `application_fee_amount` | `Integer` |  |
| `finalCapture` | `final_capture` | `Boolean` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `statementDescriptor` | `statement_descriptor` | `String` |  |
| `statementDescriptorSuffix` | `statement_descriptor_suffix` | `String` |  |
| `transferData` | `transfer_data` | `v02_PostPaymentIntentsCaptureReqXferData` |  |

### `v02_PostPaymentIntentsConfirm`

`POST /v1/payment_intents/{intent}/confirm` → `v02_PaymentIntent`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `intent` | `intent` | `String` | ✓ |
| `captureMethod` | `capture_method` | `String` |  |
| `confirmationToken` | `confirmation_token` | `String` |  |
| `errorOnRequiresAction` | `error_on_requires_action` | `Boolean` |  |
| `mandate` | `mandate` | `String` |  |
| `mandateData` | `mandate_data` | `v02_SecretKeyParam` |  |
| `offSession` | `off_session` | `v02_PostPisConfirmReqOffSession` |  |
| `paymentMethod` | `payment_method` | `String` |  |
| `paymentMethodData` | `payment_method_data` | `v02_PostPisConfirmReqPaymentMethodData` |  |
| `paymentMethodOptions` | `payment_method_options` | `v02_PostPaymentIntentsConfirmReqPMO` |  |
| `paymentMethodTypes` | `payment_method_types (List<String>)` | `List<String>` |  |
| `radarOptions` | `radar_options` | `v02_PostPisConfirmReqRadarOptions` |  |
| `receiptEmail` | `receipt_email` | `String` |  |
| `returnUrl` | `return_url` | `String` |  |
| `setupFutureUsage` | `setup_future_usage` | `String` |  |
| `shipping` | `shipping` | `v02_PostPaymentIntentsConfirmReqShipping` |  |
| `useStripeSdk` | `use_stripe_sdk` | `Boolean` |  |

### `v02_PostPaymentIntentsIncrementAuth`

`POST /v1/payment_intents/{intent}/increment_authorization` → `v02_PaymentIntent`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `intent` | `intent` | `String` | ✓ |
| `amount` | `amount` | `Integer` | ✓ |
| `applicationFeeAmount` | `application_fee_amount` | `Integer` |  |
| `description` | `description` | `String` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `statementDescriptor` | `statement_descriptor` | `String` |  |
| `transferData` | `transfer_data` | `v02_PostPaymentIntentsIncAuthReqXferData` |  |

### `v02_PostPaymentIntentsVerifyMicrodep`

`POST /v1/payment_intents/{intent}/verify_microdeposits` → `v02_PaymentIntent`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `intent` | `intent` | `String` | ✓ |
| `amounts` | `amounts (List<Integer>)` | `List<Integer>` |  |
| `descriptorCode` | `descriptor_code` | `String` |  |

### `v02_UpdatePaymentIntents`

`POST /v1/payment_intents/{intent}` → `v02_PaymentIntent`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `intent` | `intent` | `String` | ✓ |
| `amount` | `amount` | `Integer` |  |
| `applicationFeeAmount` | `application_fee_amount` | `Integer` |  |
| `captureMethod` | `capture_method` | `String` |  |
| `r_currency` | `currency` | `String` |  |
| `customer` | `customer` | `String` |  |
| `description` | `description` | `String` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `paymentMethod` | `payment_method` | `String` |  |
| `paymentMethodConfiguration` | `payment_method_configuration` | `String` |  |
| `paymentMethodData` | `payment_method_data` | `v02_UpdatePisReqPaymentMethodData` |  |
| `paymentMethodOptions` | `payment_method_options` | `v02_UpdatePaymentIntentsReqPMO` |  |
| `paymentMethodTypes` | `payment_method_types (List<String>)` | `List<String>` |  |
| `receiptEmail` | `receipt_email` | `String` |  |
| `setupFutureUsage` | `setup_future_usage` | `String` |  |
| `shipping` | `shipping` | `v02_UpdatePaymentIntentsReqShipping` |  |
| `statementDescriptor` | `statement_descriptor` | `String` |  |
| `statementDescriptorSuffix` | `statement_descriptor_suffix` | `String` |  |
| `transferData` | `transfer_data` | `v02_UpdatePaymentIntentsReqTransferData` |  |
| `transferGroup` | `transfer_group` | `String` |  |

## PaymentLinks

### `v02_CreatePaymentLinks`

`POST /v1/payment_links` → `v02_PaymentLink`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `lineItems` | `line_items` | `List<v02_CreatePaymentLinksReqLineItem>` | ✓ |
| `afterCompletion` | `after_completion` | `v02_CreatePaymentLinksReqAfterCompletion` |  |
| `allowPromotionCodes` | `allow_promotion_codes` | `Boolean` |  |
| `applicationFeeAmount` | `application_fee_amount` | `Integer` |  |
| `applicationFeePercent` | `application_fee_percent` | `Double` |  |
| `automaticTax` | `automatic_tax` | `v02_CreatePaymentLinksReqAutomaticTax` |  |
| `billingAddressCollection` | `billing_address_collection` | `String` |  |
| `consentCollection` | `consent_collection` | `v02_CreatePaymentLinksReqConsentCol` |  |
| `r_currency` | `currency` | `String` |  |
| `customFields` | `custom_fields` | `List<v02_CreatePaymentLinksReqCustomField>` |  |
| `customText` | `custom_text` | `v02_CreatePaymentLinksReqCustomText` |  |
| `customerCreation` | `customer_creation` | `String` |  |
| `inactiveMessage` | `inactive_message` | `String` |  |
| `invoiceCreation` | `invoice_creation` | `v02_CreatePaymentLinksReqInvoiceCreation` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `onBehalfOf` | `on_behalf_of` | `String` |  |
| `optionalItems` | `optional_items` | `List<v02_CreatePaymentLinksReqOptionalItem>` |  |
| `paymentIntentData` | `payment_intent_data` | `v02_CreatePaymentLinksReqPiData` |  |
| `paymentMethodCollection` | `payment_method_collection` | `String` |  |
| `paymentMethodTypes` | `payment_method_types (List<String>)` | `List<String>` |  |
| `phoneNumberCollection` | `phone_number_collection` | `v02_PaymentLinksResourcePhoneNumberCol` |  |
| `restrictions` | `restrictions` | `v02_CreatePaymentLinksReqRestrictions` |  |
| `shippingAddressCollection` | `shipping_address_collection` | `v02_PlinksResourceShippingAddressCol` |  |
| `shippingOptions` | `shipping_options` | `List<v02_CreatePaymentLinksReqShippingOption>` |  |
| `submitType` | `submit_type` | `String` |  |
| `subscriptionData` | `subscription_data` | `v02_CreatePaymentLinksReqSubData` |  |
| `taxIdCollection` | `tax_id_collection` | `v02_PaymentLinksResourceTaxIdCollection` |  |
| `transferData` | `transfer_data` | `v02_CreatePaymentLinksReqTransferData` |  |

### `v02_GetPaymentLinks`

`GET /v1/payment_links/{payment_link}` → `v02_PaymentLink`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `paymentLink` | `payment_link` | `String` | ✓ |

### `v02_ListPaymentLinks`

`GET /v1/payment_links` → `v02_PaymentLinksResourcePaymentLinkList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `active` | `active` | `Boolean` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_ListPaymentLinksLineItems`

`GET /v1/payment_links/{payment_link}/line_items` → `v02_PaymentLinksResourceListLineItems`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `paymentLink` | `payment_link` | `String` | ✓ |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_UpdatePaymentLinks`

`POST /v1/payment_links/{payment_link}` → `v02_PaymentLink`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `paymentLink` | `payment_link` | `String` | ✓ |
| `active` | `active` | `Boolean` |  |
| `afterCompletion` | `after_completion` | `v02_UpdatePaymentLinksReqAfterCompletion` |  |
| `allowPromotionCodes` | `allow_promotion_codes` | `Boolean` |  |
| `automaticTax` | `automatic_tax` | `v02_UpdatePaymentLinksReqAutomaticTax` |  |
| `billingAddressCollection` | `billing_address_collection` | `String` |  |
| `customFields` | `custom_fields` | `List<v02_UpdatePaymentLinksReqCustomField>` |  |
| `customText` | `custom_text` | `v02_UpdatePaymentLinksReqCustomText` |  |
| `customerCreation` | `customer_creation` | `String` |  |
| `inactiveMessage` | `inactive_message` | `String` |  |
| `invoiceCreation` | `invoice_creation` | `v02_UpdatePaymentLinksReqInvoiceCreation` |  |
| `lineItems` | `line_items` | `List<v02_UpdatePaymentLinksReqLineItem>` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `paymentIntentData` | `payment_intent_data` | `v02_UpdatePaymentLinksReqPiData` |  |
| `paymentMethodCollection` | `payment_method_collection` | `String` |  |
| `paymentMethodTypes` | `payment_method_types (List<String>)` | `List<String>` |  |
| `phoneNumberCollection` | `phone_number_collection` | `v02_PaymentLinksResourcePhoneNumberCol` |  |
| `restrictions` | `restrictions` | `v02_UpdatePaymentLinksReqRestrictions` |  |
| `shippingAddressCollection` | `shipping_address_collection` | `v02_PlinksResourceShippingAddressCol` |  |
| `submitType` | `submit_type` | `String` |  |
| `subscriptionData` | `subscription_data` | `v02_UpdatePaymentLinksReqSubData` |  |
| `taxIdCollection` | `tax_id_collection` | `v02_PaymentLinksResourceTaxIdCollection` |  |

## PaymentMethodConfigurations

### `v02_CreatePaymentMethodConfigurations`

`POST /v1/payment_method_configurations` → `v02_PaymentMethodConfiguration`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `acssDebit` | `acss_debit` | `v02_CreatePmConfigurationsReqAcssDebit` |  |
| `affirm` | `affirm` | `v02_CreatePmConfigurationsReqAffirm` |  |
| `afterpayClearpay` | `afterpay_clearpay` | `v02_CreatePmConfigurationsReqAftClrpay` |  |
| `alipay` | `alipay` | `v02_CreatePmConfigurationsReqAlipay` |  |
| `alma` | `alma` | `v02_CreatePmConfigurationsReqAlma` |  |
| `amazonPay` | `amazon_pay` | `v02_CreatePmConfigurationsReqAmazonPay` |  |
| `applePay` | `apple_pay` | `v02_CreatePmConfigurationsReqApplePay` |  |
| `applePayLater` | `apple_pay_later` | `v02_CreatePmConfsReqApplePayLater` |  |
| `auBecsDebit` | `au_becs_debit` | `v02_CreatePmConfigurationsReqAuBecsDebit` |  |
| `bacsDebit` | `bacs_debit` | `v02_CreatePmConfigurationsReqBacsDebit` |  |
| `bancontact` | `bancontact` | `v02_CreatePmConfigurationsReqBancontact` |  |
| `billie` | `billie` | `v02_CreatePmConfigurationsReqBillie` |  |
| `blik` | `blik` | `v02_CreatePmConfigurationsReqBlik` |  |
| `boleto` | `boleto` | `v02_CreatePmConfigurationsReqBoleto` |  |
| `card` | `card` | `v02_CreatePmConfigurationsReqCard` |  |
| `cartesBancaires` | `cartes_bancaires` | `v02_CreatePmConfigurationsReqCB` |  |
| `cashapp` | `cashapp` | `v02_CreatePmConfigurationsReqCashapp` |  |
| `customerBalance` | `customer_balance` | `v02_CreatePmConfigurationsReqCustbal` |  |
| `eps` | `eps` | `v02_CreatePmConfigurationsReqEps` |  |
| `fpx` | `fpx` | `v02_CreatePmConfigurationsReqFpx` |  |
| `giropay` | `giropay` | `v02_CreatePmConfigurationsReqGiropay` |  |
| `googlePay` | `google_pay` | `v02_CreatePmConfigurationsReqGooglePay` |  |
| `grabpay` | `grabpay` | `v02_CreatePmConfigurationsReqGrabpay` |  |
| `ideal` | `ideal` | `v02_CreatePmConfigurationsReqIdeal` |  |
| `jcb` | `jcb` | `v02_CreatePmConfigurationsReqJcb` |  |
| `klarna` | `klarna` | `v02_CreatePmConfigurationsReqKlarna` |  |
| `konbini` | `konbini` | `v02_CreatePmConfigurationsReqKonbini` |  |
| `link` | `link` | `v02_CreatePmConfigurationsReqLink` |  |
| `mobilepay` | `mobilepay` | `v02_CreatePmConfigurationsReqMobilepay` |  |
| `multibanco` | `multibanco` | `v02_CreatePmConfigurationsReqMultibanco` |  |
| `name` | `name` | `String` |  |
| `nzBankAccount` | `nz_bank_account` | `v02_CreatePmConfigurationsReqNzBacct` |  |
| `oxxo` | `oxxo` | `v02_CreatePmConfigurationsReqOxxo` |  |
| `p24` | `p24` | `v02_CreatePmConfigurationsReqP24` |  |
| `parent` | `parent` | `String` |  |
| `payByBank` | `pay_by_bank` | `v02_CreatePmConfigurationsReqPayByBank` |  |
| `paynow` | `paynow` | `v02_CreatePmConfigurationsReqPaynow` |  |
| `paypal` | `paypal` | `v02_CreatePmConfigurationsReqPaypal` |  |
| `pix` | `pix` | `v02_CreatePmConfigurationsReqPix` |  |
| `promptpay` | `promptpay` | `v02_CreatePmConfigurationsReqPromptpay` |  |
| `revolutPay` | `revolut_pay` | `v02_CreatePmConfigurationsReqRevolutPay` |  |
| `satispay` | `satispay` | `v02_CreatePmConfigurationsReqSatispay` |  |
| `sepaDebit` | `sepa_debit` | `v02_CreatePmConfigurationsReqSepaDebit` |  |
| `sofort` | `sofort` | `v02_CreatePmConfigurationsReqSofort` |  |
| `swish` | `swish` | `v02_CreatePmConfigurationsReqSwish` |  |
| `twint` | `twint` | `v02_CreatePmConfigurationsReqTwint` |  |
| `usBankAccount` | `us_bank_account` | `v02_CreatePmConfigurationsReqUsBacct` |  |
| `wechatPay` | `wechat_pay` | `v02_CreatePmConfigurationsReqWechatPay` |  |
| `zip` | `zip` | `v02_CreatePmConfigurationsReqZip` |  |

### `v02_GetPaymentMethodConfigurations`

`GET /v1/payment_method_configurations/{configuration}` → `v02_PaymentMethodConfiguration`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `configuration` | `configuration` | `String` | ✓ |

### `v02_ListPaymentMethodConfigurations`

`GET /v1/payment_method_configurations` → `v02_PymtMethodConfigPymtMethodConfsList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `application` | `application` | `String` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_UpdatePaymentMethodConfigurations`

`POST /v1/payment_method_configurations/{configuration}` → `v02_PaymentMethodConfiguration`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `configuration` | `configuration` | `String` | ✓ |
| `acssDebit` | `acss_debit` | `v02_UpdatePmConfigurationsReqAcssDebit` |  |
| `active` | `active` | `Boolean` |  |
| `affirm` | `affirm` | `v02_UpdatePmConfigurationsReqAffirm` |  |
| `afterpayClearpay` | `afterpay_clearpay` | `v02_UpdatePmConfigurationsReqAftClrpay` |  |
| `alipay` | `alipay` | `v02_UpdatePmConfigurationsReqAlipay` |  |
| `alma` | `alma` | `v02_UpdatePmConfigurationsReqAlma` |  |
| `amazonPay` | `amazon_pay` | `v02_UpdatePmConfigurationsReqAmazonPay` |  |
| `applePay` | `apple_pay` | `v02_UpdatePmConfigurationsReqApplePay` |  |
| `applePayLater` | `apple_pay_later` | `v02_UpdatePmConfsReqApplePayLater` |  |
| `auBecsDebit` | `au_becs_debit` | `v02_UpdatePmConfigurationsReqAuBecsDebit` |  |
| `bacsDebit` | `bacs_debit` | `v02_UpdatePmConfigurationsReqBacsDebit` |  |
| `bancontact` | `bancontact` | `v02_UpdatePmConfigurationsReqBancontact` |  |
| `billie` | `billie` | `v02_UpdatePmConfigurationsReqBillie` |  |
| `blik` | `blik` | `v02_UpdatePmConfigurationsReqBlik` |  |
| `boleto` | `boleto` | `v02_UpdatePmConfigurationsReqBoleto` |  |
| `card` | `card` | `v02_UpdatePmConfigurationsReqCard` |  |
| `cartesBancaires` | `cartes_bancaires` | `v02_UpdatePmConfigurationsReqCB` |  |
| `cashapp` | `cashapp` | `v02_UpdatePmConfigurationsReqCashapp` |  |
| `customerBalance` | `customer_balance` | `v02_UpdatePmConfigurationsReqCustbal` |  |
| `eps` | `eps` | `v02_UpdatePmConfigurationsReqEps` |  |
| `fpx` | `fpx` | `v02_UpdatePmConfigurationsReqFpx` |  |
| `giropay` | `giropay` | `v02_UpdatePmConfigurationsReqGiropay` |  |
| `googlePay` | `google_pay` | `v02_UpdatePmConfigurationsReqGooglePay` |  |
| `grabpay` | `grabpay` | `v02_UpdatePmConfigurationsReqGrabpay` |  |
| `ideal` | `ideal` | `v02_UpdatePmConfigurationsReqIdeal` |  |
| `jcb` | `jcb` | `v02_UpdatePmConfigurationsReqJcb` |  |
| `klarna` | `klarna` | `v02_UpdatePmConfigurationsReqKlarna` |  |
| `konbini` | `konbini` | `v02_UpdatePmConfigurationsReqKonbini` |  |
| `link` | `link` | `v02_UpdatePmConfigurationsReqLink` |  |
| `mobilepay` | `mobilepay` | `v02_UpdatePmConfigurationsReqMobilepay` |  |
| `multibanco` | `multibanco` | `v02_UpdatePmConfigurationsReqMultibanco` |  |
| `name` | `name` | `String` |  |
| `nzBankAccount` | `nz_bank_account` | `v02_UpdatePmConfigurationsReqNzBacct` |  |
| `oxxo` | `oxxo` | `v02_UpdatePmConfigurationsReqOxxo` |  |
| `p24` | `p24` | `v02_UpdatePmConfigurationsReqP24` |  |
| `payByBank` | `pay_by_bank` | `v02_UpdatePmConfigurationsReqPayByBank` |  |
| `paynow` | `paynow` | `v02_UpdatePmConfigurationsReqPaynow` |  |
| `paypal` | `paypal` | `v02_UpdatePmConfigurationsReqPaypal` |  |
| `pix` | `pix` | `v02_UpdatePmConfigurationsReqPix` |  |
| `promptpay` | `promptpay` | `v02_UpdatePmConfigurationsReqPromptpay` |  |
| `revolutPay` | `revolut_pay` | `v02_UpdatePmConfigurationsReqRevolutPay` |  |
| `satispay` | `satispay` | `v02_UpdatePmConfigurationsReqSatispay` |  |
| `sepaDebit` | `sepa_debit` | `v02_UpdatePmConfigurationsReqSepaDebit` |  |
| `sofort` | `sofort` | `v02_UpdatePmConfigurationsReqSofort` |  |
| `swish` | `swish` | `v02_UpdatePmConfigurationsReqSwish` |  |
| `twint` | `twint` | `v02_UpdatePmConfigurationsReqTwint` |  |
| `usBankAccount` | `us_bank_account` | `v02_UpdatePmConfigurationsReqUsBacct` |  |
| `wechatPay` | `wechat_pay` | `v02_UpdatePmConfigurationsReqWechatPay` |  |
| `zip` | `zip` | `v02_UpdatePmConfigurationsReqZip` |  |

## PaymentMethodDomains

### `v02_CreatePaymentMethodDomains`

`POST /v1/payment_method_domains` → `v02_PaymentMethodDomain`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `domainName` | `domain_name` | `String` | ✓ |
| `enabled` | `enabled` | `Boolean` |  |

### `v02_GetPaymentMethodDomains`

`GET /v1/payment_method_domains/{payment_method_domain}` → `v02_PaymentMethodDomain`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `paymentMethodDomain` | `payment_method_domain` | `String` | ✓ |

### `v02_ListPaymentMethodDomains`

`GET /v1/payment_method_domains` → `v02_PymtMethodDomainPymtMethodDomainList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `domainName` | `domain_name` | `String` |  |
| `enabled` | `enabled` | `Boolean` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_PostPaymentMethodDomainsValidate`

`POST /v1/payment_method_domains/{payment_method_domain}/validate` → `v02_PaymentMethodDomain`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `paymentMethodDomain` | `payment_method_domain` | `String` | ✓ |

### `v02_UpdatePaymentMethodDomains`

`POST /v1/payment_method_domains/{payment_method_domain}` → `v02_PaymentMethodDomain`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `paymentMethodDomain` | `payment_method_domain` | `String` | ✓ |
| `enabled` | `enabled` | `Boolean` |  |

## PaymentMethods

### `v02_CreatePaymentMethods`

`POST /v1/payment_methods` → `v02_PaymentMethod`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `acssDebit` | `acss_debit` | `v02_CreatePaymentMethodsReqAcssDebit` |  |
| `affirm` | `affirm` | `List<v02_AdditionalString>` |  |
| `afterpayClearpay` | `afterpay_clearpay` | `List<v02_AdditionalString>` |  |
| `alipay` | `alipay` | `List<v02_AdditionalString>` |  |
| `allowRedisplay` | `allow_redisplay` | `String` |  |
| `alma` | `alma` | `List<v02_AdditionalString>` |  |
| `amazonPay` | `amazon_pay` | `List<v02_AdditionalString>` |  |
| `auBecsDebit` | `au_becs_debit` | `v02_CreatePaymentMethodsReqAuBecsDebit` |  |
| `bacsDebit` | `bacs_debit` | `v02_CreatePaymentMethodsReqBacsDebit` |  |
| `bancontact` | `bancontact` | `List<v02_AdditionalString>` |  |
| `billie` | `billie` | `List<v02_AdditionalString>` |  |
| `billingDetails` | `billing_details` | `v02_CreatePmsReqBillingDetails` |  |
| `blik` | `blik` | `List<v02_AdditionalString>` |  |
| `boleto` | `boleto` | `v02_PaymentMethodBoleto` |  |
| `card` | `card` | `v02_CreatePaymentMethodsReqCard` |  |
| `cashapp` | `cashapp` | `List<v02_AdditionalString>` |  |
| `customer` | `customer` | `String` |  |
| `customerBalance` | `customer_balance` | `List<v02_AdditionalString>` |  |
| `eps` | `eps` | `v02_PaymentMethodEps` |  |
| `fpx` | `fpx` | `v02_PaymentMethodFpx` |  |
| `giropay` | `giropay` | `List<v02_AdditionalString>` |  |
| `grabpay` | `grabpay` | `List<v02_AdditionalString>` |  |
| `ideal` | `ideal` | `v02_CreatePaymentMethodsReqIdeal` |  |
| `interacPresent` | `interac_present` | `List<v02_AdditionalString>` |  |
| `kakaoPay` | `kakao_pay` | `List<v02_AdditionalString>` |  |
| `klarna` | `klarna` | `v02_CreatePaymentMethodsReqKlarna` |  |
| `konbini` | `konbini` | `List<v02_AdditionalString>` |  |
| `krCard` | `kr_card` | `List<v02_AdditionalString>` |  |
| `link` | `link` | `List<v02_AdditionalString>` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `mobilepay` | `mobilepay` | `List<v02_AdditionalString>` |  |
| `multibanco` | `multibanco` | `List<v02_AdditionalString>` |  |
| `naverPay` | `naver_pay` | `v02_CreatePaymentMethodsReqNaverPay` |  |
| `nzBankAccount` | `nz_bank_account` | `v02_CreatePaymentMethodsReqNzBankAccount` |  |
| `oxxo` | `oxxo` | `List<v02_AdditionalString>` |  |
| `p24` | `p24` | `v02_PaymentMethodP24` |  |
| `payByBank` | `pay_by_bank` | `List<v02_AdditionalString>` |  |
| `payco` | `payco` | `List<v02_AdditionalString>` |  |
| `paymentMethod` | `payment_method` | `String` |  |
| `paynow` | `paynow` | `List<v02_AdditionalString>` |  |
| `paypal` | `paypal` | `List<v02_AdditionalString>` |  |
| `pix` | `pix` | `List<v02_AdditionalString>` |  |
| `promptpay` | `promptpay` | `List<v02_AdditionalString>` |  |
| `radarOptions` | `radar_options` | `v02_RadarRadarOptions` |  |
| `revolutPay` | `revolut_pay` | `List<v02_AdditionalString>` |  |
| `samsungPay` | `samsung_pay` | `List<v02_AdditionalString>` |  |
| `satispay` | `satispay` | `List<v02_AdditionalString>` |  |
| `sepaDebit` | `sepa_debit` | `v02_CreatePaymentMethodsReqSepaDebit` |  |
| `sofort` | `sofort` | `v02_PaymentMethodSofort` |  |
| `swish` | `swish` | `List<v02_AdditionalString>` |  |
| `twint` | `twint` | `List<v02_AdditionalString>` |  |
| `type` | `type` | `String` |  |
| `usBankAccount` | `us_bank_account` | `v02_CreatePaymentMethodsReqUsBankAccount` |  |
| `wechatPay` | `wechat_pay` | `List<v02_AdditionalString>` |  |
| `zip` | `zip` | `List<v02_AdditionalString>` |  |

### `v02_GetPaymentMethods`

`GET /v1/payment_methods/{payment_method}` → `v02_PaymentMethod`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `paymentMethod` | `payment_method` | `String` | ✓ |

### `v02_ListPaymentMethods`

`GET /v1/payment_methods` → `v02_PaymentFlowsPaymentMethodList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |
| `type` | `type` | `String` |  |

### `v02_PostPaymentMethodsAttach`

`POST /v1/payment_methods/{payment_method}/attach` → `v02_PaymentMethod`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `paymentMethod` | `payment_method` | `String` | ✓ |
| `customer` | `customer` | `String` | ✓ |

### `v02_PostPaymentMethodsDetach`

`POST /v1/payment_methods/{payment_method}/detach` → `v02_PaymentMethod`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `paymentMethod` | `payment_method` | `String` | ✓ |

### `v02_UpdatePaymentMethods`

`POST /v1/payment_methods/{payment_method}` → `v02_PaymentMethod`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `paymentMethod` | `payment_method` | `String` | ✓ |
| `allowRedisplay` | `allow_redisplay` | `String` |  |
| `billingDetails` | `billing_details` | `v02_UpdatePmsReqBillingDetails` |  |
| `card` | `card` | `v02_UpdatePaymentMethodsReqCard` |  |
| `link` | `link` | `List<v02_AdditionalString>` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `payByBank` | `pay_by_bank` | `List<v02_AdditionalString>` |  |
| `usBankAccount` | `us_bank_account` | `v02_UpdatePaymentMethodsReqUsBankAccount` |  |

## Payouts

### `v02_CreatePayouts`

`POST /v1/payouts` → `v02_Payout`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `amount` | `amount` | `Integer` | ✓ |
| `r_currency` | `currency` | `String` | ✓ |
| `description` | `description` | `String` |  |
| `destination` | `destination` | `String` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `method` | `method` | `String` |  |
| `sourceType` | `source_type` | `String` |  |
| `statementDescriptor` | `statement_descriptor` | `String` |  |

### `v02_GetPayouts`

`GET /v1/payouts/{payout}` → `v02_Payout`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `payout` | `payout` | `String` | ✓ |

### `v02_ListPayouts`

`GET /v1/payouts` → `v02_PayoutList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `arrivalDate` | `arrival_date` | `v02_ListCreatedParameter` |  |
| `created` | `created` | `v02_ListCreatedParameter` |  |
| `destination` | `destination` | `String` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |
| `status` | `status` | `String` |  |

### `v02_PostPayoutsCancel`

`POST /v1/payouts/{payout}/cancel` → `v02_Payout`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `payout` | `payout` | `String` | ✓ |

### `v02_PostPayoutsReverse`

`POST /v1/payouts/{payout}/reverse` → `v02_Payout`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `payout` | `payout` | `String` | ✓ |
| `metadata` | `metadata` | `v02_Metadata` |  |

### `v02_UpdatePayouts`

`POST /v1/payouts/{payout}` → `v02_Payout`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `payout` | `payout` | `String` | ✓ |
| `metadata` | `metadata` | `v02_Metadata` |  |

## Plans

### `v02_CreatePlans`

`POST /v1/plans` → `v02_Plan`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `r_currency` | `currency` | `String` | ✓ |
| `interval` | `interval` | `String` | ✓ |
| `active` | `active` | `Boolean` |  |
| `amount` | `amount` | `Integer` |  |
| `amountDecimal` | `amount_decimal` | `String` |  |
| `billingScheme` | `billing_scheme` | `String` |  |
| `id` | `id` | `String` |  |
| `intervalCount` | `interval_count` | `Integer` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `meter` | `meter` | `String` |  |
| `nickname` | `nickname` | `String` |  |
| `product` | `product` | `v02_CreatePlansReqProduct` |  |
| `tiers` | `tiers` | `List<v02_CreatePlansReqTier>` |  |
| `tiersMode` | `tiers_mode` | `String` |  |
| `transformUsage` | `transform_usage` | `v02_TransformUsage` |  |
| `trialPeriodDays` | `trial_period_days` | `Integer` |  |
| `usageType` | `usage_type` | `String` |  |

### `v02_DeletePlans`

`DELETE /v1/plans/{plan}` → `v02_DeletedPlan`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `plan` | `plan` | `String` | ✓ |

### `v02_GetPlans`

`GET /v1/plans/{plan}` → `v02_Plan`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `plan` | `plan` | `String` | ✓ |

### `v02_ListPlans`

`GET /v1/plans` → `v02_PlanList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `active` | `active` | `Boolean` |  |
| `created` | `created` | `v02_ListCreatedParameter` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `product` | `product` | `String` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_UpdatePlans`

`POST /v1/plans/{plan}` → `v02_Plan`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `plan` | `plan` | `String` | ✓ |
| `active` | `active` | `Boolean` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `nickname` | `nickname` | `String` |  |
| `product` | `product` | `String` |  |
| `trialPeriodDays` | `trial_period_days` | `Integer` |  |

## Prices

### `v02_CreatePrices`

`POST /v1/prices` → `v02_Price`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `r_currency` | `currency` | `String` | ✓ |
| `active` | `active` | `Boolean` |  |
| `billingScheme` | `billing_scheme` | `String` |  |
| `currencyOptions` | `currency_options` | `v02_PriceCurrencyOptions` |  |
| `customUnitAmount` | `custom_unit_amount` | `v02_CreatePricesReqCustomUnitAmount` |  |
| `lookupKey` | `lookup_key` | `String` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `nickname` | `nickname` | `String` |  |
| `product` | `product` | `String` |  |
| `productData` | `product_data` | `v02_CreatePricesReqProductData` |  |
| `recurring` | `recurring` | `v02_Recurring` |  |
| `taxBehavior` | `tax_behavior` | `String` |  |
| `tiers` | `tiers` | `List<v02_CreatePricesReqTier>` |  |
| `tiersMode` | `tiers_mode` | `String` |  |
| `transferLookupKey` | `transfer_lookup_key` | `Boolean` |  |
| `transformQuantity` | `transform_quantity` | `v02_TransformQuantity` |  |
| `unitAmount` | `unit_amount` | `Integer` |  |
| `unitAmountDecimal` | `unit_amount_decimal` | `String` |  |

### `v02_GetPrices`

`GET /v1/prices/{price}` → `v02_Price`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `price` | `price` | `String` | ✓ |

### `v02_GetPricesSearch`

`GET /v1/prices/search` → `v02_PriceSearchResult`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `query` | `query` | `String` | ✓ |
| `r_limit` | `limit` | `Integer` |  |
| `page` | `page` | `String` |  |

### `v02_ListPrices`

`GET /v1/prices` → `v02_PriceList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `active` | `active` | `Boolean` |  |
| `created` | `created` | `v02_ListCreatedParameter` |  |
| `r_currency` | `currency` | `String` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `lookupKeys` | `lookup_keys (List<String>)` | `List<String>` |  |
| `product` | `product` | `String` |  |
| `recurring` | `recurring` | `List<v02_AdditionalString>` |  |
| `startingAfter` | `starting_after` | `String` |  |
| `type` | `type` | `String` |  |

### `v02_UpdatePrices`

`POST /v1/prices/{price}` → `v02_Price`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `price` | `price` | `String` | ✓ |
| `active` | `active` | `Boolean` |  |
| `currencyOptions` | `currency_options` | `v02_PriceCurrencyOptions1` |  |
| `lookupKey` | `lookup_key` | `String` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `nickname` | `nickname` | `String` |  |
| `taxBehavior` | `tax_behavior` | `String` |  |
| `transferLookupKey` | `transfer_lookup_key` | `Boolean` |  |

## Products

### `v02_CreateProducts`

`POST /v1/products` → `v02_Product`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `name` | `name` | `String` | ✓ |
| `active` | `active` | `Boolean` |  |
| `defaultPriceData` | `default_price_data` | `v02_CreateProductsReqDefaultPriceData` |  |
| `description` | `description` | `String` |  |
| `id` | `id` | `String` |  |
| `images` | `images (List<String>)` | `List<String>` |  |
| `marketingFeatures` | `marketing_features` | `List<v02_CreateProductsReqMarketingFeature>` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `packageDimensions` | `package_dimensions` | `v02_PackageDimensions` |  |
| `shippable` | `shippable` | `Boolean` |  |
| `statementDescriptor` | `statement_descriptor` | `String` |  |
| `taxCode` | `tax_code` | `String` |  |
| `type` | `type` | `String` |  |
| `unitLabel` | `unit_label` | `String` |  |
| `url` | `url` | `String` |  |

### `v02_CreateProductsFeatures`

`POST /v1/products/{product}/features` → `v02_ProductFeature`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `product` | `product` | `String` | ✓ |
| `entitlementFeature` | `entitlement_feature` | `String` | ✓ |

### `v02_DeleteProducts`

`DELETE /v1/products/{id}` → `v02_DeletedProduct`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `id` | `id` | `String` | ✓ |

### `v02_DeleteProductsFeatures`

`DELETE /v1/products/{product}/features/{id}` → `v02_DeletedProductFeature`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `id` | `id` | `String` | ✓ |
| `product` | `product` | `String` | ✓ |

### `v02_GetProducts`

`GET /v1/products/{id}` → `v02_Product`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `id` | `id` | `String` | ✓ |

### `v02_GetProductsFeatures`

`GET /v1/products/{product}/features/{id}` → `v02_ProductFeature`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `id` | `id` | `String` | ✓ |
| `product` | `product` | `String` | ✓ |

### `v02_GetProductsSearch`

`GET /v1/products/search` → `v02_ProductSearchResult`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `query` | `query` | `String` | ✓ |
| `r_limit` | `limit` | `Integer` |  |
| `page` | `page` | `String` |  |

### `v02_ListProducts`

`GET /v1/products` → `v02_ProductList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `active` | `active` | `Boolean` |  |
| `created` | `created` | `v02_ListCreatedParameter` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `ids` | `ids (List<String>)` | `List<String>` |  |
| `r_limit` | `limit` | `Integer` |  |
| `shippable` | `shippable` | `Boolean` |  |
| `startingAfter` | `starting_after` | `String` |  |
| `type` | `type` | `String` |  |
| `url` | `url` | `String` |  |

### `v02_ListProductsFeatures`

`GET /v1/products/{product}/features` → `v02_EntitlementsResourceProdFeatureList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `product` | `product` | `String` | ✓ |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_UpdateProducts`

`POST /v1/products/{id}` → `v02_Product`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `id` | `id` | `String` | ✓ |
| `active` | `active` | `Boolean` |  |
| `defaultPrice` | `default_price` | `String` |  |
| `description` | `description` | `String` |  |
| `images` | `images (List<String>)` | `List<String>` |  |
| `marketingFeatures` | `marketing_features` | `List<v02_UpdateProductsReqMarketingFeature>` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `name` | `name` | `String` |  |
| `packageDimensions` | `package_dimensions` | `v02_PackageDimensions` |  |
| `shippable` | `shippable` | `Boolean` |  |
| `statementDescriptor` | `statement_descriptor` | `String` |  |
| `taxCode` | `tax_code` | `String` |  |
| `unitLabel` | `unit_label` | `String` |  |
| `url` | `url` | `String` |  |

## PromotionCodes

### `v02_CreatePromotionCodes`

`POST /v1/promotion_codes` → `v02_PromotionCode`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `coupon` | `coupon` | `String` | ✓ |
| `active` | `active` | `Boolean` |  |
| `code` | `code` | `String` |  |
| `customer` | `customer` | `String` |  |
| `expiresAt` | `expires_at` | `Integer` |  |
| `maxRedemptions` | `max_redemptions` | `Integer` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `restrictions` | `restrictions` | `v02_CreatePromotionCodesReqRestrictions` |  |

### `v02_GetPromotionCodes`

`GET /v1/promotion_codes/{promotion_code}` → `v02_PromotionCode`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `promotionCode` | `promotion_code` | `String` | ✓ |

### `v02_ListPromotionCodes`

`GET /v1/promotion_codes` → `v02_PromotionCodesPromotionCodeList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `active` | `active` | `Boolean` |  |
| `code` | `code` | `String` |  |
| `coupon` | `coupon` | `String` |  |
| `created` | `created` | `v02_ListCreatedParameter` |  |
| `customer` | `customer` | `String` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_UpdatePromotionCodes`

`POST /v1/promotion_codes/{promotion_code}` → `v02_PromotionCode`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `promotionCode` | `promotion_code` | `String` | ✓ |
| `active` | `active` | `Boolean` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `restrictions` | `restrictions` | `v02_UpdatePromotionCodesReqRestrictions` |  |

## Quotes

### `v02_CreateQuotes`

`POST /v1/quotes` → `v02_Quote`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `applicationFeeAmount` | `application_fee_amount` | `Integer` |  |
| `applicationFeePercent` | `application_fee_percent` | `Double` |  |
| `automaticTax` | `automatic_tax` | `v02_CreateQuotesReqAutomaticTax` |  |
| `collectionMethod` | `collection_method` | `String` |  |
| `customer` | `customer` | `String` |  |
| `defaultTaxRates` | `default_tax_rates (List<String>)` | `List<String>` |  |
| `description` | `description` | `String` |  |
| `discounts` | `discounts` | `List<v02_CreateQuotesReqDiscount>` |  |
| `expiresAt` | `expires_at` | `Integer` |  |
| `footer` | `footer` | `String` |  |
| `fromQuote` | `from_quote` | `v02_CreateQuotesReqFromQuote` |  |
| `header` | `header` | `String` |  |
| `invoiceSettings` | `invoice_settings` | `v02_CreateQuotesReqInvoiceSettings` |  |
| `lineItems` | `line_items` | `List<v02_CreateQuotesReqLineItem>` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `onBehalfOf` | `on_behalf_of` | `String` |  |
| `subscriptionData` | `subscription_data` | `v02_CreateQuotesReqSubscriptionData` |  |
| `testClock` | `test_clock` | `String` |  |
| `transferData` | `transfer_data` | `v02_CreateQuotesReqTransferData` |  |

### `v02_GetQuotes`

`GET /v1/quotes/{quote}` → `v02_Quote`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `quote` | `quote` | `String` | ✓ |

### `v02_GetQuotesPdf`

`GET /v1/quotes/{quote}/pdf` → `v02_File`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `quote` | `quote` | `String` | ✓ |

### `v02_ListQuotes`

`GET /v1/quotes` → `v02_QuotesResourceQuoteList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |
| `status` | `status` | `String` |  |
| `testClock` | `test_clock` | `String` |  |

### `v02_ListQuotesComputedUpfrontLineItems`

`GET /v1/quotes/{quote}/computed_upfront_line_items` → `v02_QuotesResourceListLineItems`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `quote` | `quote` | `String` | ✓ |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_ListQuotesLineItems`

`GET /v1/quotes/{quote}/line_items` → `v02_QuotesResourceListLineItems`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `quote` | `quote` | `String` | ✓ |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_PostQuotesAccept`

`POST /v1/quotes/{quote}/accept` → `v02_Quote`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `quote` | `quote` | `String` | ✓ |

### `v02_PostQuotesCancel`

`POST /v1/quotes/{quote}/cancel` → `v02_Quote`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `quote` | `quote` | `String` | ✓ |

### `v02_PostQuotesFinalize`

`POST /v1/quotes/{quote}/finalize` → `v02_Quote`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `quote` | `quote` | `String` | ✓ |
| `expiresAt` | `expires_at` | `Integer` |  |

### `v02_UpdateQuotes`

`POST /v1/quotes/{quote}` → `v02_Quote`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `quote` | `quote` | `String` | ✓ |
| `applicationFeeAmount` | `application_fee_amount` | `Integer` |  |
| `applicationFeePercent` | `application_fee_percent` | `Double` |  |
| `automaticTax` | `automatic_tax` | `v02_UpdateQuotesReqAutomaticTax` |  |
| `collectionMethod` | `collection_method` | `String` |  |
| `customer` | `customer` | `String` |  |
| `defaultTaxRates` | `default_tax_rates (List<String>)` | `List<String>` |  |
| `description` | `description` | `String` |  |
| `discounts` | `discounts` | `List<v02_UpdateQuotesReqDiscount>` |  |
| `expiresAt` | `expires_at` | `Integer` |  |
| `footer` | `footer` | `String` |  |
| `header` | `header` | `String` |  |
| `invoiceSettings` | `invoice_settings` | `v02_UpdateQuotesReqInvoiceSettings` |  |
| `lineItems` | `line_items` | `List<v02_UpdateQuotesReqLineItem>` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `onBehalfOf` | `on_behalf_of` | `String` |  |
| `subscriptionData` | `subscription_data` | `v02_UpdateQuotesReqSubscriptionData` |  |
| `transferData` | `transfer_data` | `v02_UpdateQuotesReqTransferData` |  |

## Refunds

### `v02_CreateRefunds`

`POST /v1/refunds` → `v02_Refund`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `amount` | `amount` | `Integer` |  |
| `charge` | `charge` | `String` |  |
| `r_currency` | `currency` | `String` |  |
| `customer` | `customer` | `String` |  |
| `instructionsEmail` | `instructions_email` | `String` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `origin` | `origin` | `String` |  |
| `paymentIntent` | `payment_intent` | `String` |  |
| `reason` | `reason` | `String` |  |
| `refundApplicationFee` | `refund_application_fee` | `Boolean` |  |
| `reverseTransfer` | `reverse_transfer` | `Boolean` |  |

### `v02_GetRefunds`

`GET /v1/refunds/{refund}` → `v02_Refund`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `refund` | `refund` | `String` | ✓ |

### `v02_ListRefunds`

`GET /v1/refunds` → `v02_APIMethodRefundList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `charge` | `charge` | `String` |  |
| `created` | `created` | `v02_ListCreatedParameter` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `paymentIntent` | `payment_intent` | `String` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_PostRefundsCancel`

`POST /v1/refunds/{refund}/cancel` → `v02_Refund`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `refund` | `refund` | `String` | ✓ |

### `v02_UpdateRefunds`

`POST /v1/refunds/{refund}` → `v02_Refund`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `refund` | `refund` | `String` | ✓ |
| `metadata` | `metadata` | `v02_Metadata` |  |

## SetupIntents

### `v02_CreateSetupIntents`

`POST /v1/setup_intents` → `v02_SetupIntent`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `attachToSelf` | `attach_to_self` | `Boolean` |  |
| `automaticPaymentMethods` | `automatic_payment_methods` | `v02_PaymentFlowsAutomaticPmsSi` |  |
| `confirm` | `confirm` | `Boolean` |  |
| `confirmationToken` | `confirmation_token` | `String` |  |
| `customer` | `customer` | `String` |  |
| `description` | `description` | `String` |  |
| `flowDirections` | `flow_directions (List<String>)` | `List<String>` |  |
| `mandateData` | `mandate_data` | `v02_CreateSetupIntentsReqMandateData` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `onBehalfOf` | `on_behalf_of` | `String` |  |
| `paymentMethod` | `payment_method` | `String` |  |
| `paymentMethodConfiguration` | `payment_method_configuration` | `String` |  |
| `paymentMethodData` | `payment_method_data` | `v02_CreateSisReqPaymentMethodData` |  |
| `paymentMethodOptions` | `payment_method_options` | `v02_CreateSetupIntentsReqPMO` |  |
| `paymentMethodTypes` | `payment_method_types (List<String>)` | `List<String>` |  |
| `returnUrl` | `return_url` | `String` |  |
| `singleUse` | `single_use` | `v02_CreateSetupIntentsReqSingleUse` |  |
| `usage` | `usage` | `String` |  |
| `useStripeSdk` | `use_stripe_sdk` | `Boolean` |  |

### `v02_GetSetupIntents`

`GET /v1/setup_intents/{intent}` → `v02_SetupIntent`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `intent` | `intent` | `String` | ✓ |
| `clientSecret` | `client_secret` | `String` |  |

### `v02_ListSetupIntents`

`GET /v1/setup_intents` → `v02_PaymentFlowsSetupIntentList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `attachToSelf` | `attach_to_self` | `Boolean` |  |
| `created` | `created` | `v02_ListCreatedParameter` |  |
| `customer` | `customer` | `String` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `paymentMethod` | `payment_method` | `String` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_PostSetupIntentsCancel`

`POST /v1/setup_intents/{intent}/cancel` → `v02_SetupIntent`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `intent` | `intent` | `String` | ✓ |
| `cancellationReason` | `cancellation_reason` | `String` |  |

### `v02_PostSetupIntentsConfirm`

`POST /v1/setup_intents/{intent}/confirm` → `v02_SetupIntent`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `intent` | `intent` | `String` | ✓ |
| `confirmationToken` | `confirmation_token` | `String` |  |
| `mandateData` | `mandate_data` | `v02_SecretKeyParam` |  |
| `paymentMethod` | `payment_method` | `String` |  |
| `paymentMethodData` | `payment_method_data` | `v02_PostSisConfirmReqPaymentMethodData` |  |
| `paymentMethodOptions` | `payment_method_options` | `v02_PostSetupIntentsConfirmReqPMO` |  |
| `returnUrl` | `return_url` | `String` |  |
| `useStripeSdk` | `use_stripe_sdk` | `Boolean` |  |

### `v02_PostSetupIntentsVerifyMicrodeposits`

`POST /v1/setup_intents/{intent}/verify_microdeposits` → `v02_SetupIntent`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `intent` | `intent` | `String` | ✓ |
| `amounts` | `amounts (List<Integer>)` | `List<Integer>` |  |
| `descriptorCode` | `descriptor_code` | `String` |  |

### `v02_UpdateSetupIntents`

`POST /v1/setup_intents/{intent}` → `v02_SetupIntent`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `intent` | `intent` | `String` | ✓ |
| `attachToSelf` | `attach_to_self` | `Boolean` |  |
| `customer` | `customer` | `String` |  |
| `description` | `description` | `String` |  |
| `flowDirections` | `flow_directions (List<String>)` | `List<String>` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `paymentMethod` | `payment_method` | `String` |  |
| `paymentMethodConfiguration` | `payment_method_configuration` | `String` |  |
| `paymentMethodData` | `payment_method_data` | `v02_UpdateSisReqPaymentMethodData` |  |
| `paymentMethodOptions` | `payment_method_options` | `v02_UpdateSetupIntentsReqPMO` |  |
| `paymentMethodTypes` | `payment_method_types (List<String>)` | `List<String>` |  |

## SubscriptionItems

### `v02_CreateSubscriptionItems`

`POST /v1/subscription_items` → `v02_SubscriptionItem`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `subscription` | `subscription` | `String` | ✓ |
| `discounts` | `discounts` | `List<v02_CreateSubscriptionItemsReqDiscount>` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `paymentBehavior` | `payment_behavior` | `String` |  |
| `plan` | `plan` | `String` |  |
| `price` | `price` | `String` |  |
| `priceData` | `price_data` | `v02_CreateSubscriptionItemsReqPriceData` |  |
| `prorationBehavior` | `proration_behavior` | `String` |  |
| `prorationDate` | `proration_date` | `Integer` |  |
| `quantity` | `quantity` | `Integer` |  |
| `taxRates` | `tax_rates (List<String>)` | `List<String>` |  |

### `v02_DeleteSubscriptionItems`

`DELETE /v1/subscription_items/{item}` → `v02_DeletedSubscriptionItem`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `item` | `item` | `String` | ✓ |
| `clearUsage` | `clear_usage` | `Boolean` |  |
| `prorationBehavior` | `proration_behavior` | `String` |  |
| `prorationDate` | `proration_date` | `Integer` |  |

### `v02_GetSubscriptionItems`

`GET /v1/subscription_items/{item}` → `v02_SubscriptionItem`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `item` | `item` | `String` | ✓ |

### `v02_ListSubscriptionItems`

`GET /v1/subscription_items` → `v02_SubsItemsSubItemList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `subscription` | `subscription` | `String` | ✓ |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_UpdateSubscriptionItems`

`POST /v1/subscription_items/{item}` → `v02_SubscriptionItem`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `item` | `item` | `String` | ✓ |
| `discounts` | `discounts` | `List<v02_UpdateSubscriptionItemsReqDiscount>` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `offSession` | `off_session` | `Boolean` |  |
| `paymentBehavior` | `payment_behavior` | `String` |  |
| `plan` | `plan` | `String` |  |
| `price` | `price` | `String` |  |
| `priceData` | `price_data` | `v02_UpdateSubscriptionItemsReqPriceData` |  |
| `prorationBehavior` | `proration_behavior` | `String` |  |
| `prorationDate` | `proration_date` | `Integer` |  |
| `quantity` | `quantity` | `Integer` |  |
| `taxRates` | `tax_rates (List<String>)` | `List<String>` |  |

## SubscriptionSchedules

### `v02_CreateSubscriptionSchedules`

`POST /v1/subscription_schedules` → `v02_SubscriptionSchedule`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` |  |
| `defaultSettings` | `default_settings` | `v02_CreateSubSchedulesReqDefaultSettings` |  |
| `endBehavior` | `end_behavior` | `String` |  |
| `fromSubscription` | `from_subscription` | `String` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `phases` | `phases` | `List<v02_CreateSubscriptionSchedulesReqPhase>` |  |
| `startDate` | `start_date` | `v02_CreateSubSchedulesReqStartDate` |  |

### `v02_GetSubscriptionSchedules`

`GET /v1/subscription_schedules/{schedule}` → `v02_SubscriptionSchedule`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `schedule` | `schedule` | `String` | ✓ |

### `v02_ListSubscriptionSchedules`

`GET /v1/subscription_schedules` → `v02_SubSchedulesResourceScheduleList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `canceledAt` | `canceled_at` | `v02_ListCreatedParameter` |  |
| `completedAt` | `completed_at` | `v02_ListCreatedParameter` |  |
| `created` | `created` | `v02_ListCreatedParameter` |  |
| `customer` | `customer` | `String` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `releasedAt` | `released_at` | `v02_ListCreatedParameter` |  |
| `scheduled` | `scheduled` | `Boolean` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_PostSubscriptionSchedulesCancel`

`POST /v1/subscription_schedules/{schedule}/cancel` → `v02_SubscriptionSchedule`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `schedule` | `schedule` | `String` | ✓ |
| `invoiceNow` | `invoice_now` | `Boolean` |  |
| `prorate` | `prorate` | `Boolean` |  |

### `v02_PostSubscriptionSchedulesRelease`

`POST /v1/subscription_schedules/{schedule}/release` → `v02_SubscriptionSchedule`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `schedule` | `schedule` | `String` | ✓ |
| `preserveCancelDate` | `preserve_cancel_date` | `Boolean` |  |

### `v02_UpdateSubscriptionSchedules`

`POST /v1/subscription_schedules/{schedule}` → `v02_SubscriptionSchedule`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `schedule` | `schedule` | `String` | ✓ |
| `defaultSettings` | `default_settings` | `v02_UpdateSubSchedulesReqDefaultSettings` |  |
| `endBehavior` | `end_behavior` | `String` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `phases` | `phases` | `List<v02_UpdateSubscriptionSchedulesReqPhase>` |  |
| `prorationBehavior` | `proration_behavior` | `String` |  |

## Subscriptions

### `v02_CreateSubscriptions`

`POST /v1/subscriptions` → `v02_Subscription`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |
| `addInvoiceItems` | `add_invoice_items` | `List<v02_CreateSubscriptionsReqAddInvoiceItem>` |  |
| `applicationFeePercent` | `application_fee_percent` | `Double` |  |
| `automaticTax` | `automatic_tax` | `v02_CreateSubscriptionsReqAutomaticTax` |  |
| `backdateStartDate` | `backdate_start_date` | `Integer` |  |
| `billingCycleAnchor` | `billing_cycle_anchor` | `Integer` |  |
| `billingCycleAnchorConfig` | `billing_cycle_anchor_config` | `v02_SubsResourceBillingCycleAnchorConfig` |  |
| `cancelAt` | `cancel_at` | `Integer` |  |
| `cancelAtPeriodEnd` | `cancel_at_period_end` | `Boolean` |  |
| `collectionMethod` | `collection_method` | `String` |  |
| `r_currency` | `currency` | `String` |  |
| `daysUntilDue` | `days_until_due` | `Integer` |  |
| `defaultPaymentMethod` | `default_payment_method` | `String` |  |
| `defaultSource` | `default_source` | `String` |  |
| `defaultTaxRates` | `default_tax_rates (List<String>)` | `List<String>` |  |
| `description` | `description` | `String` |  |
| `discounts` | `discounts` | `List<v02_CreateSubscriptionsReqDiscount>` |  |
| `invoiceSettings` | `invoice_settings` | `v02_CreateSubsReqInvoiceSettings` |  |
| `items` | `items` | `List<v02_CreateSubscriptionsReqItem>` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `offSession` | `off_session` | `Boolean` |  |
| `onBehalfOf` | `on_behalf_of` | `String` |  |
| `paymentBehavior` | `payment_behavior` | `String` |  |
| `paymentSettings` | `payment_settings` | `v02_CreateSubsReqPaymentSettings` |  |
| `pendingInvoiceItemInterval` | `pending_invoice_item_interval` | `v02_SubPendingInvoiceItemInterval` |  |
| `prorationBehavior` | `proration_behavior` | `String` |  |
| `transferData` | `transfer_data` | `v02_CreateSubscriptionsReqTransferData` |  |
| `trialEnd` | `trial_end` | `v02_CreateSubscriptionsReqTrialEnd` |  |
| `trialFromPlan` | `trial_from_plan` | `Boolean` |  |
| `trialPeriodDays` | `trial_period_days` | `Integer` |  |
| `trialSettings` | `trial_settings` | `v02_CreateSubscriptionsReqTrialSettings` |  |

### `v02_DeleteSubscriptions`

`DELETE /v1/subscriptions/{subscription_exposed_id}` → `v02_Subscription`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `subscriptionExposedId` | `subscription_exposed_id` | `String` | ✓ |
| `cancellationDetails` | `cancellation_details` | `v02_DeleteSubsReqCancellationDetails` |  |
| `invoiceNow` | `invoice_now` | `Boolean` |  |
| `prorate` | `prorate` | `Boolean` |  |

### `v02_DeleteSubscriptionsDiscount`

`DELETE /v1/subscriptions/{subscription_exposed_id}/discount` → `v02_DeletedDiscount`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `subscriptionExposedId` | `subscription_exposed_id` | `String` | ✓ |

### `v02_GetSubscriptions`

`GET /v1/subscriptions/{subscription_exposed_id}` → `v02_Subscription`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `subscriptionExposedId` | `subscription_exposed_id` | `String` | ✓ |

### `v02_GetSubscriptionsSearch`

`GET /v1/subscriptions/search` → `v02_SubscriptionSearchResult`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `query` | `query` | `String` | ✓ |
| `r_limit` | `limit` | `Integer` |  |
| `page` | `page` | `String` |  |

### `v02_ListSubscriptions`

`GET /v1/subscriptions` → `v02_SubscriptionsSubscriptionList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `automaticTax` | `automatic_tax` | `List<v02_AdditionalString>` |  |
| `collectionMethod` | `collection_method` | `String` |  |
| `created` | `created` | `v02_ListCreatedParameter` |  |
| `currentPeriodEnd` | `current_period_end` | `v02_ListCreatedParameter` |  |
| `currentPeriodStart` | `current_period_start` | `v02_ListCreatedParameter` |  |
| `customer` | `customer` | `String` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `plan` | `plan` | `String` |  |
| `price` | `price` | `String` |  |
| `startingAfter` | `starting_after` | `String` |  |
| `status` | `status` | `String` |  |
| `testClock` | `test_clock` | `String` |  |

### `v02_PostSubscriptionsResume`

`POST /v1/subscriptions/{subscription}/resume` → `v02_Subscription`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `subscription` | `subscription` | `String` | ✓ |
| `billingCycleAnchor` | `billing_cycle_anchor` | `String` |  |
| `prorationBehavior` | `proration_behavior` | `String` |  |
| `prorationDate` | `proration_date` | `Integer` |  |

### `v02_UpdateSubscriptions`

`POST /v1/subscriptions/{subscription_exposed_id}` → `v02_Subscription`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `subscriptionExposedId` | `subscription_exposed_id` | `String` | ✓ |
| `addInvoiceItems` | `add_invoice_items` | `List<v02_UpdateSubscriptionsReqAddInvoiceItem>` |  |
| `applicationFeePercent` | `application_fee_percent` | `Double` |  |
| `automaticTax` | `automatic_tax` | `v02_UpdateSubscriptionsReqAutomaticTax` |  |
| `billingCycleAnchor` | `billing_cycle_anchor` | `String` |  |
| `cancelAt` | `cancel_at` | `Integer` |  |
| `cancelAtPeriodEnd` | `cancel_at_period_end` | `Boolean` |  |
| `cancellationDetails` | `cancellation_details` | `v02_UpdateSubsReqCancellationDetails` |  |
| `collectionMethod` | `collection_method` | `String` |  |
| `daysUntilDue` | `days_until_due` | `Integer` |  |
| `defaultPaymentMethod` | `default_payment_method` | `String` |  |
| `defaultSource` | `default_source` | `String` |  |
| `defaultTaxRates` | `default_tax_rates (List<String>)` | `List<String>` |  |
| `description` | `description` | `String` |  |
| `discounts` | `discounts` | `List<v02_UpdateSubscriptionsReqDiscount>` |  |
| `invoiceSettings` | `invoice_settings` | `v02_UpdateSubsReqInvoiceSettings` |  |
| `items` | `items` | `List<v02_UpdateSubscriptionsReqItem>` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `offSession` | `off_session` | `Boolean` |  |
| `onBehalfOf` | `on_behalf_of` | `String` |  |
| `pauseCollection` | `pause_collection` | `v02_SubscriptionsResourcePauseCollection` |  |
| `paymentBehavior` | `payment_behavior` | `String` |  |
| `paymentSettings` | `payment_settings` | `v02_UpdateSubsReqPaymentSettings` |  |
| `pendingInvoiceItemInterval` | `pending_invoice_item_interval` | `v02_SubPendingInvoiceItemInterval` |  |
| `prorationBehavior` | `proration_behavior` | `String` |  |
| `prorationDate` | `proration_date` | `Integer` |  |
| `transferData` | `transfer_data` | `v02_UpdateSubscriptionsReqTransferData` |  |
| `trialEnd` | `trial_end` | `v02_UpdateSubscriptionsReqTrialEnd` |  |
| `trialFromPlan` | `trial_from_plan` | `Boolean` |  |
| `trialSettings` | `trial_settings` | `v02_UpdateSubscriptionsReqTrialSettings` |  |

## TerminalReaders

### `v02_PostTerminalReadersProcPaymentIntent`

`POST /v1/terminal/readers/{reader}/process_payment_intent` → `v02_TerminalReader`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `reader` | `reader` | `String` | ✓ |
| `paymentIntent` | `payment_intent` | `String` | ✓ |
| `processConfig` | `process_config` | `v02_PostTermrxProcPiReqProcConfig` |  |

### `v02_PostTerminalReadersProcSetupIntent`

`POST /v1/terminal/readers/{reader}/process_setup_intent` → `v02_TerminalReader`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `reader` | `reader` | `String` | ✓ |
| `allowRedisplay` | `allow_redisplay` | `String` | ✓ |
| `setupIntent` | `setup_intent` | `String` | ✓ |
| `processConfig` | `process_config` | `v02_PostTermrxProcSiReqProcConfig` |  |

### `v02_PostTerminalReadersRefundPayment`

`POST /v1/terminal/readers/{reader}/refund_payment` → `v02_TerminalReader`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `reader` | `reader` | `String` | ✓ |
| `amount` | `amount` | `Integer` |  |
| `charge` | `charge` | `String` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `paymentIntent` | `payment_intent` | `String` |  |
| `refundApplicationFee` | `refund_application_fee` | `Boolean` |  |
| `refundPaymentConfig` | `refund_payment_config` | `v02_PostTermrxRefundPymtReqRefundPy` |  |
| `reverseTransfer` | `reverse_transfer` | `Boolean` |  |

## TestHelpers

### `v02_PostTestHelpersCustomersFundCBal`

`POST /v1/test_helpers/customers/{customer}/fund_cash_balance` → `v02_CustomerCashBalanceTransaction`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `customer` | `customer` | `String` | ✓ |
| `amount` | `amount` | `Integer` | ✓ |
| `r_currency` | `currency` | `String` | ✓ |
| `reference` | `reference` | `String` |  |

### `v02_PostTestHelpersRefundsExpire`

`POST /v1/test_helpers/refunds/{refund}/expire` → `v02_Refund`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `refund` | `refund` | `String` | ✓ |

## TestingIssuingTransactions

### `v02_PostTestingIssuingTransactionsRefund`

`POST /v1/test_helpers/issuing/transactions/{transaction}/refund` → `v02_IssuingTransaction`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `r_transaction` | `transaction` | `String` | ✓ |
| `refundAmount` | `refund_amount` | `Integer` |  |

## Transfers

### `v02_CreateTransfers`

`POST /v1/transfers` → `v02_Transfer`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `r_currency` | `currency` | `String` | ✓ |
| `destination` | `destination` | `String` | ✓ |
| `amount` | `amount` | `Integer` |  |
| `description` | `description` | `String` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `sourceTransaction` | `source_transaction` | `String` |  |
| `sourceType` | `source_type` | `String` |  |
| `transferGroup` | `transfer_group` | `String` |  |

### `v02_CreateTransfersReversals`

`POST /v1/transfers/{id}/reversals` → `v02_TransferReversal`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `id` | `id` | `String` | ✓ |
| `amount` | `amount` | `Integer` |  |
| `description` | `description` | `String` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `refundApplicationFee` | `refund_application_fee` | `Boolean` |  |

### `v02_GetTransfers`

`GET /v1/transfers/{transfer}` → `v02_Transfer`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `transfer` | `transfer` | `String` | ✓ |

### `v02_GetTransfersReversals`

`GET /v1/transfers/{transfer}/reversals/{id}` → `v02_TransferReversal`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `id` | `id` | `String` | ✓ |
| `transfer` | `transfer` | `String` | ✓ |

### `v02_ListTransfers`

`GET /v1/transfers` → `v02_TransferList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `created` | `created` | `v02_ListCreatedParameter` |  |
| `destination` | `destination` | `String` |  |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |
| `transferGroup` | `transfer_group` | `String` |  |

### `v02_ListTransfersReversals`

`GET /v1/transfers/{id}/reversals` → `v02_TransferReversalList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `id` | `id` | `String` | ✓ |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |

### `v02_UpdateTransfers`

`POST /v1/transfers/{transfer}` → `v02_Transfer`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `transfer` | `transfer` | `String` | ✓ |
| `description` | `description` | `String` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |

### `v02_UpdateTransfersReversals`

`POST /v1/transfers/{transfer}/reversals/{id}` → `v02_TransferReversal`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `id` | `id` | `String` | ✓ |
| `transfer` | `transfer` | `String` | ✓ |
| `metadata` | `metadata` | `v02_Metadata` |  |

## TreasuryInboundTransfers

### `v02_CreateTreasuryInboundTransfers`

`POST /v1/treasury/inbound_transfers` → `v02_TreasuryInboundTransfer`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `amount` | `amount` | `Integer` | ✓ |
| `r_currency` | `currency` | `String` | ✓ |
| `financialAccount` | `financial_account` | `String` | ✓ |
| `originPaymentMethod` | `origin_payment_method` | `String` | ✓ |
| `description` | `description` | `String` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `statementDescriptor` | `statement_descriptor` | `String` |  |

### `v02_GetTreasuryInboundTransfers`

`GET /v1/treasury/inbound_transfers/{id}` → `v02_TreasuryInboundTransfer`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `id` | `id` | `String` | ✓ |

### `v02_ListTreasuryInboundTransfers`

`GET /v1/treasury/inbound_transfers` → `v02_TresInbXfersResourceInbXferList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `financialAccount` | `financial_account` | `String` | ✓ |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |
| `status` | `status` | `String` |  |

### `v02_PostTreasuryInboundTransfersCancel`

`POST /v1/treasury/inbound_transfers/{inbound_transfer}/cancel` → `v02_TreasuryInboundTransfer`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `inboundTransfer` | `inbound_transfer` | `String` | ✓ |

## TreasuryOutboundTransfers

### `v02_CreateTreasuryOutboundTransfers`

`POST /v1/treasury/outbound_transfers` → `v02_TreasuryOutboundTransfer`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `amount` | `amount` | `Integer` | ✓ |
| `r_currency` | `currency` | `String` | ✓ |
| `financialAccount` | `financial_account` | `String` | ✓ |
| `description` | `description` | `String` |  |
| `destinationPaymentMethod` | `destination_payment_method` | `String` |  |
| `destinationPaymentMethodData` | `destination_payment_method_data` | `v02_CreateTresObXfersReqDestPmData` |  |
| `destinationPaymentMethodOptions` | `destination_payment_method_options` | `v02_CreateTresOutboundXfersReqDestPMO` |  |
| `metadata` | `metadata` | `v02_Metadata` |  |
| `statementDescriptor` | `statement_descriptor` | `String` |  |

### `v02_GetTreasuryOutboundTransfers`

`GET /v1/treasury/outbound_transfers/{outbound_transfer}` → `v02_TreasuryOutboundTransfer`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `outboundTransfer` | `outbound_transfer` | `String` | ✓ |

### `v02_ListTreasuryOutboundTransfers`

`GET /v1/treasury/outbound_transfers` → `v02_TresObXfersResourceObXferList`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `financialAccount` | `financial_account` | `String` | ✓ |
| `endingBefore` | `ending_before` | `String` |  |
| `r_limit` | `limit` | `Integer` |  |
| `startingAfter` | `starting_after` | `String` |  |
| `status` | `status` | `String` |  |

### `v02_PostTreasuryOutboundTransfersCancel`

`POST /v1/treasury/outbound_transfers/{outbound_transfer}/cancel` → `v02_TreasuryOutboundTransfer`

| Param | Stripe API Name | Type | Required |
|---|---|---|---|
| `outboundTransfer` | `outbound_transfer` | `String` | ✓ |
