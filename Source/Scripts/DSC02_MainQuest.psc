Scriptname DSC02_MainQuest extends Quest  
{Maintenance quest for Warehouse DSC02}

String Version

Event OnInit()
    Maintenance() ; OnPlayerLoadGame will not fire the first time
    RegisterForSingleUpdate(2)
EndEvent

Event OnUpdate()
    Log("OnUpdate fired")
    ;RegisterForSingleUpdate(2)
EndEvent

Function Maintenance()
    If Version != "1.0"
        Version = "1.0"
        Debug.Notification("DSC Warehouse Custom Light v" + Version)
        ; Update Code
    EndIf
    ; Other maintenance code that only needs to run once per save load
EndFunction

Function Log(String msg, String modname="DSC02")
    Debug.Trace("[" + modname + "] " + self + " " + msg)
EndFunction
