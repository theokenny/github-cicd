public class CustomCaseTriggerHandler extends TriggerHandler {
    public override void beforeInsert() {
        System.debug('TriggerNew: ' +Trigger.New);
    }
    public override void beforeUpdate() {
        
    }
}