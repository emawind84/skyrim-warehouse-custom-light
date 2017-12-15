Scriptname DSC02_PlayerAliasScript extends ReferenceAlias
{Script used in maintenance quest}

DSC02_MainQuest Property QuestScript Auto

Event OnPlayerLoadGame()
    QuestScript.Maintenance()
EndEvent