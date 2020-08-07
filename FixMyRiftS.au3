#RequireAdmin

Main()

Func Main()

	#Region ; Extract Dependancies
	If Not FileExists(@TempDir & ".\FMRS\FixMyRiftS.ps1") Then
		DirCreate(@TempDir & "\FMRS")
		FileInstall(".\FixMyRiftS.ps1", @TempDir & "\FMRS\FixMyRiftS.ps1")
	EndIf
	#EndRegion

	#Region ;Toggle Device
	ShellExecute("powershell " & @TempDir & "\FMRS\FixMyRiftS.ps1")
	#EndRegion

EndFunc


; USB\VID_2833&PID_2051&REV_0108
; USB\VID_2833&PID_2052&REV_0108
