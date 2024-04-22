FileEncoding "UTF-8"

d & a:: Reload
d & s:: Suspend
A_Clipboard := ""
d & q:: {
    A_Clipboard := ""
    Send "^c"
    ClipWait
    MouseGetPos &mox, &moy, &id, &control
    message := mox " " moy " " A_Clipboard "  " WinGetTitle(id)
    FileAppend message "`r`n", "My File.txt"
}

XButton1 & LButton:: {
    A_Clipboard := ""
    Send "^{c 2}"
    ClipWait
    message := A_Clipboard " = "
    FileAppend message, "My File2.txt"
    
    }
XButton1 & RButton:: {
    A_Clipboard := ""
    Send "^c"
    ClipWait
    MouseGetPos &mox, &moy, &id, &control
    message := A_Clipboard
    FileAppend message "`r`n", "My File2.txt"
}
XButton1::XButton1
CapsLock::Send "{click 2}"

d::d