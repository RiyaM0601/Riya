trigger UpdateSalesRep on Account (before insert,before update) {
    // Testing 1
    List<Id> OwnerId = New List <Id>();
    for(Account acc:Trigger.new)
    {
        OwnerId.add(acc.OwnerId);
    }
    
    Map<Id,user> UserName = new Map<Id,user>([SELECT Id,Name from user where Id IN:OwnerId]);
    for(Account acc:Trigger.new)
    {
        user usern = UserName.get(acc.OwnerId);
        acc.Sales_Rep__c = usern.Name;
    }
}