trigger bankAccountTrigger on Bank_Account__c (before insert, before update) {
    List<Bank_Account__c> bankaccounts = [SELECT Customer__c, Type__c FROM Bank_Account__c];
    for(Bank_Account__c NewBA: trigger.new){
        for(Bank_Account__c OldBA: bankaccounts){
            if(NewBA.Customer__c == OldBA.Customer__c && NewBA.Type__c == OldBA.Type__c){
                NewBA.Type__c.addError('This Customer Already Has This Type of Account');
            }
        }
    } 

}