#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_Res_Comment=Compiled 8/7/2020 @ 11:45 EST
#AutoIt3Wrapper_Res_Description=FixMyRiftS
#AutoIt3Wrapper_Res_Fileversion=0.1.0.0
#AutoIt3Wrapper_Res_LegalCopyright=Robert Maehl, using LGPL 3 License
#AutoIt3Wrapper_Res_Language=1033
#AutoIt3Wrapper_Run_Au3Stripper=y
#Au3Stripper_Parameters=/pe /so
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

#RequireAdmin

Main()

Func Main()

	$sVer = "0.1"

	ProgressOn("Fix My Rift S " & $sVer, "Fixing Rift S")
	ProgressSet(33, "Disabling USB Hub", "Fixing Rift S")
	RunWait("powershell -Command Get-PnpDevice -FriendlyName 'Rift S USB Hub' | Disable-PnpDevice -confirm:$false", "", @SW_HIDE)
	ProgressSet(67, "Enabling USB Hub", "Fixing Rift S")
	RunWait("powershell -Command Get-PnpDevice -FriendlyName 'Rift S USB Hub' | Enable-PnpDevice -confirm:$false", "", @SW_HIDE)
	ProgressSet(100, "Done", "Fixing Rift S")
	Sleep(1000)
	ProgressOff()

EndFunc