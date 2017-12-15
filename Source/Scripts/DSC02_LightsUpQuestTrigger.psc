Scriptname DSC02_LightsUpQuestTrigger extends ReferenceAlias  
{Trigger for Warehouse Lights Up Quest}

DSC02_LightsUpQuest Property QuestScript Auto

Event OnTriggerEnter(ObjectReference akActionRef)
    If akActionRef == Game.GetPlayer() ; This condition ensures that only the player will trigger this code
        Log("Player entered the quest trigger")
        Log("Starting the quest")
        
        QuestScript.Start()
        QuestScript.SetObjectiveDisplayed(10)
        QuestScript.SetStage(10)
        utility.wait(1)  ; give some time to the quest to start
        
        ;RegisterForSingleUpdate(2)
    EndIf
EndEvent

Function Log(String msg, String modname="DSC02")
    Debug.Trace("[" + modname + "] " + self + " " + msg)
EndFunction