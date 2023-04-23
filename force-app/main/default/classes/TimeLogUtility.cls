public class TimeLogUtility {
    //updateLoggedDate(List<TimeLost__c>)
    //if user does not put any date, use createdDate value
    public void updateDateLog(List<TimeLog__c> timeLogList) {
        
        for(TimeLog__c timeLog: timeLogList) {
            timeLog.Date_Logged__c = (timeLog.Date_Logged__c == NULL) ? timeLog.createdDate.date() : timeLog.Date_Logged__c;
        }
    }
}