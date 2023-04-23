public with sharing class SprintCaseEffortTriggerHandler extends TriggerHandler {
    public override void beforeUpdate() {
        new SprintCaseEffortUtility().updateDateLog(Trigger.New);
    }
    public override void beforeInsert() {
        new SprintCaseEffortUtility().updateDateLog(Trigger.New);
    }
}