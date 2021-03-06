Scriptname DSC02_Q1_20 extends ReferenceAlias
{Second objective of warehouse lights up quest}

Event OnActivate(ObjectReference akActionRef)
    If akActionRef == Game.GetPlayer() ; This condition ensures that only the player will trigger this code
        GetOwningQuest().SetObjectiveCompleted(20)
        (GetOwningQuest() as DSC02_LightsUpQuest).TryEndingQuest()
    EndIf
EndEvent