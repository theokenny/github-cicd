public with sharing class AccountUtility {
    String rollupCasesEffort(Integer hours, Integer minutes) {
        String result = '';
        Integer calcHours = (Integer) Math.floor((hours * 60 + minutes) / 60);
        Integer calcMinutes = (Integer) Math.mod(hours * 60 + minutes, 60);
        result = String.valueOf(calcHours)+ ' Hours ' + String.valueOf(calcMinutes)+ ' Minutes';
        return result; 
    }
}