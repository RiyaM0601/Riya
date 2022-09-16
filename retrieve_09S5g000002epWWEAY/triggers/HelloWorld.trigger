trigger HelloWorld on Lead (before update) {
        for(lead l : Trigger.new)
        {
        l.firstname = 'Hello';
        l.lastname = 'world';
        }
		// testing 1
	//Testing 3
		//Testing 2
}