#NoEnv
SetWorkingDir %A_ScriptDir%
IniFile := A_ScriptDir "\settings.ini"

; --- Read settings from settings.ini in the Sims install path ---
IniRead, SimsPath, %IniFile%, Settings, SimsPath, ""
IniRead, NativeWidth, %IniFile%, Settings, NativeWidth, ""
IniRead, NativeHeight, %IniFile%, Settings, NativeHeight, ""
IniRead, SelectedResolution, %IniFile%, Settings, SelectedResolution, ""

; --- Ensure `settings.ini` is being read from the correct location ---
CorrectIniPath := SimsPath . "\settings.ini"
if !FileExist(CorrectIniPath)
{
    ExitApp  ; Exit if the settings.ini file is missing from the expected location
}

; --- Find NirCmd executable in the Sims install path ---
NirCmdPath := SimsPath . "\nircmdc.exe"
if !FileExist(NirCmdPath)
    NirCmdPath := SimsPath . "\nircmd.exe"
if !FileExist(NirCmdPath)
{
    ExitApp  ; Exit if NirCmd is missing
}

; --- Verify The Sims install path exists ---
if (SimsPath = "" || !FileExist(SimsPath . "\Sims.exe"))
{
    ExitApp  ; Exit if The Sims installation path is incorrect
}

; --- Parse resolution width and height from SelectedResolution ---
StringSplit, ResArray, SelectedResolution, x
GameWidth := ResArray1
GameHeight := ResArray2

; --- Change resolution when launcher starts ---
Run, %NirCmdPath% setdisplay %GameWidth% %GameHeight% 32
Sleep, 5000  ; Allow resolution change to take effect

; --- Launch The Sims ---
Run, %SimsPath%\Sims.exe

; --- Wait for game to fully start ---
Sleep, 8000  ; Ensure the game has time to stabilize

; --- Wait for game to close ---
Process, WaitClose, Sims.exe

; --- Restore native resolution ---
Run, %NirCmdPath% setdisplay %NativeWidth% %NativeHeight% 32
ExitApp