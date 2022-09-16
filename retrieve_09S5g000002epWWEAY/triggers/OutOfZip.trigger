trigger OutOfZip on Account (after update) {
   Set<Id>AccountId = new Set<Id>();
   // Testing D3
	for(Account acc:Trigger.new)
    {
        AccountId.add(acc.Id);
    }
}