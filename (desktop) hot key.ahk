#Requires AutoHotkey v2.0
#SingleInstance Force
TraySetIcon "(desktop) hot key.ico"


;alt + F1
!F1::
{
    TimeString := data_ora_adesso()
    ;msgbox, %TimeString%
    ;send %TimeString%
    send TimeString
}



^Enter::  
{
    send "<br>"
}


ScrollLock::
{
    TimeString := data_ora_adesso()
    ;msgbox, %TimeString%    
    
    ;strNirCMD = NirCmd beep 600 300    
    ;run, %strNirCMD%, %A_WorkingDir%\portable\nircmd , Hide
    strNirCMD := "NirCmd savescreenshot " A_Desktop "\" TimeString ".png"
    ;run, %strNirCMD%, , Hide
    ;Run Target [, WorkingDir, Options, &OutputVarPID]
    Run strNirCMD

    DirCreate "E:\screenshot"

    strNirCMD := "NirCmd savescreenshot E:\screenshot\" TimeString ".png"
    ;run, %strNirCMD%, , Hide
    Run strNirCMD

}


;Program Manager
;ahk_class Progman
;ahk_exe explorer.exe
;ahk_pid 8600
;ahk_id 65868

;HotIfWinActive "Program Manager"
;HotIfWinActive "ahk_class Progman"
;HotIfWinActive "ahk_exe explorer.exe"
HotIfWinActive "Program Manager"
Hotkey "~F3", fn_program_manager
HotIfWinActive

fn_program_manager(HotkeyName)
{
    strT := data_ora_adesso()
    ;FileCreateDir, %A_Desktop%\%strT%    
    DirCreate A_Desktop "\" strT
    ;sleep, 500
    sleep 500
    notifica_sonora()
}



;#IfWinActive, ahk_class CabinetWClass
HotIfWinActive "ahk_class CabinetWClass"
;F3::
Hotkey "~F3", fn_program_manager_2
HotIfWinActive

fn_program_manager_2(HotkeyName)
{
    ;WinGet, var, ID, A
    ;WinGetClass("A")
    ;Class := WinGetClass([WinTitle, WinText, ExcludeTitle, ExcludeText])
    ;Class := WinGetClass("A")
    ;HWND := WinGetID([WinTitle, WinText, ExcludeTitle, ExcludeText])
    HWND := WinGetID("A")

    ;ControlGetText, OutputVar , ToolbarWindow323, ahk_id %var%
    ;OutputVar := ControlGetText("Edit1", "ahk_id " HWND)
    OutputVar := ControlGetText("ToolbarWindow323", "ahk_id " HWND)
    

    intL := StrLen(OutputVar)
    strPath := SubStr(OutputVar, 12, intL)
    sleep 200
    strT := data_ora_adesso()
    ;FileCreateDir, %strPath%\%strT%
    DirCreate strPath "\" strT
}





;apre la parra dettatura di wondows
AppsKey::
{
    ;send, #h
    ;send "{#}+h"
    send "#{h}"
}



;****************************************************************
;Immagine - Paint
;ahk_class MSPaintApp
;ahk_exe mspaint.exe
;ahk_pid 27108
;#IfWinActive ahk_class MSPaintApp
HotIfWinActive "ahk_class MSPaintApp"
;F3::
Hotkey "^s", fn_mspaint
HotIfWinActive

fn_mspaint(HotkeyName)
{
    send "+{F12}"
}
;****************************************************************





;-----------------------------------------------------------------------------------
;World of Warcraft
;ahk_class GxWindowClass
;ahk_exe Wow-64.exe
;ahk_pid 6756
;ahk_id 2558074
;#IfWinActive / #IfWinNotActive / #IfWinExist / #IfWinNotExist
;Creates context-sensitive hotkeys and hotstrings. Such hotkeys perform a different action (or none at all) depending on the type of window that is active or exists.
;#IfWinActive WinTitle, WinText
;#IfWinActive ahk_exe Wow-64.exe
HotIfWinActive "ahk_exe Wow-64.exe"
;F3::
Hotkey "^9", fn_wow
HotIfWinActive

fn_wow(HotkeyName)
{
;login

send "leoran"
sleep 500
send "{TAB}"
sleep 500
send "Odioletendine22"
sleep 500
send "{ENTER}"

}
;****************************************************************











;se tengo premuto allora fai qualcosa in loop
;*NumpadAdd::
;{    
;  Loop 10
;    {
;        Click
;        Sleep 100      
;    } 
;}
































;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;funzioni condivise
;-------------------------------------------------------------------------------------------------
data_ora_adesso()
{
    ;FormatTime, TimeStringData, , yyMMdd
    ;String := FormatTime([YYYYMMDDHH24MISS, Format])
    ;TimeStringData := FormatTime( time ,yyMMdd)
    ;TimeStringData := FormatTime(, "Time")
    ;19:03
    ;TimeStringData := FormatTime("yyMMdd", "Time")
    TimeStringData := FormatTime(, "yyMMdd")

    ;FormatTime, TimeStringOra, , HHmmss
    ;String := FormatTime([YYYYMMDDHH24MISS, Format])
    ;TimeStringOra := 1 ;FormatTime( time , HHmmss)
    TimeStringOra := FormatTime(, "HHmmss")


    TimeString := TimeStringData "_" TimeStringOra


    ;return %TimeString%
    return TimeString
}
;-------------------------------------------------------------------------------------------------




;-------------------------------------------------------------------------------------------------
notifica_sonora()
{
    strNirCMD := "NirCmd beep 1250 100"
    ;run, %strNirCMD%, %A_WorkingDir%\portable\nircmd , Hide
    ;run, %strNirCMD%, , Hide
    run strNirCMD
}
;-------------------------------------------------------------------------------------------------
