Function Floor(number)
    If Instr(Cstr(number),".") > 0 Then
        Floor = Mid(Cstr(number),1,Instr(Cstr(number),".") - 1)
    Else
        Floor = number
    End If
End Function

Wscript.Echo Floor(14/3)