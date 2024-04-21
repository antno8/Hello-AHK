returnByRef(&A,&B,&C)
MsgBox A "," B "," C

returnByRef(&val1, &val2, val3)
{
    val1 := "A"
    val2 := 100
    %val3% := 1.1  ; % is used because & was omitted.
    return
}