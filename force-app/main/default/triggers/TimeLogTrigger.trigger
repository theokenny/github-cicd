trigger TimeLogTrigger on TimeLog__c (before insert, before update) {
    new TimeLogTriggerHandler().run();
}