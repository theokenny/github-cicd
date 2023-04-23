public with sharing class AccountTriggerHandler extends TriggerHandler {
    public override void beforeInsert() {
        System.debug('TriggerNew: ' +Trigger.New);
    }
    public override void beforeUpdate() {
        
    }
}