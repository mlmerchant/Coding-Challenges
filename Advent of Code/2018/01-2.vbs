
Dim objFso, objFileHandle, strDisplayString, total, history
Set objFso = WScript.CreateObject("Scripting.FileSystemObject")
Set objFileHandle = objFso.OpenTextFile("01.txt", 1)

total = 0
history = ""

Do While True
    
    total = total + Clng(Replace(objFileHandle.ReadLine(),"+",""))
    key = "(" + Cstr(total) + ")"
    If InStr(history, key) > 0 Then
        WScript.Echo total
        Exit Do
    End If
    history = history + key

    If objFileHandle.AtEndOfStream = True Then
        Set objFileHandle = objFso.OpenTextFile("01.txt", 1)
    End If

Loop

objFileHandle.Close()
' The answer is 73364