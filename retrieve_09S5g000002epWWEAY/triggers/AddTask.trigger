trigger AddTask on Opportunity (after insert,after update) {
   List<Task> TaskList = new List<Task>();
    // Testing DEV4
    // Testing DEV3
    //Testing DEV2
    // Testing DEV1
    for(Opportunity Opp : Trigger.new)
    {
        if(Opp.StageName == 'Closed Won')
        {
          Task newTask = new task();
          newTask.Subject = 'Follow Up Task for Opp' + Opp.Id;
          newTask.whatId = Opp.Id;
          TaskList.add(newTask);
        }
    }
  Insert TaskList;
}