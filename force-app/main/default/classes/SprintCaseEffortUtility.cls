public with sharing class SprintCaseEffortUtility {
    
    public void updateDateLog(List<Sprint_Case_Efforts__c> effortList) {
        
        for(Sprint_Case_Efforts__c timeLog: effortList) {
            timeLog.Date_Logged__c = (timeLog.Date_Logged__c == NULL) ? System.today() : timeLog.Date_Logged__c;
        }
    }
}