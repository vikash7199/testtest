public with sharing class simpleProgram {
    // public void programvk() {
    //     Decimal p=1000 , r = 10 ,t=3;
    //     Decimal x = (p*r*t)/100; 
    //     System.debug('Simple Interest='+x);   
    // }


// video-33->   Datatypes in apex
    // public static void bool(){
    //     Boolean isActice = True;
    //     System.debug('value of isActive'+isActice);

    // }
    // public static void textstr(){
    //     String fname='Vikash', lname='kumar';
    //     System.debug('Name'+fname + ' ' + lname);
    // }
    // public static void ID(){
    //     Id accID = '003dL000002MhhtQAC';
    //     System.debug('account ID ='+accID);
    // }
  
    public static void insertAccountwithConAndOpp(){
        Account acc = new Account();
        acc.name = 'SGTS 5 ';
        insert acc;
        
        Contact c = new Contact();
        c.FirstName = 'Pramod kumaeeer';
        c.LastName = 'jha';
        c.accountId = acc.Id; // AccountId lookup to contact. 
        c.RecordTypeId = '012dL0000010vXBQAY';
        insert c;

        Opportunity opp = new Opportunity();
        opp.Name = 'opp501';
        opp.CloseDate = System.today();
        opp.accountId = acc.Id; // AccountId lookup to Opportunity.
        opp.StageName = 'Prospecting';
        insert opp;

        //custom object
        Household__c hs = new Household__c();
        hs.Name = 'Vikash kumar Prajapati';
        insert hs;
        //create aapplicaton

        Application__c app = new Application__c();
        List<Contact> ncon = [select id from Contact where Name = 'Pramod kumar' ];
        app.Name= 'prakash kumar';
        app.Parent_A__c= ncon[0].Id;
        
        Insert app;
        
    }

}