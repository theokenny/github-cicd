public class ExpenseItemTriggerHandler extends TriggerHandler {
    public override void beforeInsert() {
        new ExpenseItemUtility().updateMonthlyAmount(Trigger.New);
    }
    public override void beforeUpdate() {
        //calculate Monthly Amount and pass New value from the Trigger
        new ExpenseItemUtility().updateMonthlyAmount(Trigger.New);
    }
}