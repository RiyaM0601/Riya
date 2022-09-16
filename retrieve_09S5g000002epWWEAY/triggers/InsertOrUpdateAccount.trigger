trigger InsertOrUpdateAccount on Account (before insert,before update) {
    for (Account acc : trigger.new){
        if(!acc.name.contains('Riya')){
            
      // Testing 2
        acc.name = 'Riya'+acc.name;
        }
    }

}