public class TimeLogTriggerHandler extends TriggerHandler {
    public override void beforeInsert() {

    }
    public override void beforeUpdate() {
        new TimeLogUtility().updateDateLog(Trigger.New);
    }
}