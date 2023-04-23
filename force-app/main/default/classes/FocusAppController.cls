public with sharing class FocusAppController {
    
    @AuraEnabled(cacheable=true)
    public static Decimal getFocusSetting(String label) {
        List<Timer__mdt> timerList = [SELECT Id, Label, DeveloperName, Minutes__c FROM Timer__mdt WHERE Label =:label];
        return timerList[0].Minutes__c;
    }
}