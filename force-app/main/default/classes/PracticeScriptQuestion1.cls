//Calculate the difference between each contacts startdate and enddate fields and the contact which has the minimum difference of startdate and enddate, 
//populate that contacts startdate and enddate fields on the account objects startdate and enddate fields.
public class PracticeScriptQuestion1 { 
     public static void calculateDiffrInDate() {
           
         
            List<Contact> ConList = new List<Contact>();
            ConList = [SELECT Id, Name,AccountID,End_Date__c,Start_Date__c FROM Contact where AccountId != NULL AND End_Date__c != NULL AND Start_Date__c != NULL];
           Map<id,Contact> AccvsCon = new Map<id,Contact>();
           for(Contact conInstance: ConList){
               if(AccvsCon.containskey(conInstance.AccountId)){
                   if(AccvsCon.get(conInstance.AccountId).Start_Date__c.daysBetween(AccvsCon.get(conInstance.AccountId).End_Date__c)>conInstance.Start_Date__c.daysBetween(conInstance.End_Date__c)){
                       AccvsCon.put(conInstance.AccountId,conInstance);
                   }
               }
               else{
                   AccvsCon.put(conInstance.AccountId,conInstance);
               }
           }
         List<Account> accountList = new List<Account>();
         for(ID accIdKey: AccvsCon.keySet()){
             Account accInstance = new Account();
             accInstance.Id = accIdKey;
             accInstance.Start_Date__c = AccvsCon.get(accIdKey).Start_Date__c;
             accInstance.End_Date__c = AccvsCon.get(accIdKey).End_Date__c;
             accountList.add(accInstance);
         }
         if(accountList!=null && !accountList.isEmpty()){
             Update accountList;
         }
     } 
}