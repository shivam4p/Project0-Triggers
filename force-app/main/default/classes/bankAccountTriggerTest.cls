@isTest
private class bankAccountTriggerTest{
    @testSetup
    private static void bankAccountTriggerTestData(){
        Customer__c aCustomer = new Customer__c(Name = 'Tester1',Cell_Phone_Number__c = '8325551234',Email_Address__c = 'Tester1@test.com',Social_Security__c = '111111111');
        insert aCustomer;
        Bank_Account__c aBankAccount = new Bank_Account__c(Customer__c = 'Tester1', Type__c = 'Checking', Initial_Balance__c = 5000);
        insert aBankAccount;
        List<Bank_Account__c> BankAccounts = [SELECT Name FROM Bank_Account__c];
        System.debug(BankAccounts.size());
    }

    @isTest
    private static void bankAccountTriggerPassingTest(){
        Bank_Account__c aBankAccount = new Bank_Account__c(Customer__c = 'Tester1', Type__c = 'Saving', Initial_Balance__c = 5000);
        insert aBankAccount;
        List<Bank_Account__c> BankAccounts = [SELECT Name FROM Bank_Account__c];
        System.debug(BankAccounts.size());
    }

    @isTest
    private static void bankAccountTriggerFailingTest(){
        Bank_Account__c aBankAccount = new Bank_Account__c(Customer__c = 'Tester1', Type__c = 'Checking', Initial_Balance__c = 2000);
        insert aBankAccount;
        List<Bank_Account__c> BankAccounts = [SELECT Name FROM Bank_Account__c];
        System.debug(BankAccounts.size());
    }




}
