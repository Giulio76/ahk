#Requires AutoHotkey v2.0
#SingleInstance Force

TraySetIcon "(desktop) appunti pop-up (icon).ico"

; Include the Neutron library
#Include "include/neutron.ahk"

; Create a new NeutronWindow and navigate to our HTML page
neutron := NeutronWindow()
	.OnEvent("close", (neutron) => ExitApp())
	.Load("(desktop) appunti pop-up (html).html")
	; Show the Neutron window
	.Show(, "Appunti pop-up v2") ;windows title

; FileInstall all your dependencies, but put the FileInstall lines somewhere
; they won't ever be reached.
if false {
	FileInstall "(desktop) appunti pop-up (html).html", "*"
	FileInstall "include\w3.css", "*"   
    FileInstall "include\w3-colors-2021.css", "*"
    
}

;HWND
global active_id
	   active_id := WinGetID("A")

;modifiche alle dimenzioni della finestra
WinMove 1400, 7, 500, 560, "ahk_id " active_id
;WinSetStyle "-0xC00000", "ahk_id " active_id
;WinSetRegion "15-0 495-0 510-15 510-615 495-630 15-630 0-615 0-15" , "ahk_id " active_id
WinSetAlwaysOnTop 1, "ahk_id " active_id
WinHide "ahk_id " active_id



;toggle show hide
HotIfWinActive "ahk_id " active_id
Hotkey "Pause", fn_appunti_popup
HotIfWinActive

fn_appunti_popup(HotkeyName)
{
	WinHide "ahk_id " active_id
}



;ricorda che il il tasto assegnato è PAUSE

msgbox "hotkey = PAUSE toggle show/hide "


;--------------------------------
return
;--------------------------------
;--------------------------------

;--- HOTKEY ---------------------
~Pause::
{
    WinShow "ahk_id " active_id
	sleep 100
	WinActivate "ahk_id " active_id
	sleep 100
	neutron.qs("#elem_memo").focus()
}





; --- Trigger AHK by page events ---

btn_01(neutron, event) {
	;save file text.txt
	strA := neutron.doc.getElementById("elem_memo").value
    strT := data_ora_adesso()
	FileAppend strA, A_Desktop "\" strT ".txt"
    sleep 100
    notifica_sonora()
	neutron.qs("#elem_memo").value := ''
	sleep 100	
	WinHide "ahk_id " active_id
}

btn_02(neutron, event) {
	;save file text bkp .txt
	strA := neutron.doc.getElementById("elem_memo").value
    strT := data_ora_adesso()
	FileAppend strA, A_Desktop "\" strT " (bkp).txt"
    sleep 500
    notifica_sonora()	
	sleep 100
	neutron.qs("#elem_memo").focus()	
}

btn_03(neutron, event) {
	;paste
    ;formatta clipboard in testo
    A_Clipboard := A_Clipboard   ; Convert any copied files, HTML, or other formatted text to plain text.
    neutron.qs("#elem_memo").value := A_Clipboard 
	sleep 100
	neutron.qs("#elem_memo").focus()
}

btn_04(neutron, event) {
	;clear
	neutron.qs("#elem_memo").value := ''
	sleep 100
	neutron.qs("#elem_memo").focus()	
}





btn_modale_1_btn_101(neutron, event) {
	;-Tab
    A_Clipboard := A_Clipboard   ; Convert any copied files, HTML, or other formatted text to plain text.

	A_Clipboard := StrReplace(A_Clipboard, "`t")
	
}



btn_modale_1_btn_102(neutron, event) {
	;-accapo
    A_Clipboard := A_Clipboard   ; Convert any copied files, HTML, or other formatted text to plain text.
    strA := A_Clipboard
    Loop
    {
        ;strA := StrReplace(strA, "`r`n`r`n", "`r`n",, &Count)
        strA := StrReplace(strA, "`r`n", "",, &Count)
        if (Count = 0)  ; No more replacements needed.
            break
    }

    ;solo CR 
    Loop
    {        
        strA := StrReplace(strA, "`r", "",, &Count)
        if (Count = 0)  ; No more replacements needed.
            break
    }    
    
    ;solo LF come adesso che ho copiato l'html dall'editor del browser
    Loop
    {        
        strA := StrReplace(strA, "`n", "",, &Count)
        if (Count = 0)  ; No more replacements needed.
            break
    }    
    
    A_Clipboard := strA
    notifica_sonora()         
}



















;################################################
;   operazioni sulle righe

btn_modale_1_btn_201(neutron, event) {
	;-Tab
    A_Clipboard := A_Clipboard   ; Convert any copied files, HTML, or other formatted text to plain text.
    
    strA :=""
    
    Loop parse, A_Clipboard, "`n`r"
    {
        ;riga 
        ;cerco nella riga
        intA := InStr(A_LoopField, A_Tab)
        intB := InStr(A_LoopField, A_Space)
        intC := StrLen(A_LoopField) 
        
        ;ok msgbox intA . " " . intB . " " . intC
        intD := intC - intA - intB
        if ( intD > 0 ) 
        {
            strA := strA "`r`n" A_LoopField 
            ;strA := strA A_LoopField
        }        
                
    }
    
    ;intCount := InStr(strA, "`r`n" )
    ;msgbox intCount
    
	;strA := StrReplace(strA, "`r`n`r`n", "`r`n")
    strA := StrReplace(strA, "`r`n`r`n", "`r`n",, &Count)
    ;msgbox Count  
    ;ok
    
    ;toglie il primo accapo CRLF 'r'n
    if (InStr(strA, "`r`n") = 1 )
    {
        intD := StrLen(strA)
        strB := SubStr(strA, -intD+2, intD-2 )
    } 
    
    

	A_Clipboard := strB	
}












;##########################################################################################
;serie 300 - sostituisci


btn_modale_1_btn_301(neutron, event) {
	;-accapo
    A_Clipboard := A_Clipboard   ; Convert any copied files, HTML, or other formatted text to plain text.
    strA := A_Clipboard
    Loop
    {
        ;strA := StrReplace(strA, "`r`n`r`n", "`r`n",, &Count)
        strA := StrReplace(strA, "§" , "`r`n",, &Count)
        if (Count = 0)  ; No more replacements needed.
            break
    }
    
    A_Clipboard := strA
    notifica_sonora()         
}




























































;###############################################
;salva in altri formati di file

btn_modale_2_btn_101(neutron, event) {
	;save file text.txt
	strA := neutron.doc.getElementById("elem_memo").value
    strT := data_ora_adesso()
	FileAppend strA, A_Desktop "\" strT ".txt"
    fn_clear_and_close
}

btn_modale_2_btn_102(neutron, event) {
	;save file text.html
	strA := neutron.doc.getElementById("elem_memo").value
    strT := data_ora_adesso()
	FileAppend strA, A_Desktop "\" strT ".html"
    fn_clear_and_close
}

btn_modale_2_btn_103(neutron, event) {
	;save file text.ahk
	strA := neutron.doc.getElementById("elem_memo").value
    strT := data_ora_adesso()
	FileAppend strA, A_Desktop "\" strT ".ahk"
    fn_clear_and_close
}

btn_modale_2_btn_104(neutron, event) {
	;save file text.css
	strA := neutron.doc.getElementById("elem_memo").value
    strT := data_ora_adesso()
	FileAppend strA, A_Desktop "\" strT ".css"
    fn_clear_and_close
}

btn_modale_2_btn_105(neutron, event) {
	;save file text.js
	strA := neutron.doc.getElementById("elem_memo").value
    strT := data_ora_adesso()
	FileAppend strA, A_Desktop "\" strT ".js"
    fn_clear_and_close
}

btn_modale_2_btn_106(neutron, event) {
	;save file text.xml
	strA := neutron.doc.getElementById("elem_memo").value
    strT := data_ora_adesso()
	FileAppend strA, A_Desktop "\" strT ".xml"
    fn_clear_and_close
}

btn_modale_2_btn_107(neutron, event) {
	;save file text.json
	strA := neutron.doc.getElementById("elem_memo").value
    strT := data_ora_adesso()
    strB := neutron.doc.getElementById("ctn_modale_2_estensione").value    
	FileAppend strA, A_Desktop "\" strT "." strB
    fn_clear_and_close
}




;######################################################################
;modale 4 chunk
;copia nella clipboad        2 clipboard     btn 1
;   anteprima contenuto
;copia dalla clipboard      4 clipboard     btn 2
;copia dal memo             4 memo          btn 3
btn_modale_4_btn_101(neutron, event) {
	A_Clipboard := neutron.doc.getElementById("ctn_modale_4_elem_memo_1").value
}
btn_modale_4_btn_102(neutron, event) {
    ;copia il contenuto dalla clipboard alla textarea 1    
    A_Clipboard := A_Clipboard   ; Convert any copied files, HTML, or other formatted text to plain text.
    neutron.qs("#ctn_modale_4_elem_memo_1").value := A_Clipboard
}
btn_modale_4_btn_103(neutron, event) {
	strA := neutron.doc.getElementById("elem_memo").value
    neutron.qs("#ctn_modale_4_elem_memo_1").value := strA
}
btn_modale_4_btn_201(neutron, event) {
	A_Clipboard := neutron.doc.getElementById("ctn_modale_4_elem_memo_2").value
}
btn_modale_4_btn_202(neutron, event) {
    ;copia il contenuto dalla clipboard alla textarea 2   
    A_Clipboard := A_Clipboard   ; Convert any copied files, HTML, or other formatted text to plain text.
    neutron.qs("#ctn_modale_4_elem_memo_2").value := A_Clipboard
}
btn_modale_4_btn_203(neutron, event) {
	strA := neutron.doc.getElementById("elem_memo").value
    neutron.qs("#ctn_modale_4_elem_memo_2").value := strA
}
btn_modale_4_btn_301(neutron, event) {
	A_Clipboard := neutron.doc.getElementById("ctn_modale_4_elem_memo_3").value
}
btn_modale_4_btn_302(neutron, event) {
    ;copia il contenuto dalla clipboard alla textarea 3    
    A_Clipboard := A_Clipboard   ; Convert any copied files, HTML, or other formatted text to plain text.
    neutron.qs("#ctn_modale_4_elem_memo_3").value := A_Clipboard
}
btn_modale_4_btn_303(neutron, event) {
	strA := neutron.doc.getElementById("elem_memo").value
    neutron.qs("#ctn_modale_4_elem_memo_3").value := strA
}
btn_modale_4_btn_401(neutron, event) {
	A_Clipboard := neutron.doc.getElementById("ctn_modale_4_elem_memo_4").value
}
btn_modale_4_btn_402(neutron, event) {
    ;copia il contenuto dalla clipboard alla textarea 4    
    A_Clipboard := A_Clipboard   ; Convert any copied files, HTML, or other formatted text to plain text.
    neutron.qs("#ctn_modale_4_elem_memo_4").value := A_Clipboard
}
btn_modale_4_btn_403(neutron, event) {
	strA := neutron.doc.getElementById("elem_memo").value
    neutron.qs("#ctn_modale_4_elem_memo_4").value := strA
}
btn_modale_4_btn_501(neutron, event) {
	A_Clipboard := neutron.doc.getElementById("ctn_modale_4_elem_memo_5").value
}
btn_modale_4_btn_502(neutron, event) {
    ;copia il contenuto dalla clipboard alla textarea 5    
    A_Clipboard := A_Clipboard   ; Convert any copied files, HTML, or other formatted text to plain text.
    neutron.qs("#ctn_modale_4_elem_memo_5").value := A_Clipboard
}
btn_modale_4_btn_503(neutron, event) {
	strA := neutron.doc.getElementById("elem_memo").value
    neutron.qs("#ctn_modale_4_elem_memo_5").value := strA
}









btn_modale_4_btn_990(neutron, event) {
    neutron.qs("#ctn_modale_4_elem_memo_1").value := ""
    neutron.qs("#ctn_modale_4_elem_memo_2").value := ""
    neutron.qs("#ctn_modale_4_elem_memo_3").value := ""
    neutron.qs("#ctn_modale_4_elem_memo_4").value := ""
    neutron.qs("#ctn_modale_4_elem_memo_5").value := ""
}


















;######################################################################
;barra top

fn_clear_and_close()
{
    sleep 100
    notifica_sonora()
	neutron.qs("#elem_memo").value := ''
	sleep 100	
	WinHide "ahk_id " active_id
}



fn_close()
{
    sleep 100
    notifica_sonora()
	sleep 100	
	WinHide "ahk_id " active_id
}

btn_reset(neutron, event) {
    ;reset intanto la finestra, ridimensionata normale    
    WinMove 1400, 7, 500, 560, "ahk_id " active_id
}



;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;funzioni condivise
;-------------------------------------------------------------------------------------------------
data_ora_adesso()
{
    TimeStringData := FormatTime(, "yyMMdd")
    TimeStringOra := FormatTime(, "HHmmss")
    TimeString := TimeStringData "_" TimeStringOra
    return TimeString
}
;-------------------------------------------------------------------------------------------------

;-------------------------------------------------------------------------------------------------
notifica_sonora()
{
	SoundBeep 1250, 100
}
;-------------------------------------------------------------------------------------------------
