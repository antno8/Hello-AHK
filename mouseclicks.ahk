m & n:: {
    MouseGetPos &mox, &moy, &id, &control
    message := mox " ," moy " ,"
    FileAppend message "`r`n", "MouseClicks.txt"
}

m & b:: {
    MouseGetPos &mox, &moy, &id, &control
    MsgBox mox " " moy
}
d & a::Reload
d & s::Suspend
d::d