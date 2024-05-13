#Requires AutoHotkey v2.0
#SingleInstance Force
TraySetIcon "(desktop) desktop hub.ico"



; Include the Neutron library
#Include include/neutron.ahk

; Create a new NeutronWindow and navigate to our HTML page
neutron := NeutronWindow()
	.OnEvent("close", (neutron) => ExitApp())
	.Load("(desktop) desktop hub.html")
	; Show the Neutron window
	.Show(, "(desktop) desktop hub")

; FileInstall all your dependencies, but put the FileInstall lines somewhere
; they won't ever be reached.
if false {
	FileInstall "(desktop) desktop hub.html", "*"
	FileInstall "include/w3.css", "*"   
    FileInstall "include/w3-colors-2021.css", "*"
        
    
    
}

;HWND
global active_id
	   active_id := WinGetID("A")

;modifiche alle dimenzioni della finestra
WinMove 80, 30, 1800, 950, "ahk_id " active_id
;WinSetStyle "-0xC00000", "ahk_id " active_id
;WinSetRegion "15-0 495-0 510-15 510-615 495-630 15-630 0-615 0-15" , "ahk_id " active_id

;WinSetAlwaysOnTop 1, "ahk_id " active_id
;WinHide "ahk_id " active_id



;toggle show hide
HotIfWinActive "ahk_id " active_id
Hotkey "CapsLock", fn_gui_hide
Hotkey "XButton1", fn_gui_hide
HotIfWinActive

fn_gui_hide(HotkeyName)
{
	WinHide "ahk_id " active_id
}

;--------------------------------
return
;--------------------------------
;--------------------------------

;--- HOTKEY ---------------------
XButton1::
CapsLock::
{
    WinShow "ahk_id " active_id
	sleep 100
	WinActivate "ahk_id " active_id
	sleep 100
	;neutron.qs("#elem_memo").focus()
}





; --- Trigger AHK by page events ---

;###############################################
;salva in altri formati di file

btn_barra_2_bottom_btn_101(neutron, event) {
	;save file text.txt
    A_Clipboard := A_Clipboard   ; Convert any copied files, HTML, or other formatted text to plain text.
    strT := data_ora_adesso()
	FileAppend A_Clipboard, A_Desktop "\" strT ".txt"
    fn_clear_and_close
}

btn_barra_2_bottom_btn_102(neutron, event) {
	;save file text.html
    A_Clipboard := A_Clipboard   ; Convert any copied files, HTML, or other formatted text to plain text.
    strT := data_ora_adesso()
	FileAppend A_Clipboard, A_Desktop "\" strT ".html"
    fn_clear_and_close
}

btn_barra_2_bottom_btn_103(neutron, event) {
	;save file text.css
    A_Clipboard := A_Clipboard   ; Convert any copied files, HTML, or other formatted text to plain text.
    strT := data_ora_adesso()
	FileAppend A_Clipboard, A_Desktop "\" strT ".css"
    fn_clear_and_close
}

btn_barra_2_bottom_btn_104(neutron, event) {
	;save file text.ahk
    A_Clipboard := A_Clipboard   ; Convert any copied files, HTML, or other formatted text to plain text.
    strT := data_ora_adesso()
	FileAppend A_Clipboard, A_Desktop "\" strT ".ahk"
    fn_clear_and_close
}

btn_barra_2_bottom_btn_105(neutron, event) {
	;save file text.py
    A_Clipboard := A_Clipboard   ; Convert any copied files, HTML, or other formatted text to plain text.
    strT := data_ora_adesso()
	FileAppend A_Clipboard, A_Desktop "\" strT ".py"
    fn_clear_and_close
}

btn_barra_2_bottom_btn_106(neutron, event) {
	;save file text.lua
    A_Clipboard := A_Clipboard   ; Convert any copied files, HTML, or other formatted text to plain text.
    strT := data_ora_adesso()
	FileAppend A_Clipboard, A_Desktop "\" strT ".lua"
    fn_clear_and_close
}

btn_barra_2_bottom_btn_107(neutron, event) {
	;save file text.json
    A_Clipboard := A_Clipboard   ; Convert any copied files, HTML, or other formatted text to plain text.
    strT := data_ora_adesso()
    strB := neutron.doc.getElementById("ctn_modale_2_estensione").value    
	FileAppend A_Clipboard, A_Desktop "\" strT "." strB
    fn_clear_and_close
}



;blocco 300
btn_barra_2_bottom_btn_301(neutron, event) {
	;save file text.txt
    A_Clipboard := A_Clipboard   ; Convert any copied files, HTML, or other formatted text to plain text.    
	DirCreate A_Desktop "\" A_Clipboard
    fn_clear_and_close
}




btn_barra_2_bottom_btn_901(neutron, event) {
    ;reload
    Reload
}








;##########################################
;app esterne


btn_barra_2_bottom_btn_201(neutron, event)
{
	strT := data_ora_adesso()
    ;strA := "portable\nircmd\nircmd.exe clipboard saveimage " A_Desktop "\" strT ".jpg"	
	;RunWait strA,,Hide
    ;Run Target [, WorkingDir, Options, &OutputVarPID]

    ;Run "portable\nircmd\nircmdc.exe" , , " clipboard saveimage " A_Desktop "\" strT ".jpg"
    
    
    ;Run "portable/xnview/nconvert.exe"
    
    ;Run "portable/xnview/nconvert.exe" , , "nconvert.exe -quiet- clipboard -o tacchino.jpg"
    
    ;Run "portable/xnview/nconvert.exe" , , "-quiet -clipboard -out jpeg C:\Users\happy\Desktop\tacchino.jpg"
    
    ;Run "portable/xnview/nconvert.exe" , , "-quiet -clipboard -out jpeg tacchino.jpg"
    
    ;ok ha scritto un file clipboard.jpg   Run "portable/xnview/nconvert.exe -quiet -clipboard -out jpeg tacchino.jpg"
    
    ;ok Run "portable/xnview/nconvert.exe -quiet -clipboard -out jpeg -o tacchino.jpg"
    
    Run "portable/xnview/nconvert.exe -quiet -clipboard -out jpeg -o " A_Desktop "\" strT ".jpg"
    
    
		
	fn_close()	
}
btn_barra_2_bottom_btn_202(neutron, event)
{
	strT := data_ora_adesso()
    ;strA := "portable\nircmd\nircmd.exe clipboard saveimage " A_Desktop "\" strT ".png"
    ;Run "portable\nircmd\nircmd.exe" , , " clipboard saveimage " A_Desktop "\" strT ".png"	
	;RunWait strA,,Hide	
    
    Run "portable/xnview/nconvert.exe -quiet -clipboard -out png -o " A_Desktop "\" strT ".png"
        
	fn_close()	
}

















;#################################################################
;barra destra
;•0 = Logoff
;•1 = Shutdown
;•2 = Reboot
;•4 = Force         forces all open applications to close. It should only be used in an emergency because it may cause any open applications to lose data.
;•8 = Power down    shuts down the system and turns off the power.


btn_barra_4_destra_btn_101(neutron, event) {
    ;hibernate
    Run "shutdown /h"
}

btn_barra_4_destra_btn_102(neutron, event) {
    ;reboot
    Run "shutdown /r"
}

btn_barra_4_destra_btn_103(neutron, event) {
    ;reboot
    Run "shutdown /s"
}

btn_barra_4_destra_btn_104(neutron, event) {
    ;reboot
    Run "shutdown /f"
}










btn_barra_4_destra_btn_201(neutron, event) {
    Run "shell:startup"    
     fn_close()
}

btn_barra_4_destra_btn_202(neutron, event) {
    Run "C:\Users\happy\AppData\Local\Temp"    
     fn_close()
}


btn_barra_4_destra_btn_211(neutron, event) {
    Run "D:\ZONA_100_OS_Operative_System\script costruiti"   
    fn_close()
}



btn_barra_4_destra_btn_901(neutron, event) {
    ;close app   
    ExitApp
}

btn_barra_4_destra_btn_902(neutron, event) {
    ;reload app
    Reload   
}

btn_barra_4_destra_btn_903(neutron, event) {
    ;this script folder   
    Run "D:\ZONA_100_OS_Operative_System\script costruiti\(desktop) desktop hub"   
    fn_close()
}






;#####################################################
;barrra top

;si attivano sull'hover del menu top
;sono tutti pannelli dentro il div contenuto
;tutti div nascosti sovrapposti
;ogni volta fa il nascondi tutti

btn_barra_1_top_btn_100(neutron, event) {
    ;nascondi tutti e mostra home
    fn_centrale_nascondi_tutti_e_mostra_indicato('100')    
}


btn_barra_1_top_btn_101(neutron, event) {
    ;hot key
    ;D:\ZONA_100_OS_Operative_System\script costruiti\(desktop) hot key\(desktop) hot key info.txt   
    ;legge il file info aggiornato e lo mostra nel div
    ;sostitusci gli accopo con i <br> prima di mettere
     ;ok neutron.qs("#ctn_cen_101_filereadinfo").innerHTML := A_Clipboard
     
     
    MyText := FileRead("D:\ZONA_100_OS_Operative_System\script costruiti\(desktop) hot key\(desktop) hot key info.txt")
    
    ;ok
    
    
    
    ;aggiungo il br per il div
    ;Loop
    ;{
    ;    MyText := StrReplace(MyText, "`r`n", "<br>`r`n",, &Count)
    ;    if (Count = 0)  ; No more replacements needed.
    ;        break
    ;}
    ;con una soluzione unica non ha funzionato
    ;invece facendo due salti lo fa!
    
    ;<br> `r`n
    
    
    Loop
    {
        ;strA := StrReplace(strA, "`r`n`r`n", "`r`n",, &Count)
        MyText := StrReplace(MyText, "`r`n", "§",, &ReplacementCount)
        if (ReplacementCount = 0)  ; No more replacements needed.
            break
    }    
    
    
    Loop
    {
        ;strA := StrReplace(strA, "`r`n`r`n", "`r`n",, &Count)
        MyText := StrReplace(MyText, "§", "<br>`r`n",, &ReplacementCount)
        if (ReplacementCount = 0)  ; No more replacements needed.
            break
    }
    
    
      
    ;ok msgbox MyText
      
    ;ok msgbox ReplacementCount
      
    neutron.qs("#ctn_cen_101_filereadinfo").innerHTML := MyText
    
    ;nascondi tutti e mostra
    fn_centrale_nascondi_tutti_e_mostra_indicato('101') 
    
}

btn_barra_1_top_btn_102(neutron, event) {
    ;hot string
    MyText := FileRead("D:\ZONA_100_OS_Operative_System\script costruiti\(desktop) hot strings\(desktop) hot strings.ahk")

    ;togli righe
    MyText := StrReplace(MyText, "#Requires AutoHotkey v2.0", "")
    MyText := StrReplace(MyText, "#SingleInstance Force", "")
    MyText := StrReplace(MyText, "TraySetIcon `"(desktop) hot strings.ico`"", "")
    MyText := StrReplace(MyText, ";################################################################", "")
    
    
    ;sostituisci i ::
    Loop
    {

        MyText := StrReplace(MyText, "::", "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;",, &ReplacementCount)
        if (ReplacementCount = 0)  ; No more replacements needed.
            break
    }    
    
    ;sostituisci i < con un altro simbolo simile
    Loop
    {

        MyText := StrReplace(MyText, "<", "◀",, &ReplacementCount)
        if (ReplacementCount = 0)  ; No more replacements needed.
            break
    }        

    ;sostituisci i < con un altro simbolo simile
    Loop
    {

        MyText := StrReplace(MyText, ">", "▶",, &ReplacementCount)
        if (ReplacementCount = 0)  ; No more replacements needed.
            break
    }   

       
    Loop
    {
        ;strA := StrReplace(strA, "`r`n`r`n", "`r`n",, &Count)
        MyText := StrReplace(MyText, "`r`n", "§",, &ReplacementCount)
        if (ReplacementCount = 0)  ; No more replacements needed.
            break
    }    
    Loop
    {

        MyText := StrReplace(MyText, "§", "<br>`r`n",, &ReplacementCount)
        if (ReplacementCount = 0)  ; No more replacements needed.
            break
    }
    
    
    ;- ancore !!!!!!!!!!!!!!
    MyText := StrReplace(MyText, ";CSS", "<div id='CSS' style='border:1px solid black; font-size: 2em; '>CSS</div> ")
MyText := StrReplace(MyText, ";HTML 4", "<div id='HTML 4' style='border:1px solid black; font-size: 2em; '>HTML 4</div> ")
MyText := StrReplace(MyText, ";HTML 5", "<div id='HTML 5' style='border:1px solid black; font-size: 2em; '>HTML 5</div> ")
MyText := StrReplace(MyText, ";BOOTSTRAP 3", "<div id='BOOTSTRAP 3' style='border:1px solid black; font-size: 2em; '>BOOTSTRAP 3</div> ")
MyText := StrReplace(MyText, ";ASP", "<div id='ASP' style='border:1px solid black; font-size: 2em; '>ASP</div> ")    
MyText := StrReplace(MyText, ";JS JavaScript", "<div id='JS JavaScript' style='border:1px solid black; font-size: 2em; '>JS JavaScript</div> ")
MyText := StrReplace(MyText, ";PHP", "<div id='PHP' style='border:1px solid black; font-size: 2em; '>PHP</div> ")
MyText := StrReplace(MyText, ";W3_CSS", "<div id='W3_CSS' style='border:1px solid black; font-size: 2em; '>W3_CSS</div> ")
MyText := StrReplace(MyText, ";SQL QUERY", "<div id='SQL QUERY' style='border:1px solid black; font-size: 2em; '>SQL QUERY</div> ")
MyText := StrReplace(MyText, ";CHAR", "<div id='CHAR' style='border:1px solid black; font-size: 2em; '>CHAR</div> ")
MyText := StrReplace(MyText, ";adattatore_inizio", "<div id='adattatore_inizio' style='border:1px solid black; font-size: 2em; '>adattatore_inizio</div> ")


;MyText := StrReplace(MyText, ";CSS", "<div id='CSS' style='border:1px solid black; font-size: 2em; '>CSS</div> ")
;MyText := StrReplace(MyText, ";CSS", "<div id='CSS' style='border:1px solid black; font-size: 2em; '>CSS</div> ")
;MyText := StrReplace(MyText, ";CSS", "<div id='CSS' style='border:1px solid black; font-size: 2em; '>CSS</div> ")
;MyText := StrReplace(MyText, ";CSS", "<div id='CSS' style='border:1px solid black; font-size: 2em; '>CSS</div> ")

    
    
    
    neutron.qs("#ctn_cen_102_filereadinfo").innerHTML := MyText

    ;nascondi tutti e mostra
    fn_centrale_nascondi_tutti_e_mostra_indicato('102') 
}

btn_barra_1_top_btn_103(neutron, event) {
    ;ASCII
    Run "D:\ZONA_100_OS_Operative_System\script costruiti"   
}





btn_barra_1_top_btn_201(neutron, event) {
    ;ASCII
    Run "http://localhost:1865/admin/"   
}

btn_barra_1_top_btn_202(neutron, event) {
    ;ASCII
    Run "http://localhost:3000/"   
}












;lo scopo è automattzzare

;# bassa sinistra - barra sx -----------------------------------------
;pulsante del menu
btn_barra_2_sx_btn_101(neutron, event) {
    ;folders      
    fn_centrale_nascondi_tutti_e_mostra_indicato('201')
}
;--------------------------------------------------------------------
;pulsanti dei contenitori
btn_centrale_contenuto_201_btn_101(neutron, event) {
    ;folders #101      
    Run "E:\dispo_SMARTPHONE_OPPOA58_4G_GW_(2023_11)"
    fn_close
}

btn_centrale_contenuto_201_btn_102(neutron, event) {
    ;folders #101      
    Run "E:\dispo_SMARTPHONE_OPPO_A16s_(2022)"
    fn_close
}

btn_centrale_contenuto_201_btn_103(neutron, event) {
    ;folders #101      
    Run "E:\dispo_AUDIO_RECORDER_NERO_PICCOLO_(2024)"
    fn_close
}


;serie 200 ------
btn_centrale_contenuto_201_btn_201(neutron, event) {          
    Run "C:\Users\happy\Downloads"
    fn_close
}
btn_centrale_contenuto_201_btn_202(neutron, event) {          
    Run "C:\Users\happy\Documents"
    fn_close
}
btn_centrale_contenuto_201_btn_203(neutron, event) {          
    Run "C:\Users\happy\Desktop"
    fn_close
}



;serie 300 -----------------------
btn_centrale_contenuto_201_btn_301(neutron, event) {          
    Run "C:\Users\happy\Documents\server_locale\USBWebserver v8.6\root"
    fn_close
}












;lo scopo è automattzzare

;# bassa sinistra - barra sx -----------------------------------------
;pulsante del menu
btn_barra_2_sx_btn_102(neutron, event) {
    ;folders      
    fn_centrale_nascondi_tutti_e_mostra_indicato('202')
}
;--------------------------------------------------------------------
;pulsanti dei contenitori
btn_centrale_contenuto_202_btn_101(neutron, event) {
    ;folders #101      
    Run "cmd.exe"
    fn_close
}
btn_centrale_contenuto_202_btn_102(neutron, event) {     
    Run "cmd help"
    fn_close
}
btn_centrale_contenuto_202_btn_103(neutron, event) {      
    Run "cmd.exe ipconfig"
    fn_close
}



btn_centrale_contenuto_202_btn_201(neutron, event) {
    ;shell      
    Run "powershell.exe"
    fn_close
}

btn_centrale_contenuto_202_btn_202(neutron, event) {
    ;shell      
    Run "https://learn.microsoft.com/it-it/powershell/module/microsoft.powershell.core/get-help?view=powershell-7.4"
    fn_close
}


















;lo scopo è automatizzare

;# bassa sinistra - barra sx -----------------------------------------
;pulsante del menu
btn_barra_2_sx_btn_103(neutron, event) {          
    fn_centrale_nascondi_tutti_e_mostra_indicato('203')
}
;--------------------------------------------------------------------
;pulsanti dei contenitori
btn_centrale_contenuto_203_btn_101(neutron, event) {
    A_Clipboard := neutron.doc.getElementById("btn_centrale_contenuto_203_elem_memo_01").value
    ;fn_close
    notifica_sonora()
}
btn_centrale_contenuto_203_btn_102(neutron, event) {
    A_Clipboard := neutron.doc.getElementById("btn_centrale_contenuto_203_elem_memo_02").value
    notifica_sonora()
}
















;###############  fn che nasconde i div contenitore nel contenitore centrale
;i vari pulsanti mostrano il contnuto qua dentro
;quando aggiungi un contenitore lo devi dichiarare qui cosi lo nasconde

fn_centrale_nascondi_tutti_e_mostra_indicato(intA){
    ;ok msgbox intA
    
    ;nascondere tutti i div contenitore incontenitore centrale e mostrare quello indicato
    neutron.qs("#ctn_centrale_contenuto_100").style.display := "none"  
    neutron.qs("#ctn_centrale_contenuto_101").style.display := "none"
    neutron.qs("#ctn_centrale_contenuto_102").style.display := "none"
    
    ;contenitori del menu verticale sinitro
    neutron.qs("#ctn_centrale_contenuto_201").style.display := "none"
    neutron.qs("#ctn_centrale_contenuto_202").style.display := "none"
    neutron.qs("#ctn_centrale_contenuto_203").style.display := "none"
    
    
    ;mostra indicato
    neutron.qs("#ctn_centrale_contenuto_" intA ).style.display := "block"
    
    
    ;ok
    
}




































;######################################################################
;funzioni condivise da altre funzioni e funzioni speciali

fn_clear_and_close()
{
    sleep 100
    notifica_sonora()
	;neutron.qs("#elem_memo").value := ''
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
    WinMove 1400, 7, 500, 630, "ahk_id " active_id
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
    ;strNirCMD := "NirCmd beep 1250 100"
    ;run strNirCMD
	;sleep 1000
	
	SoundBeep 1250, 100
	;ok
}
;-------------------------------------------------------------------------------------------------
