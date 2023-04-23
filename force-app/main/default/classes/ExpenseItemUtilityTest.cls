@isTest
public with sharing class ExpenseItemUtilityTest {
   
    @isTest
    static void weeklyExpense() {
        ExpenseItem__c expRec = TestDataFactory.createExpenseItem('Weekly');
        List<ExpenseItem__c> expList = new List<ExpenseItem__c>();
        expList.add(expRec);
        ExpenseItemUtility expItemObj = new ExpenseItemUtility();
        
        Double freqVal = (double) 52 / 12;
        Test.startTest();
            Double result = expRec.Amount__c * freqVal;
            expItemObj.updateMonthlyAmount(expList);
        Test.stopTest();
        System.assertEquals(result, expList[0].Monthly_Amount__c);
        expList[0].Amount__c = 200;
        update expList;
        System.assertEquals(result, expList[0].Monthly_Amount__c);
    }
    @isTest
    static void fortnightlyExpense() {
        ExpenseItem__c expRec = TestDataFactory.createExpenseItem('Fortnightly');
        List<ExpenseItem__c> expList = new List<ExpenseItem__c>();
        expList.add(expRec);
        ExpenseItemUtility expItemObj = new ExpenseItemUtility();
        
        Double freqVal = 26 / 12;
        Test.startTest();
            Double result = expRec.Amount__c * freqVal;
            expItemObj.updateMonthlyAmount(expList);
        Test.stopTest();
        System.assertEquals(result, expList[0].Monthly_Amount__c);
    }
    @isTest
    static void monthlyExpense() {
        ExpenseItem__c expRec = TestDataFactory.createExpenseItem('Monthly');
        List<ExpenseItem__c> expList = new List<ExpenseItem__c>();
        expList.add(expRec);
        ExpenseItemUtility expItemObj = new ExpenseItemUtility();
        
        Double freqVal = 1;
        Test.startTest();
            Double result = expRec.Amount__c * freqVal;
            expItemObj.updateMonthlyAmount(expList);
        Test.stopTest();
        System.assertEquals(result, expList[0].Monthly_Amount__c);
    }
    @isTest
    static void quarterlyExpense() {
        ExpenseItem__c expRec = TestDataFactory.createExpenseItem('Quarterly');
        List<ExpenseItem__c> expList = new List<ExpenseItem__c>();
        expList.add(expRec);
        ExpenseItemUtility expItemObj = new ExpenseItemUtility();
        
        Double freqVal = (double) 4/12;
        Test.startTest();
            Double result = expRec.Amount__c * freqVal;
            expItemObj.updateMonthlyAmount(expList);
        Test.stopTest();
        System.assertEquals(result, expList[0].Monthly_Amount__c);
    }
    @isTest
    static void yearlyExpense() {
        ExpenseItem__c expRec = TestDataFactory.createExpenseItem('Yearly');
        List<ExpenseItem__c> expList = new List<ExpenseItem__c>();
        expList.add(expRec);
        ExpenseItemUtility expItemObj = new ExpenseItemUtility();
        
        Double freqVal = (double) 1/12;
        Test.startTest();
            Double result = expRec.Amount__c * freqVal;
            expItemObj.updateMonthlyAmount(expList);
        Test.stopTest();
        System.assertEquals(result, expList[0].Monthly_Amount__c);
    }
}