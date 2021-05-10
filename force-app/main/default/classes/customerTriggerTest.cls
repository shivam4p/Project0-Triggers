@isTest
private class customerTriggerTest{
    @testSetup
    private static void customerTriggerTestData(){
        Customer__c aCustomer = new Customer__c(Name = 'Tester1',Cell_Phone_Number__c = '8325551234',Email_Address__c = 'Tester1@test.com',Social_Security__c = '111111111');
        insert aCustomer;
        List<Customer__c> Customers = [SELECT Name FROM Customer__c];
        System.debug(Customers.size());
    }

    @isTest
    private static void customerTriggerPassingTest(){
        Customer__c aCustomer = new Customer__c(Name = 'Tester2',Cell_Phone_Number__c = '8325551235',Email_Address__c = 'Tester2@test.com',Social_Security__c = '222222222');
        insert aCustomer;
        List<Customer__c> Customers = [SELECT Name FROM Customer__c];
        System.debug(Customers.size());
    }

    @isTest
    private static void customerTriggerFailingTest(){
        Customer__c aCustomer = new Customer__c(Name = 'Tester1',Cell_Phone_Number__c = '8325551234',Email_Address__c = 'Tester1@test.com',Social_Security__c = '111111111');
        insert aCustomer;
        List<Customer__c> Customers = [SELECT Name FROM Customer__c];
        System.debug(Customers.size());
    }




}
