' Example VBScript reading text file, line by line.

Dim objFso, objFileHandle, strDisplayString
Set objFso = WScript.CreateObject("Scripting.FileSystemObject")
Set objFileHandle = objFso.OpenTextFile("Example.txt", 1)

Do While objFileHandle.AtEndOfStream = False
    strDisplayString = strDisplayString & objFileHandle.ReadLine() & vbCrLf
Loop

objFileHandle.Close()

WScript.Echo strDisplayString
