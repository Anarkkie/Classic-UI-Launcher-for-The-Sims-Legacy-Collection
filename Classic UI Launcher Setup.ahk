#NoEnv
SetWorkingDir %A_ScriptDir%
IniFile := A_ScriptDir "\settings.ini"

#SingleInstance Force

; --- Ensure script runs as administrator ---
if !A_IsAdmin
{
    Run *RunAs "%A_ScriptFullPath%"
    ExitApp
}

; --- Ensure clicking the X button fully terminates the script ---
OnMessage(0x112, "HandleClose")

; --- Custom Resolution Warning GUI with logo.png ---
Gui, Warning:New, +AlwaysOnTop +OwnDialogs
Gui, Warning:Add, Picture, x10 y10 w64 h64, %A_ScriptDir%\logo.png
Gui, Warning:Add, Text, x84 y10 w320,
(
This program may get flagged by your antivirus. This is a false positive.
Source code is available in the GitHub repository for your review and/or if you wish to compile the executables yourself.

In Nvidia Control Panel or AMD Software:

 - Set scaling mode to "Aspect Ratio" and perform scaling on "GPU"
 - Set up custom resolutions for 1066x600, 960x720, and 1365x768 
   (You don't have to change your monitor to these resolutions)
 - Limit 'Sims.exe' framerate to 60 FPS using your respective GPU software

Click Yes to continue installation or No to exit.
)
Gui, Warning:Add, Button, x84 y210 w60 gWarningYes, Yes
Gui, Warning:Add, Button, x154 y210 w60 gWarningNo, No
Gui, Warning:Show, w420 h250, Warnings and Setup
return

WarningYes:
Gui, Warning:Destroy
goto StartInstall
return

WarningNo:
Gui, Warning:Destroy
ExitApp
return

StartInstall:
; --- Locate The Sims install folder ---
RegRead, SimsPath, HKEY_LOCAL_MACHINE, SOFTWARE\WOW6432Node\Maxis\The Sims, InstallDir
if (SimsPath = "")
    RegRead, SimsPath, HKEY_LOCAL_MACHINE, SOFTWARE\Maxis\The Sims, InstallDir

if (SimsPath = "")
{
    DriveGet, AvailableDrives, List
    Loop, Parse, AvailableDrives
    {
        PossiblePaths := ["Program Files\EA Games\The Sims Legacy", "Program Files (x86)\EA Games\The Sims Legacy", "Program Files (x86)\Steam\steamapps\common\The Sims Legacy"]
        for i, TestPath in PossiblePaths
        {
            FullPath := A_LoopField ":\\" TestPath
            if (FileExist(FullPath . "\Sims.exe"))
            {
                SimsPath := FullPath
                break 2
            }
        }
    }
}

if (SimsPath = "" || !FileExist(SimsPath . "\Sims.exe"))
{
    FileSelectFolder, SimsPath,, 3, Please locate the folder where Sims.exe is installed.
    if (SimsPath = "" || !FileExist(SimsPath . "\Sims.exe"))
    {
        MsgBox, Setup was canceled. No valid Sims.exe was found. Exiting.
        ExitApp
    }
}

; --- Detect native resolution and define resolutions ---
SysGet, NativeWidth, 0
SysGet, NativeHeight, 1

ResArray := ["3840x2160", "2560x1440", "1920x1080", "1365x768", "1280x720", "1066x600", "1440x1080", "1024x768", "960x720", "800x600"]
AvailableResolutions := ""

Loop % ResArray.Length()
{
    CurrentRes := ResArray[A_Index]
    StringSplit, ResParts, CurrentRes, x
    ResWidth := ResParts1
    ResHeight := ResParts2

    if (ResWidth <= NativeWidth && ResHeight <= NativeHeight)
        AvailableResolutions .= CurrentRes . "|"
}

StringTrimRight, AvailableResolutions, AvailableResolutions, 1

; --- Resolution selection GUI with logo.png ---
Gui, Main:New, +AlwaysOnTop +OwnDialogs
Gui, Main:Add, Picture, x10 y10 w64 h64, %A_ScriptDir%\logo.png
Gui, Main:Add, Text, x84 y15, Detected monitor resolution:`n%NativeWidth%x%NativeHeight%
Gui, Main:Add, Text, x84 y55, Desired internal resolution for The Sims:
Gui, Main:Add, DropDownList, x84 y75 w180 vUserResolution, %AvailableResolutions%
Gui, Main:Add, Button, x84 y110 w80 gConfirmResolution, OK
Gui, Main:Show, w280 h150, Resolution Selection
return

HandleClose(wParam, lParam, msg, hwnd) {
    if (wParam = 0xF060)
        ExitApp
}

ConfirmResolution:
Gui, Main:Submit
Gui, Main:Destroy
IniWrite, %SimsPath%, %IniFile%, Settings, SimsPath
IniWrite, %NativeWidth%, %IniFile%, Settings, NativeWidth
IniWrite, %NativeHeight%, %IniFile%, Settings, NativeHeight
IniWrite, %UserResolution%, %IniFile%, Settings, SelectedResolution

; --- Copy files ---
FileCopy, %A_ScriptDir%\Classic UI Launcher.exe, %SimsPath%\Classic UI Launcher.exe, 1
FileCopy, %A_ScriptDir%\nircmdc.exe, %SimsPath%\nircmdc.exe, 1
FileCopy, %A_ScriptDir%\nircmd.exe, %SimsPath%\nircmd.exe, 1
FileCopy, %IniFile%, %SimsPath%\settings.ini, 1

; --- Create desktop shortcut ---
DesktopPath := A_Desktop . "\Classic UI Launcher.lnk"
FileCreateShortcut, %SimsPath%\Classic UI Launcher.exe, %DesktopPath%, %SimsPath%

; --- Success GUI with logo.png ---
Gui, Success:New, +AlwaysOnTop +OwnDialogs
Gui, Success:Add, Picture, x10 y10 w64 h64, %A_ScriptDir%\logo.png
Gui, Success:Add, Text, x84 y10 w320,
(
Setup Complete!

A desktop shortcut was created.
Use this shortcut to launch the game.

IMPORTANT:
-Set the in-game resolution to match your chosen installer resolution. 
-Restart the game for changes to take effect.

Click OK to close.
)
Gui, Success:Add, Button, x180 y140 w60 gSuccessClose, OK
Gui, Success:Show, w420 h180, Installation Complete
return

SuccessClose:
Gui, Success:Destroy
ExitApp
return