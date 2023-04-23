trigger SprintCaseTrigger on Sprint_Case_Efforts__c (before insert, before update) {
    new SprintCaseEffortTriggerHandler().run();
}