m & n:: {
    MouseGetPos &mox, &moy, &id, &control
    message := mox " ," moy " ,"
    FileAppend message "`r`n", "MouseClicks.txt"
}
m & b:: {
    MouseGetPos &mox, &moy, &id, &control
    MsgBox mox " " moy
    ;message := mox " " moy " " WinGetTitle(id)
    ;FileAppend message "`r`n", "MouseClicks.txt"
}
d & a::Reload
d & s::Suspend
d::d