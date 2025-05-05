
Dim objFso, objFileHandle, strDisplayString, total
Set objFso = WScript.CreateObject("Scripting.FileSystemObject")
Set objFileHandle = objFso.OpenTextFile("01.txt", 1)

total = Clng(0)

Do While objFileHandle.AtEndOfStream = False
    total = total + Clng(Replace(objFileHandle.ReadLine(),"+",""))
Loop

objFileHandle.Close()

WScript.Echo total
' Answer is 522