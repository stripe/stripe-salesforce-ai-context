public with sharing class ChargeOpportunityLinkerQueueable implements Queueable {

    private static final Integer MAX_ATTEMPTS = 3;

    private Id opportunityId;
    private String chargeId;
    private Integer attempt;

    public ChargeOpportunityLinkerQueueable(Id opportunityId, String chargeId, Integer attempt) {
        this.opportunityId = opportunityId;
        this.chargeId = chargeId;
        this.attempt = attempt;
    }

    public void execute(QueueableContext ctx) {
        List<stripeGC__Charge__c> charges = [
            SELECT Id
            FROM stripeGC__Charge__c
            WHERE stripeGC__Stripe_Id__c = :chargeId
            WITH USER_MODE
            LIMIT 1
        ];

        if (!charges.isEmpty()) {
            charges[0].Opportunity__c = opportunityId;
            update charges[0];
        } else if (attempt < MAX_ATTEMPTS) {
            System.enqueueJob(
                new ChargeOpportunityLinkerQueueable(opportunityId, chargeId, attempt + 1),
                1
            );
        }
    }
}
