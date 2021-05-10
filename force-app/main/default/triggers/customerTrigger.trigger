trigger customerTrigger on Customer__c (before insert, before update) {
    List<Customer__c> customers = [SELECT Name, Social_Security__c FROM Customer__c];
        for(Customer__c NewCust: trigger.new){
            for(Customer__c OldCust: customers){
                if(NewCust.Name == OldCust.Name && NewCust.Social_Security__c == OldCust.Social_Security__c){
                    NewCust.Name.addError('This Name and Corresponding SSN Exists');
                }
            }
        } 

}

