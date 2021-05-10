trigger employeeTrigger on Employee__c (before insert, before update) {
    List<Employee__c> employees = [SELECT Name, Employee_ID__c, Title__c FROM Employee__c];
    for(Employee__c NewEmp: trigger.new){
        for(Employee__c OldEmp: employees){
            if(NewEmp.Name == OldEmp.Name && NewEmp.Employee_ID__c == OldEmp.Employee_ID__c && NewEmp.Title__c == OldEmp.Title__c){
                NewEmp.Name.addError('This Employee with the Corresponding Employee ID and Title Exists');
            }
        }
    } 


}