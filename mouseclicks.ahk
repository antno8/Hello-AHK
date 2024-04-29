SetTimer WatchCursor, 100

WatchCursor()
{
    MouseGetPos &mox, &moy , &id, &control
    ToolTip
    (
        "ahk_id " id "
        ahk_class " WinGetClass(id) "
        " WinGetTitle(id) "
        Control: " control "
        positions: x: " mox " 
        positions y: " moy 
    )
}
m & n:: {
    MouseGetPos &mox, &moy, &id, &control
    message := mox " ," moy " ,"
    FileAppend message "`r`n", "MouseClicks.txt"
}

m & b:: {
    MouseGetPos &mox, &moy, &id, &control
    MsgBox mox " " moy
}
m::m
d & a::Reload
d & s::Suspend
d::d