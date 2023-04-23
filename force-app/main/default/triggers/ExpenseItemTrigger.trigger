trigger ExpenseItemTrigger on ExpenseItem__c (before insert, before update) {
    new ExpenseItemTriggerHandler().run();
}