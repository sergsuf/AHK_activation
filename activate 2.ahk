#SingleInstance Force
SetWorkingDir A_ScriptDir
SetKeyDelay 0

; Declare global variables
global v22, v23, v24, crn, vr, xsmp

; path1 := "chaos-corona-10-3dsmax\Fix"
path1 := "test"
path2 := "V-Ray 6 for 3ds Max 2018 - 2023 by MSI"
path3 := "SIGERSHADERS XS Material Presets Studio v4.2 for 3ds Max 2016-2023 (x64) [WiN] UPDATE ONLY\XSMPmaxPatch420"
;~ MsgBox path3

MyGui := Gui(, "Crack")
MyGui.Add("CheckBox", "x10 y2 w120 h23 vv22", "2022")
MyGui.Add("CheckBox", "x10 y26 w120 h23 Checked vv23", "2023")
MyGui.Add("CheckBox", "x10 y50 w120 h23 vv24", "2024")
MyGui.Add("CheckBox", "x10 y90 w120 h23 Checked vcrn", "Corona")
MyGui.Add("CheckBox", "x10 y113 w120 h23 vvr", "Vray")
MyGui.Add("CheckBox", "x10 y136 w120 h23 vxsmp", "XSMP")
Btn := MyGui.Add("Button", "x10 y165 w80 h23", "Install").OnEvent("Click", BtnInstall) ; vinst ginst


;~ MyGui.Opt("+AlwaysOnTop")
MyGui.Show("w137 h200")
;Gui, Submit, NoHide

Loop 1
{
    MyGui.Flash
    Sleep 500
}
MyGui.OnEvent("Close", ProcessUserInput)
MyGui.OnEvent("Escape", ProcessUserInput)
ProcessUserInput(*)
{
	ExitApp
}
BtnInstall(*)
{
	MsgBox "Installed"
}
return





g2023:
g2022:
gcrn:
gvr:
gxsmp:
return


inst:
;Gui, Submit, NoHide
if (v22==0 && v23==0 && v24==0)
MsgBox choose max version to activate
else {
if (crn==1) {
	if (v22==1)	{
		maxver := 2022
		MsgBox Corona to %maxver%
		goto corona_act
	}
	if (v23==1)	{
		maxver := 2023
		MsgBox Corona to %maxver%
		goto corona_act
	}
	if (v24==1)	{
		maxver := 2024
		MsgBox Corona to %maxver%
		goto corona_act
	}
}

if (vr==1) {
	if (v22==1)	{
		maxver := 2022
		MsgBox Vray to %maxver%
		goto vray_act
	}
	if (v23==1)	{
		maxver := 2023
		MsgBox Vray to %maxver%
		goto vray_act
	}
	if (v24==1)	{
		maxver := 2024
		MsgBox Vray to %maxver%
		goto vray_act
	}
}

if (xsmp==1) {
	if (v22==1)	{
		maxver := 2022
		MsgBox XSMP to %maxver%
		goto xsmp_act
	}
	if (v23==1)	{
		maxver := 2023
		MsgBox XSMP to %maxver%
		goto xsmp_act
	}
	if (v24==1)	{
		maxver := 2024
		MsgBox XSMP to %maxver%
		goto xsmp_act
	}
}
}
return

F6::FileDelete "C:\My Folder\test.txt"
return


F12::Reload
return

corona_act:
	FileCopy "%A_WorkingDir%\%path1%\test.txt", "C:\My Folder\", 1
	MsgBox Corona Activated
return
	/*; FileCopy "%A_WorkingDir%\%path1%\LegionLib_Release.dll", "C:\Program Files\Corona\Corona Renderer for 3ds Max\%maxver%\", 1
	; FileCopy "%A_WorkingDir%\%path1%\LegionLib_Release.dll", "C:\Program Files\Corona\Corona Renderer for 3ds Max\Image Editor\", 1
	; FileCopy "%A_WorkingDir%\%path1%\LegionLib_Release.dll", "C:\Program Files\Corona\Corona Renderer for 3ds Max\St&&alone\", 1
	; FileCopy "%A_WorkingDir%\%path1%\ScatterCore.ForScatter_Release.dll", "C:\Program Files\Chaos Group\Scatter\3ds Max %maxver%\", 1
*/
/*
vray_act:
	FileCopy, %A_WorkingDir%\%path2%\Crack\vray_v60004_fix.dlr, C:\Program Files\Autodesk\3ds Max %maxver%\Plugins\, 1
	FileCopy, %A_WorkingDir%\%path2%\Crack\vray_v60004_max_fix.dll, %ALLUSERSPROFILE%\Autodesk\ApplicationPlugins\VRay3dsMax%maxver%\bin\plugins\Plugins\, 1
	FileCopy, %A_WorkingDir%\%path2%\Crack\ScatterCore.ForScatter_Release.dll, C:\Program Files\Chaos Group\Scatter\3ds Max %maxver%\, 1
	MsgBox Vray Activated
return

xsmp_act:
	FileCopy, %A_WorkingDir%\%path3%\XsmpMax_%maxver%.dll, C:\Program Files\Autodesk\3ds Max %maxver%\bin\assemblies\, 1
	MsgBox XSMP Activated
return
*/