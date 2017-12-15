Scriptname DSC02_LightsUpQuest Extends Quest
{Warehouse Lights Up Quest Main Script}

Event OnInit()
    RegisterForSingleUpdate(2)
EndEvent

Event OnUpdate()
    TryEndingQuest()
    ;RegisterForSingleUpdate(1)
EndEvent

State Done
EndState

Function TryEndingQuest()
    bool bCompleted = TRUE
    bCompleted = bCompleted && IsObjectiveCompleted(10)
    bCompleted = bCompleted && IsObjectiveCompleted(20)
    bCompleted = bCompleted && IsObjectiveCompleted(30)
    bCompleted = bCompleted && IsObjectiveCompleted(40)
    bCompleted = bCompleted && IsObjectiveCompleted(50)

    If bCompleted
        SetStage(20)
        GoToState("Done")
    EndIf
EndFunction