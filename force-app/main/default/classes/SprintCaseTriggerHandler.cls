public with sharing class SprintCaseTriggerHandler extends TriggerHandler {
    public override void beforeUpdate() {
        System.debug('before update');
        new SprintCaseEffortUtility().updateDateLog(Trigger.New);
    }
    public override void beforeInsert() {
        System.debug('before insert');
        new SprintCaseEffortUtility().updateDateLog(Trigger.New);
    }
}