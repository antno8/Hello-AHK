FileEncoding "UTF-8"
OnClipboardChange ClipChanged

ClipChanged(*) {
    ;MsgBox(">" SubStr(A_Clipboard, 1, 100) "<")
    MouseGetPos &mox, &moy, &id, &control
    ;message := mox " " moy " " A_Clipboard "  " WinGetTitle(id)
    message:= A_Clipboard
    FileAppend message "`r`n", "My File2.txt"
}