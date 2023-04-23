public class ExpenseItemUtility {
    
    public void updateMonthlyAmount(List<ExpenseItem__c> expenseItemList) {
        
        for(ExpenseItem__c expenseItemRec: expenseItemList) {
            calcMonthlyAmount(expenseItemRec);
        }
    }
    //calculate Monthly Amount based on Frequency
    private void calcMonthlyAmount(ExpenseItem__c expenseItemParam) {
        Double freqVal = NULL;

        switch on expenseItemParam.Frequency__c {
            when 'Weekly' {
                freqVal = (double) 52 / 12;
                expenseItemParam.Monthly_Amount__c = expenseItemParam.Amount__c * freqVal;
            }
            when 'Fortnightly' {
                freqVal = 26 / 12; //as my expense, it rounds up the time
                expenseItemParam.Monthly_Amount__c = expenseItemParam.Amount__c * freqVal;
            }
            when 'Monthly' {
                freqVal = 1;
                expenseItemParam.Monthly_Amount__c = expenseItemParam.Amount__c * freqVal;
            }
            when 'Quarterly' {
                freqVal = (double) 4/12;
                expenseItemParam.Monthly_Amount__c = expenseItemParam.Amount__c * freqVal;
            }
            when 'Yearly' {
                freqVal = (double) 1/12;
                expenseItemParam.Monthly_Amount__c = expenseItemParam.Amount__c * freqVal;
            }
        }
    }
}