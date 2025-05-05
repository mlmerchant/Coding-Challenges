
Dim objFso, objFileHandle, strDisplayString, total

Set objFso = WScript.CreateObject("Scripting.FileSystemObject")
Set objFileHandle = objFso.OpenTextFile("01.txt", 1)

total = 0

Do While objFileHandle.AtEndOfStream = False
    total = total + (Floor(Clng(objFileHandle.ReadLine())/3) - 2)
Loop

objFileHandle.Close()

WScript.Echo total
' The answer is 3297866


Function Floor(number)
    If Instr(Cstr(number),".") > 0 Then
        Floor = Mid(Cstr(number),1,Instr(Cstr(number),".") - 1)
    Else
        Floor = number
    End If
End Function