public class testclss {
    public static void main (){
         
        List<Contact> Conlist = [SELECT id, LastName,Account.Name ,AccountId  from Contact where AccountId != NULL LIMIT 50000];
        
        Map<id,List<Contact>> AccVsConMap = new Map<id,List<Contact>>();
        
        Map<id,Account> ConVsAccMap = new Map<id,Account>();
               
        for(Contact con: Conlist){
            if(AccVsConMap.containskey(Con.Accountid)){
                 AccVsConMap.get(Con.AccountId).add(Con);
            }
            else{
                AccVsConMap.put(con.AccountId, new List<Contact> {con});
            }
        }
        for(Contact con: Conlist){
           
                ConVsAccMap.put(con.id,con.Account);
           
        }
        
        for(Contact con: Conlist){
           //System.debug('TestAcc:'+ con.AccountId + ' Size '+ AccVsConMap.get(Con.AccountId).size());
            System.debug('ConID:'+ Con.Id + ' Size '+ AccVsConMap.get(Con.id));
        }
     }
}