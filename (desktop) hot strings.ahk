#Requires AutoHotkey v2.0
#SingleInstance Force
TraySetIcon "(desktop) hot strings.ico"


;################################################################
;################################################################

;CSS

::cs00::<STYLE>{ENTER}</STYLE>{LEFT 9}{ENTER}

::cs11::style=""{LEFT}
::cs12::font-size: 0.8em;
::cs13::font-family: verdana;
::cs14::background: navy;
::cs15::color: yellow;                  
::cs16::margin: 0.5em;
::cs17::margin-top: 0.5em;
::cs18::margin-left: 1em;
::cs19::padding: 0.5em;
::cs20::padding-left: 1em;
::cs21::width:;{LEFT}
::cs22::height:;{LEFT}
::cs23::display:block;
::cs24::overflow:hidden;
::cs25::position:absolute;
::cs30::margin:0px;padding:0px;
::cs31::border:1px solid black;
::cs32::cursor:pointer; text-decoration:none;
::cs33::font-style: italic;
::cs34::font-weight: bold;
::cs35::font-variant: small-caps;
::cs36::margin-auto;
::cs37::max-width:400px;
::cs38::display:none;
::cs39::display:block;
::cs40::display:inline;
::cs41::class=""{LEFT}

::cs44::opacity:0.7;
::cs45::z-index:2;
::cs46::border-radius: 5px;

;background altro
::cs47::background-image: url('');{Left 3}
::cs48::background-repeat: repeat-x;
::cs49::background-repeat: no-repeat;
::cs50::background-position: right top;
::cs51::background-image: linear-gradient(red, yellow, blue);
::cs52::background-image: linear-gradient(180deg, red, blue);
::cs53::background-image: linear-gradient(to right, rgba(255,0,0,0), rgba(255,0,0,1));

;text-decoration
::cs54::text-decoration: none;
::cs55::text-decoration: line-through;
::cs56::text-decoration: overline;
::cs57::text-decoration: underline;
::cs58::border-radius: 8px;
::cs59::border-radius: 8px 8px 0 0;


::cs61::position: fixed; right: 0px; bottom: 0px; 
::cs62::position: relative;
::cs63::position: absolute; left: 0px; top: 0px;
::cs64::position: fixed; left: 0px; top: 0px; width: 100%; z-index:20; 


;HTML 4
::cs441::text-align:left;
::cs442::text-align:center;
::cs443::text-align:right;

::cs444::margin-left:auto; margin-right:auto;

::cs15s::color: silver;
::cs15w::color: white;
::cs15b::color: black;
::cs15bl::color: blue;
::cs15gr::color: gray;

::cs17b::margin-bottom: 0.5em; 
::cs19t::padding-top: 0.5em; 
::cs19b::padding-bottom: 0.5em; 
::cs19l::padding-left: 0.5em;
::cs19r::padding-right: 0.5em;

::cs14b::background: black; 
::cs14w::background: white;






;HTML 5
::cs541::textAlign:right;

::cs1::100`%

;aiuto
::csx541::.style.textAlign = "left|right|center|justify|initial|inherit"



::htht::<{!}--  -->{LEFT 4}








;BOOTSTRAP 3

::bs31::<button type="button" class="btn btn-default">Default</button>
::bs32::<i class="glyphicon glyphicon-plus" style="font-size: 20px;"></i>















;ASP
::as11::<`%`=`%>{LEFT}{LEFT}
::as12::if then{ENTER 2}{HOME}{HOME}{HOME}end if{UP 2}
::as13::select case TACCHINO {ENTER}{HOME}{HOME}{HOME}case "" `%><`% pollo `= 1{ENTER}{HOME}{HOME}{HOME}case "" `%><`% pollo `= 2{ENTER}{HOME}{HOME}{HOME}case else{ENTER}{HOME}{HOME}{HOME}'bau{ENTER}{HOME}{HOME}{HOME}end select
::as14::<`%{ENTER}function aaaaaaaaaaaa(){ENTER 2}{HOME}{HOME}{HOME}end function{ENTER}%>
::as15::for i=1 to 100{ENTER}{ENTER}next 'i
::as21::`%><`%{Left 2}
::as22::<%{ENTER}{ENTER}{ENTER}%>{ENTER}
::as31::for i `= 1 to 10{ENTER}{HOME}{HOME}next 'i
::as41::RESPONSE.WRITE(   & "<BR>"){LEFT 10}
::as42::&_
::as43::Response.Flush{ENTER}
::as44::<!--#include file="tacchino.inc"-->
::as45::Response.Flush 
::as46::RESPONSE.WRITE(  & "<BR>") `%`>`<`% Response.Flush{LEFT 30}
::as47::<%{ENTER}if str_tipo = "" then{ENTER}%> {ENTER}{ENTER}{ENTER}{ENTER}<%{ENTER}end if{ENTER}%>{ENTER}{ENTER}
::as48::Do While i>10{Enter} some code{Enter}{Enter} If i<10 Then Exit Do{Enter}Loop{Enter}{Enter}
::as49::Do While intRandom > 0{Enter}	intRandom = intRandom-1{Enter}{Enter}{Enter}	'protezione{Enter}	counteA = counterA +1{Enter}	If counteA = 1000 Then Exit Do{Enter}Loop{Enter}{Enter}
::as50::<%'simulo il db con una matrice{Enter}dim matrix_db_table_a (1200, 25){Enter}	for k = 0 to 1200{Enter}		for j = 0 to 25{Enter}			matrix_db_table_a (k,j) = 0{Enter}		next 'j{Enter}	next 'k{Enter}%> {Enter}{Enter}
::as51::response.write(Server.MapPath("\") & "<br>")

::asq::<`%`{ENTER}{ENTER}`%>{LEFT}{LEFT}{LEFT}

::as111::<`%{ENTER}{ENTER}`%>{LEFT}{LEFT}{LEFT}














;JS JavaScript
::js::javascript
::js11::document.getElementById('').style = "";{LEFT}{LEFT}
::js12::<script>{ENTER}function aaaaaaaaaaa() {{}{ENTER}{DEL}{ENTER}{}}{ENTER}</script>{UP}{UP}{HOME}
::js13::alert();{Left 2}
::js133::alert('test \r\n' );{Left 3}
::js14::var element = document.getElementById("");{LEFT 3}
::js15::if (intA == -1) {{}{ENTER}intA += 1;{ENTER}{}}{UP}{END}{HOME}{TAB}
::js16::console.log("Hello world"!"); //press F12
::js17::<script>{ENTER}var element = document.getElementById("");{ENTER}</script>{UP}{HOME}
::js18::<script>{ENTER}setInterval(function(){location.reload();}, 2000);{ENTER}</script>{ENTER}
::js19::document.getElementById('').innerHTML = str {ASC 43} " " {ASC 43} str;{LEFT 31}
::js20::onClick="tacchino();"

::js21::onClick="aaaaaaaaaaa()"
::js22::onMouseOver="aaaaaaaaaaa()"
::js23::onMouseOut="aaaaaaaaaaa()"
::js24::onSubmit="aaaaaaaaaaa()"

::js25::document.write(" ");{LEFT 4}

::js26::for (let i = 0; i < 10; i++) {{}{ENTER}  "<br>";{ENTER}{}}

::js27::document.getElementById('console').innerHTML = "";





::js31::window.open(URL, name, specs, replace)


::js41::document.getElementById('xxxxxxxxxxxx').style.display = 'none';
::js42::document.getElementById('xxxxxxxxxxxx').style.display = 'block';

::js51::document.getElementById('xxxxxxxxxxxx').innerHTML;
::js52::document.getElementById('xxxxxxxxxxxx').innerHTML = "";

::js61::document.getElementById('xxxxxxxxx').value
::js62::document.getElementById('xxxxxxxxx').value = "";
;onclick

::js111::{+}"\n"{+} 

::js222::var strA = "";
::js223::var intA = 0;

::js133::alert( );{Left 3}




;PHP

::ph11::<?php ?>




;W3_CSS

::csw311::class=""{LEFT}
::csw312::w3-container
::csw313::w3-large
::csw314::w3-teal
::csw315::w3-text-red

::csw320::w3-hover-orange
::csw321::w3-hover-text-orange

::csw323::w3-border-bottom
::csw324::w3-border-color
::csw325::w3-hover-border-color
::csw326::w3-leftbar  ;Adds a thick left border to an element

::csw331::w3-round-large

::csw341::w3-margin
::csw351::w3-padding-16
::csw352::w3-padding-small

::csw11::w3-left-align
::csw12::w3-center
::csw13::w3-right-align

::csw21::w3-cursive






::csw3b1::<div class="w3-container">{ENTER}<h3>Mobile First Fluid Grid</h3>{ENTER}<p class="w3-large">Try to resize the window!</p>{ENTER}</div>












;SQL QUERY



::sql11::SELECT * FROM Tacchino
::sql12:: ORDER BY PolloKiwi asc
::sql13:: WHERE Country='Mango';
::sql14::SELECT DISTINCT Country FROM Customers; 
















;CHAR

::ch101::&star;
::ch102::<span style="font-size: 2em; color: yellow; ">&star;</span>
::ch103::&nbsp;
::ch104::&bull;













;adattatore_inizio

;----------------------------- CODICE ---------------------------
;HTML
;problema con i tag e l'autocompletamento


::ht13::<div id="" class="" style=""></div>

::ht14::<span></span>{LEFT 7}
::ht15::<a href="" target="_blank"></a>{LEFt 4}
::ht17::<img src="" style= "width:100%;">{LEFT 23}
::ht22::<h2></h2>{LEFT 5}
::ht26::class=""{LEFT 1}

::ht41::<iframe src="xxxxxxxxxxxxxxxx" width="100%" height="500" style="border:0px solid black;"></iframe>

::ht51::<meta charset="UTF-8">
::ht52::<meta charset="ISO-8859-1">

::ht133::<div id="" class="" style="text-align: left; border:1px solid black; "></div>


::hth1::<h1></h1>{LEFT 5}
::hth2::<h2></h2>{LEFT 5}
::hth3::<h3></h3>{LEFT 5}
::hth4::<h4></h4>{LEFT 5}

::ht411::<table cellpadding="2" cellspacing="0" border="1" style="width: 100%;"></table>{left 8}
::ht412::<tr></tr>{left 5}
::ht413::<td></td>{left 5}
::ht414::align="center"
::ht415::valign="top"




::ht452::<input type="text" name="firstname" value="Mickey">
::ht455::<textarea name="message" id="message" rows="10" cols="30">The cat was playing in the garden.</textarea>
::ht556::<button type="button" onclick="tacchino()">TACCHINO</button>

    
