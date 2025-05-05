
' Example VBScript If ElseIf Else statement

If 1 = 3 Then
    Wscript.Echo "This will skip."
ElseIf False Then
    Wscript.Echo "This will also skip."
Else
    Wscript.Echo "This will print."
End If