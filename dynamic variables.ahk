target := 42
second := "target"
MsgBox  second   ; Normal (single) variable reference => target
MsgBox %second%  ; Double-deref => 42

clr := {}
for n, component in ["red", "green", "blue"]
    clr.%component% := Random(0, 255)
MsgBox clr.red "," clr.green "," clr.blue