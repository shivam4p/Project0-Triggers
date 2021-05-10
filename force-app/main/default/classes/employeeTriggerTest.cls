@isTest
private class employeeTriggerTest{
    @testSetup
    private static void employeeTriggerTestData(){
        Employee__c aEmployee = new Employee__c(Name = 'Tester1', Employee_ID__c = 123456 , Title__c = 'Bank Teller');
        insert aEmployee;
        List<Employee__c> Employees = [SELECT Name FROM Employee__c];
        System.debug(Employees.size());
    }

    @isTest
    private static void employeeTriggerPassingTest(){
        Employee__c aEmployee = new Employee__c(Name = 'Tester2', Employee_ID__c = 123457 , Title__c = 'Bank Teller');
        insert aEmployee;
        List<Employee__c> Employees = [SELECT Name FROM Employee__c];
        System.debug(Employees.size());
    }

    @isTest
    private static void employeeTriggerFailingTest(){
        Employee__c aEmployee = new Employee__c(Name = 'Tester1', Employee_ID__c = 123456 , Title__c = 'Bank Teller');
        insert aEmployee;
        List<Employee__c> Employees = [SELECT Name FROM Employee__c];
        System.debug(Employees.size());
    }




}
