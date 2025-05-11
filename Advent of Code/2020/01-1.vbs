
Dim objFso, objFileHandle1, objFileHandle2, strDisplayString, item1, item2, Finished

Set objFso = WScript.CreateObject("Scripting.FileSystemObject")
Finished = False

Set objFileHandle1 = objFso.OpenTextFile("01.txt", 1)
Do While objFileHandle1.AtEndOfStream = False
    item1 = Cint(objFileHandle1.ReadLine())
    Set objFileHandle2 = objFso.OpenTextFile("01.txt", 1)
    Do While objFileHandle2.AtEndOfStream = False
        item2 = Cint(objFileHandle2.ReadLine())
        If ((item1 + item2) = 2020) And (item1 <> item2) Then
            WScript.Echo (item1 * item2)
            Finished = True
            Exit Do 
        End If
    Loop
    If Finished Then
        Exit Do
    End If
Loop

objFileHandle.Close()

' Answer is 712075