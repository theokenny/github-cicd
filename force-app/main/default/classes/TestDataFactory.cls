@isTest
public class TestDataFactory {

    public static ExpenseItem__c createExpenseItem(String freq) {
        Expense__c exp = new Expense__c(Name='Monthly Expense');
        insert exp;
        ExpenseItem__c expenseRec = new ExpenseItem__c(Name='Test Expense ', Amount__c=100, Frequency__c=freq, Expense__c=exp.Id);
        insert expenseRec;
        return expenseRec;
    }

}