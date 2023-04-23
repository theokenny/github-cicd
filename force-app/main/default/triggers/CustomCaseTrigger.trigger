trigger CustomCaseTrigger on Custom_Case__c (before insert) {
    new CustomCaseTriggerHandler().run();
}