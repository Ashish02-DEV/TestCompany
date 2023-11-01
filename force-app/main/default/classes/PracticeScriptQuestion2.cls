// WAT to restrict a passenger to apply for reservation for same day and for same train"""
public class PracticeScriptQuestion2 {
    public static void restrictReservation(List<Reservation__c> ReservationIds) {
         
        List<id> passengerIds = new List<id>();
        for(Reservation__c reservationInstance: ReservationIds){
             Passenger__c PassengerInstance = new Passenger__c();
            passengerIds.add(reservationInstance.PassengerID__c);
        }
        
        List<Reservation__c> duplicateReservationIds = new List<Reservation__c>();
        duplicateReservationIds = [SELECT Id,PassengerID__c FROM Reservation__c LIMIT 10000];
   }
}