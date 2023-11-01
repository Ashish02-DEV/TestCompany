trigger AccountTrigger on Account (before insert,before update) {
     
      PracticeQuestion1.countCountry(Trigger.new);
}