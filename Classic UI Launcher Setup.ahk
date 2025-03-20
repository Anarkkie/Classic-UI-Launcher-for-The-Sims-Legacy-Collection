#NoEnv
SetWorkingDir %A_ScriptDir%
IniFile := A_ScriptDir "\settings.ini"

; --- Ensure only one instance of the installer runs at a time ---
#SingleInstance Force

; --- Ensure the script runs as administrator ---
if !A_IsAdmin
{
    Run *RunAs "%A_ScriptFullPath%"
    ExitApp
}

; --- Ensure clicking the X button fully terminates the script ---
OnMessage(0x112, "HandleClose")

; --- Custom Resolution Warning (First Screen) ---
MsgBox, 4, Warnings and Setup, 
(
This program may get flagged by your antivirus. This is a false positive.
Source code is available in the Github repository for your review and/or if you wish to compile the executables yourself. 

In Nvidia Control Panel or AMD Software:
 
 - Set scaling mode to "Aspect Ratio" and perform scaling on "GPU"
 - Set up custom resolutions for 1066x600, 960x720, and 1365x768 
   (You don't have to change your monitor to these resolutions)
 - Limit 'Sims.exe' framerate to 60 FPS using your respective GPU software

Click Yes to continue installation or No to exit.
)
IfMsgBox, No
    ExitApp  ; Properly exits when "No" is selected.

IfMsgBox, Yes
    goto StartInstall  ; Continues only if "Yes" is selected.

StartInstall:
; --- Locate The Sims install folder ---
RegRead, SimsPath, HKEY_LOCAL_MACHINE, SOFTWARE\WOW6432Node\Maxis\The Sims, InstallDir
if (SimsPath = "")
    RegRead, SimsPath, HKEY_LOCAL_MACHINE, SOFTWARE\Maxis\The Sims, InstallDir

; --- If no registry path, scan common directories ---
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

; --- If still not found, ask user to select the install folder ---
if (SimsPath = "" || !FileExist(SimsPath . "\Sims.exe"))
{
    FileSelectFolder, SimsPath, , 3, Please locate the folder where Sims.exe is installed.
    if (SimsPath = "" || !FileExist(SimsPath . "\Sims.exe"))
    {
        MsgBox, Setup was canceled. No valid Sims.exe was found. Exiting.
        ExitApp
    }
}

; --- Detect and display native resolution ---
SysGet, NativeWidth, 0
SysGet, NativeHeight, 1

; --- Ask user to select The Sims internal resolution (Expanded Window Size) ---
Gui, +AlwaysOnTop +OwnDialogs
Gui, Add, Text, x10 y10, Detected monitor resolution: %NativeWidth%x%NativeHeight%
Gui, Add, Text, x10 y40, Desired internal resolution for The Sims:
Gui, Add, DropDownList, vUserResolution, 800x600|1066x600|960x720|1280x720|1024x768|1365x768|1440x1080|1920x1080
Gui, Add, Button, x10 y80 gConfirmResolution, OK
Gui, Show, w350 h150, Resolution Selection  ; Increased width and height
return

HandleClose(wParam, lParam, msg, hwnd) {
    if (wParam = 0xF060) ; WM_SYSCOMMAND Close Message
        ExitApp
}

ConfirmResolution:
Gui, Submit
Gui, Destroy
IniWrite, %SimsPath%, %IniFile%, Settings, SimsPath
IniWrite, %NativeWidth%, %IniFile%, Settings, NativeWidth
IniWrite, %NativeHeight%, %IniFile%, Settings, NativeHeight
IniWrite, %UserResolution%, %IniFile%, Settings, SelectedResolution

; --- Copy necessary files ---
FileCopy, %A_ScriptDir%\Classic UI Launcher.exe, %SimsPath%\Classic UI Launcher.exe, 1
FileCopy, %A_ScriptDir%\nircmdc.exe, %SimsPath%\nircmdc.exe, 1
FileCopy, %A_ScriptDir%\nircmd.exe, %SimsPath%\nircmd.exe, 1
FileCopy, %IniFile%, %SimsPath%\settings.ini, 1

; --- Create a desktop shortcut ---
DesktopPath := A_Desktop . "\Classic UI Launcher.lnk"
FileCreateShortcut, %SimsPath%\Classic UI Launcher.exe, %DesktopPath%, %SimsPath%

; --- Updated Success Message Box ---
MsgBox, 
(
Setup Complete!

The installation is now finished. 
A new desktop shortcut, Classic UI Launcher, has been created. 
Use this shortcut to launch the game.

IMPORTANT: 
After launching The Sims Legacy Collection with Classic UI Launcher, 
go to the in-game resolution settings and set the resolution you chose in this installer.

Note: 
You can still use the original launcher if you prefer default rendering behavior. This mod makes no changes to game files. 

Click OK to close the installer.
)
ExitApp
