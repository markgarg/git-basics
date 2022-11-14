public class AccountTriggerHandler extends TriggerHandler {
	private static Boolean firstTime = true;
    private static Integer numOfTimes = 0;


    protected override void beforeInsert() {
        System.debug('in before insert trigger handler');
       System.debug('Rohit git');
        System.debug('Gokul');
        
        System.debug('trigger new :' + Trigger.new);
        if(Trigger.new.size() > 0){
            // new code
            // code is finished now
        }
    }
    
    protected override void afterUpdate(){
        System.debug('rohit 1');
        AccountTriggerHandler.numOfTimes++;
        System.debug('num of times :' + AccountTriggerHandler.numOfTimes);
        if(firstTime) {
            System.debug('sending email to manager');
        	//CODE TO SEND EMAIL to manager
        	firstTime = false;
        }
    	System.debug('In Account after update trigger');
        // 1. Find out if account amount has changed
        List<Account> accountsWhoseAmountChanged = new List<Account>();
        for(Account newAcc : (List<Account>) Trigger.new) {
            Account oldAcc = (Account) Trigger.oldMap.get(newAcc.Id);
            if(newAcc.Amount__c != oldAcc.Amount__c) {
                // amount has changed
                accountsWhoseAmountChanged.add(newAcc);
            }
        }
        // 2. Find the cases which are not closed of the accounts from Step 1.
        List<Case> cases = [SELECT Id, Account_Amount__c, AccountId FROM Case WHERE AccountId IN :accountsWhoseAmountChanged AND Status != 'Closed'];
        // 3. Loop through these cases from step 2, and update the 'Account_Amount__c' field
        for(Case cc : cases) {
            String accountId = cc.AccountId;
            Account newAcc = (Account) Trigger.newMap.get(accountId);
            cc.Account_Amount__c = newAcc.Amount__c;
        }
        update cases;
    }
}