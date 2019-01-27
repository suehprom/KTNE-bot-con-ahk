;
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT
; Author:         Morpheus 
;
; Script Function:
;	Template script (you can customize this template by editing "ShellNew\Template.ahk" in your Windows folder)
;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

#Include Speech Recognition.ahk
#Include TTS.ahk
;ventana de reconocimiento vocal
Gui, Font, s10 w700
Gui, Add, StatusBar, w400 h50
SB_SetParts(0)
Gui, Show, w400 h20 y200 x-410

e := new SpeechRecognizer
d := new TTS()

baterias = 0
digito = 0
vocal = "no"
car = "no"
frk = "no"
paralelo = "no"
strike = 0
numerofinal = ""
iniciado = 0
procesadouno = 0
procesadodos = 0
procesadotres = 0
procesadocuatro = 0
procesadocinco = 0
presionar_memoria = 
posiciones := {}


palabralista1 := ["raqueta", "alfa", "lambda", "november", "araña", "hotel", "cespejada"]
palabralista2 := ["euro", "raqueta", "cespejada", "quebec", "estrella", "hotel", "interrogacion"]
palabralista3 := ["copyright", "whisky", "quebec", "kilo", "romeo", "lambda", "estrella"]
palabralista4 := ["seis", "parrafo", "bravo", "araña", "kilo", "interrogacion", "sonrisa"]
palabralista5 := ["candelabro", "sonrisa", "bravo", "charlie", "parrafo", "tres", "estrella negra"]
palabralista6 := ["seis", "euro", "puzzle", "ae", "candelabro", "enie", "omega"]
palabra = 0
lista_contrasenas := ["about", "after", "again", "below", "could", "every", "first", "found", "great", "house", "large", "learn", "never", "other", "place", "plant", "point", "right", "small", "sound", "spell", "still", "study", "their", "there", "these", "thing", "think", "three", "water", "where", "which", "world", "would", "write"]


;palabra 5 con problema charlie candelabro tres bravo

return

q::
gosub, iniciar
return

x::
ExitApp

r::
Reload

iniciar:


loop{
d.SetRate(0)
d.SetPitch(0)
SB_SetText("escuchando", 2)
d.Speak("ready")
gosub, bip

e.Recognize(["chequear bomba", "status", "chau", "cables", "boton", "simbolos", "rojo", "azul", "verde", "amarillo", "quien", "la bomba exploto", "memorias", "ganamos", "secuencia", "complicados", "contraseña", "repetir contraseña", "morse", "laberinto"])
Texto := e.Prompt()
;TrayTip, reconocimiento, %Texto%
;sleep 1000

if (Texto = "chequear bomba")
	;TrayTip, reconocimiento, chequear
	gosub, chequear
else if (Texto = "status")
	;TrayTip, reconocimiento, status
	gosub, status
else if (Texto = "chau")
	;TrayTip, reconocimiento, cerrar
	gosub, cerrar
else if (Texto = "cables")
	;TrayTip, reconocimiento, cables
	gosub, cables
else if (Texto = "boton")
	;TrayTip, reconocimiento, boton
	gosub, boton
else if (Texto = "simbolos")
	;TrayTip, reconocimiento, simbolos
	gosub, simbolos
else if (Texto = "rojo")
	{
	color_simon = "simon rojo"
	;msgbox, %color_simon%
	;TrayTip, reconocimiento, simon rojo
	gosub, simon
	}
else if (Texto = "azul")
	{
	color_simon = "simon azul"
	;TrayTip, reconocimiento, simon azul
	gosub, simon
	}
else if (Texto = "verde")
	{
	color_simon = "simon verde"
	;TrayTip, reconocimiento, simon verde
	gosub, simon
	}
else if (Texto = "amarillo")
	{
	color_simon = "simon amarillo"
	;TrayTip, reconocimiento, simon amarillo
	gosub, simon
	}
else if (Texto = "quien")
	;TrayTip, reconocimiento, quien
	gosub, quien
else if (Texto = "la bomba exploto")
	;TrayTip, reconocimiento, exploto
	gosub, exploto
else if (Texto = "memorias")
	;TrayTip, reconocimiento, memoria
	gosub, memoria
else if (Texto = "ganamos")
	;TrayTip, reconocimiento, ganamos
	gosub, ganamos
else if (Texto = "secuencia")
	{
	;TrayTip, reconocimiento, secuencia
	gosub, secuencia
	}
else if (Texto = "complicados")
	{
	;TrayTip, reconocimiento, complicados
	gosub, complicados
	}
else if (Texto = "contraseña")
	{
	;TrayTip, reconocimiento, contraseña
	gosub, contrasena
	}
else if (Texto = "repetir contraseña")
	{
	;TrayTip, reconocimiento, repetir contraseña
	gosub, contar_pass_final
	}
else if (Texto = "morse")
	{
	;TrayTip, reconocimiento, codigo morse
	gosub, morse
	}
else if (Texto = "laberinto")
	{
	;TrayTip, reconocimiento, codigo morse
	gosub, laberinto
	}
}
return



chequear:
SB_SetText(Texto, 2)
d.SetRate(0)
d.SetPitch(0)
;d.SpeakWait("check bomb")
d.SpeakWait("check bomb")
gosub, bip
d.SetRate(-1)
loop{

e.Recognize(["baterias 1" , "baterias 2" , "baterias 3" , "baterias 4" , "baterias 5" , "baterias 6" ,"baterias 7" , "baterias 0" , "digito 1" , "digito 2" , "digito 3" , "digito 4" , "digito 5" , "digito 6" , "digito 7" , "digito 8" , "digito 9" , "digito 0" , "vocal no" , "vocal si" , "car no" , "car si" , "frik no" , "frik si" , "paralelo no" , "paralelo si" , "fin"])
Texto := e.Prompt()

if (Texto = "baterias 1"){
	;TrayTip, reconocimiento, %Texto%
	baterias = 1
	d.SpeakWait("batteries "baterias)
	gosub, bip
	;SoundBeep, 2000, 50
}
else if (Texto = "baterias 2"){
	;TrayTip, reconocimiento, %Texto%
	baterias = 2
	d.SpeakWait("batteries "baterias)
	gosub, bip
	;SoundBeep, 2000, 50
	;SoundBeep, 2000, 50
}
else if (Texto = "baterias 3"){
	;TrayTip, reconocimiento, %Texto%
	baterias = 3
	d.SpeakWait("batteries "baterias)
	gosub, bip
	;SoundBeep, 2000, 50
	;SoundBeep, 2000, 50
	;sleep 200
	;SoundBeep, 2000, 50
}
else if (Texto = "baterias 4"){
	;TrayTip, reconocimiento, %Texto%
	baterias = 4
	d.SpeakWait("batteries "baterias)
	gosub, bip
	;SoundBeep, 2000, 50
	;SoundBeep, 2000, 50
	;sleep 200
	;SoundBeep, 2000, 50
	;SoundBeep, 2000, 50
}
else if (Texto = "baterias 5"){
	;TrayTip, reconocimiento, %Texto%
	baterias = 5
	d.SpeakWait("batteries "baterias)
	gosub, bip
	;SoundBeep, 2000, 50
	;SoundBeep, 2000, 50
	;sleep 200
	;SoundBeep, 2000, 50
	;SoundBeep, 2000, 50
	;sleep 200
	;SoundBeep, 2000, 50
}
else if (Texto = "baterias 6"){
	;TrayTip, reconocimiento, %Texto%
	baterias = 6
	d.SpeakWait("batteries "baterias)
	gosub, bip
	;SoundBeep, 2000, 50
	;SoundBeep, 2000, 50
	;sleep 200
	;SoundBeep, 2000, 50
	;SoundBeep, 2000, 50
	;sleep 200
	;SoundBeep, 2000, 50
	;SoundBeep, 2000, 50
}
else if (Texto = "baterias 7"){
	;TrayTip, reconocimiento, %Texto%
	baterias = 7
	d.SpeakWait("batteries "baterias)
	gosub, bip
	;SoundBeep, 2000, 50
	;SoundBeep, 2000, 50
	;sleep 200
	;SoundBeep, 2000, 50
	;SoundBeep, 2000, 50
	;sleep 200
	;SoundBeep, 2000, 50
	;SoundBeep, 2000, 50
}
else if (Texto = "baterias 0"){
	;TrayTip, reconocimiento, %Texto%
	baterias = 0
	d.SpeakWait("batteries "baterias)
	gosub, bip
	;SoundBeep, 2000, 150
}
else if (Texto = "digito 1"){
	;TrayTip, reconocimiento, %Texto%
	digito = 1
	d.SpeakWait("digit "digito)
	gosub, bip
}
else if (Texto = "digito 2"){
	;TrayTip, reconocimiento, %Texto%
	digito = 2
	d.SpeakWait("digit "digito)
	gosub, bip
}
else if (Texto = "digito 3"){
	;TrayTip, reconocimiento, %Texto%
	digito = 3
	d.SpeakWait("digit "digito)
	gosub, bip
}
else if (Texto = "digito 4"){
	;TrayTip, reconocimiento, %Texto%
	digito = 4
	d.SpeakWait("digit "digito)
	gosub, bip
}
else if (Texto = "digito 5"){
	;TrayTip, reconocimiento, %Texto%
	digito = 5
	d.SpeakWait("digit "digito)
	gosub, bip
}
else if (Texto = "digito 6"){
	;TrayTip, reconocimiento, %Texto%
	digito = 6
	d.SpeakWait("digit "digito)
	gosub, bip
}
else if (Texto = "digito 7"){
	;TrayTip, reconocimiento, %Texto%
	digito = 7
	d.SpeakWait("digit "digito)
	gosub, bip
}
else if (Texto = "digito 8"){
	;TrayTip, reconocimiento, %Texto%
	digito = 8
	d.SpeakWait("digit "digito)
	gosub, bip
}
else if (Texto = "digito 9"){
	;TrayTip, reconocimiento, %Texto%
	digito = 9
	d.SpeakWait("digit "digito)
	gosub, bip
}
else if (Texto = "digito 0"){
	;TrayTip, reconocimiento, %Texto%
	digito = 0
	d.SpeakWait("digit "digito)
	gosub, bip
}
else if (Texto = "vocal no"){
	;TrayTip, reconocimiento, %Texto%
	vocal = "no"
	d.SpeakWait("vocal "vocal)
	gosub, bip
}
else if (Texto = "vocal si"){
	;TrayTip, reconocimiento, %Texto%
	vocal = "yes"
	d.SpeakWait("vocal "vocal)
	gosub, bip
}
else if (Texto = "car no"){
	;TrayTip, reconocimiento, %Texto%
	car = "no"
	d.SpeakWait("car "car)
	gosub, bip
}
else if (Texto = "car si"){
	;TrayTip, reconocimiento, %Texto%
	car = "yes"
	d.SpeakWait("car "car)
	gosub, bip
}
else if (Texto = "frik no"){
	;TrayTip, reconocimiento, %Texto%
	frk = "no"
	d.SpeakWait("freak "frk)
	gosub, bip
}
else if (Texto = "frik si"){
	;TrayTip, reconocimiento, %Texto%
	frk = "yes"
	d.SpeakWait("freak "frk)
	gosub, bip
}
else if (Texto = "paralelo no"){
	;TrayTip, reconocimiento, %Texto%
	paralelo = "no"
	d.SpeakWait("parallel "paralelo)
	gosub, bip
}
else if (Texto = "paralelo si"){
	;TrayTip, reconocimiento, %Texto%
	paralelo = "yes"
	d.SpeakWait("parallel "paralelo)
	gosub, bip
}
else if (Texto = "fin"){
	status = bomb - batteries %baterias% - digit - %digito% - vowel - %vocal% - car - %car% - freak - %frk% - parallel port - %paralelo%
	;d.SpeakWait(status)
	d.SpeakWait("end check")
	gosub, bip
	break
}
}
return

;------------------------------------------------------------------------------------------------------------
;---------rutina cables---------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------------------


cables:
SB_SetText(Texto, 2)
rojo = 0
blanco = 0
azul = 0
amarillo = 0
negro = 0

cable_1 = ""
cable_2 = ""
cable_3 = ""
cable_4 = ""
cable_5 = ""
cable_6 = ""

d.SetRate(0)
d.SetPitch(0)
;d.SpeakWait("cables")
d.SpeakWait("cables")
gosub, bip
d.SetRate(-1)
loop{

e.Recognize(["rojo" , "blanco" , "azul" , "amarillo" , "negro" , "fin", "salir"])
Texto := e.Prompt()

SB_SetText(Texto, 2)

if (Texto = "rojo"){
	;TrayTip, reconocimiento, %Texto%
	rojo += 1
	;d.SpeakWait("red")
	Texto = "red"
	gosub, sumar_cables
	gosub, bip
}
else if (Texto = "blanco"){
	;TrayTip, reconocimiento, %Texto%
	blanco += 1
	;d.SpeakWait("white")
	Texto = "white"
	gosub, sumar_cables
	gosub, bip
}
else if (Texto = "azul"){
	;TrayTip, reconocimiento, %Texto%
	azul += 1
	;d.SpeakWait("blue")
	Texto = "blue"
	gosub, sumar_cables
	gosub, bip
}
else if (Texto = "amarillo"){
	;TrayTip, reconocimiento, %Texto%
	amarillo += 1
	;d.SpeakWait("yellow")
	Texto = "yellow"
	gosub, sumar_cables
	gosub, bip
}
else if (Texto = "negro"){
	;TrayTip, reconocimiento, %Texto%
	negro += 1
	;d.SpeakWait("black")
	Texto = "black"
	gosub, sumar_cables
	gosub, bip
}
else if (Texto = "salir"){
	;TrayTip, reconocimiento, %Texto%
	d.SpeakWait("exit")
	gosub, bip
	break
}
else if (Texto = "fin"){
	;d.SpeakWait("cables end")
	gosub, proc_cables
	gosub, bip
	break
}
}
return

sumar_cables:
if cable_1 = ""
cable_1 = %Texto%
else if cable_2 = ""
cable_2 = %Texto%
else if cable_3 = ""
cable_3 = %Texto%
else if cable_4 = ""
cable_4 = %Texto%
else if cable_5 = ""
cable_5 = %Texto%
else if cable_6 = ""
cable_6 = %Texto%
return

proc_cables:
d.SetRate(-2)
cables_total := rojo + blanco + azul + amarillo + negro
;d.SpeakWait(cable_1 cable_2 cable_3 cable_4 cable_5 cable_6 " cables " cables_total)
cablestotal := cable_1 cable_2 cable_3 cable_4 cable_5 cable_6
;d.SpeakWait(cable_1 cable_2 cable_3 cable_4 cable_5 cable_6)
gosub, bip

d.SetRate(-4)
if cables_total = 3
{
	if rojo = 0
		d.SpeakWait(cablestotal " cut cable number 2 " cable_2)
	else if cable_3 = "white"
		d.SpeakWait(cablestotal " cut cable number 3 " cable_3)
	else if azul > 1
		d.SpeakWait(cablestotal " cut cable last blue")
	else
		d.SpeakWait(cablestotal " cut cable number 3 " cable_3)
}
else if cables_total = 4
{
	if (rojo > 1 and (digito = 1 or digito = 3 or digito = 5 or digito = 7 or digito = 9))
		d.SpeakWait(cablestotal " cable last red")
	else if (cable_4 = """yellow""" and rojo = 0)
		d.SpeakWait(cablestotal " cut cable number 1 " cable_1)
	else if azul = 1
		d.SpeakWait(cablestotal " cut cable number 1 " cable_1)
	else if amarillo > 1
		d.SpeakWait(cablestotal " cut cable number 4 " cable_4)
	else
		d.SpeakWait(cablestotal " cut cable number 2 " cable_2)
}
else if cables_total = 5
{
	if (cable_5 = """black""" and (digito = 1 or digito = 3 or digito = 5 or digito = 7 or digito = 9))
		d.SpeakWait(cablestotal " cut cable number 4 " cable_4)
	else if rojo = 1 and amarillo > 1
		d.SpeakWait(cablestotal " cut cable number 1 " cable_1)
	else if negro = 0
		d.SpeakWait(cablestotal " cut cable number 2 " cable_2)
	else
		d.SpeakWait(cablestotal " cut cable number 1 " cable_1)
}
else if cables_total = 6
{
	if (amarillo = 0 and (digito = 1 or digito = 3 or digito = 5 or digito = 7 or digito = 9))
		d.SpeakWait(cablestotal " cut cable number 3 " cable_3)
	else if (amarillo = 1 and blanco > 1)
		d.SpeakWait(cablestotal " cut cable number 4 " cable_4)
	else if rojo = 0
		d.SpeakWait(cablestotal " cut cable number 6 " cable_6)
	else
		d.SpeakWait(cablestotal " cut cable number 4 " cable_4)
}
return

;------------------------------------------------------------------------------------------------------------
;---------rutina boton---------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------------------

boton:
SB_SetText(Texto, 2)
b_color = ""
b_texto = ""
d.SetRate(-1)
;d.SpeakWait("color and text")
d.Speak("color and text")
gosub, bip
e.Recognize(["azul" , "blanco" , "amarillo" , "rojo"])
Texto := e.Prompt()

SB_SetText(Texto, 2)

if (Texto = "azul"){
	;TrayTip, reconocimiento, %Texto%
	b_resu1 = "blue"
	b_color = "azul"
	gosub, bip
}
else if (Texto = "blanco"){
	;TrayTip, reconocimiento, %Texto%
	b_resu1 = "white"
	b_color = "blanco"
	gosub, bip
}
else if (Texto = "amarillo"){
	;TrayTip, reconocimiento, %Texto%
	b_resu1 = "yellow"
	b_color = "amarillo"
	gosub, bip
}
else if (Texto = "rojo"){
	;TrayTip, reconocimiento, %Texto%
	b_resu1 = "red"
	b_color = "rojo"
	gosub, bip
}

;d.SpeakWait("text")
;gosub, bip
e.Recognize(["abort" , "detoneit" , "jold" , "pres"])
Texto := e.Prompt()

if (Texto = "abort"){
	;TrayTip, reconocimiento, %Texto%
	b_resu2 = "abort"
	b_texto = "abort"
	gosub, bip
}
else if (Texto = "detoneit"){
	;TrayTip, reconocimiento, %Texto%
	b_resu2 = "detonate"
	b_texto = "detonate"
	gosub, bip
}
else if (Texto = "jold"){
	;TrayTip, reconocimiento, %Texto%
	b_resu2 = "hold"
	b_texto = "hold"
	gosub, bip
}
else if (Texto = "pres"){
	;TrayTip, reconocimiento, %Texto%
	b_resu2 = "press"
	b_texto = "press"
	gosub, bip
}

SB_SetText(b_texto, 2)

gosub, proc_boton
return

proc_boton:
d.SetRate(-1)
;d.SpeakWait(b_resu1 b_resu2)
botonfinal := b_resu1 b_resu2
gosub, bip

;TrayTip, reconocimiento, %b_resu1% %b_resu2% %b_texto%
if (b_color = """azul""" and b_texto = """abort""")
	gosub, presionar_boton
else if (baterias > 1 and b_texto = """detonate""")
	d.SpeakWait(botonfinal " press and release")
else if (b_color = """blanco""" and car = """yes""")
	gosub, presionar_boton
else if (baterias > 2 and frk = """yes""")
	d.SpeakWait(botonfinal " press and release")
else if b_color = """amarillo"""
	gosub, presionar_boton
else if (b_color = """rojo""" and b_texto = """hold""")
	d.SpeakWait(botonfinal " press and release")
else
	gosub, presionar_boton
return

presionar_boton:
d.Speak(botonfinal "hold the button, strip color")
gosub, bip
e.Recognize(["azul" , "blanco" , "amarillo" , "rojo"])
Texto := e.Prompt()
SB_SetText(Texto, 2)

if (Texto = "azul"){
	;TrayTip, reconocimiento, %Texto%
	SB_SetText("release on four", 2)
	d.SpeakWait("release on four")
}
else if (Texto = "blanco"){
	;TrayTip, reconocimiento, %Texto%
	SB_SetText("release on one", 2)
	d.SpeakWait("release on one")
}
else if (Texto = "amarillo"){
	;TrayTip, reconocimiento, %Texto%
	SB_SetText("release on five", 2)
	d.SpeakWait("release on five")
}
else if (Texto = "rojo"){
	;TrayTip, reconocimiento, %Texto%
	SB_SetText("release on one", 2)
	d.SpeakWait("release on one")
}
return

;------------------------------------------------------------------------------------------------------------
;---------rutina simbolos------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------------------

simbolos:
;limpio variables
elemento =
elemento2 =
elemento3 =
elemento4 =
palabra = 0
;palabrabuscar = 0
;posiciones := {}
;palabra = ""
;letra1 = ""
;letra2 = ""
;letra3 = ""
;letra4 = ""
;palabra1 = ""
;palabra2 = ""
;palabra3 = ""
;palabra4 = ""

;msgbox, %palabra%

;para probar todas las palabras
;raqueta - alfa - lambda - november
;euro - raqueta - cespejada - quebec
;copyright - whisky - quebec - kilo
;seis - parrafo - bravo - araña
;candelabro - sonrisa - bravo - charlie
;seis - euro - puzzle - ae

SB_SetText(Texto, 2)
d.SpeakWait("simbols")
SoundBeep, 2000, 50

e.Recognize(["raqueta", "alfa", "lambda", "november", "araña", "hotel", "cespejada", "euro", "quebec", "estrella", "interrogacion", "copyright", "whisky", "kilo", "romeo", "seis", "parrafo", "bravo", "sonrisa", "candelabro", "charlie", "tres", "estrella negra", "puzzle", "ae", "enie", "omega"])
letra1 := e.Prompt()
TrayTip, reconocimiento, %letra1%
SB_SetText(letra1, 2)
SoundBeep, 2000, 50

e.Recognize(["raqueta", "alfa", "lambda", "november", "araña", "hotel", "cespejada", "euro", "quebec", "estrella", "interrogacion", "copyright", "whisky", "kilo", "romeo", "seis", "parrafo", "bravo", "sonrisa", "candelabro", "charlie", "tres", "estrella negra", "puzzle", "ae", "enie", "omega"])
letra2 := e.Prompt()
TrayTip, reconocimiento, %letra2%
SB_SetText(letra2, 2)
SoundBeep, 2000, 50
SoundBeep, 2000, 50

e.Recognize(["raqueta", "alfa", "lambda", "november", "araña", "hotel", "cespejada", "euro", "quebec", "estrella", "interrogacion", "copyright", "whisky", "kilo", "romeo", "seis", "parrafo", "bravo", "sonrisa", "candelabro", "charlie", "tres", "estrella negra", "puzzle", "ae", "enie", "omega"])
letra3 := e.Prompt()
TrayTip, reconocimiento, %letra3%
SB_SetText(letra3, 2)
SoundBeep, 2000, 50
SoundBeep, 2000, 50
sleep 200
SoundBeep, 2000, 50

e.Recognize(["raqueta", "alfa", "lambda", "november", "araña", "hotel", "cespejada", "euro", "quebec", "estrella", "interrogacion", "copyright", "whisky", "kilo", "romeo", "seis", "parrafo", "bravo", "sonrisa", "candelabro", "charlie", "tres", "estrella negra", "puzzle", "ae", "enie", "omega"])
letra4 := e.Prompt()
TrayTip, reconocimiento, %letra4%
SB_SetText(letra4, 2)
SoundBeep, 2000, 50
SoundBeep, 2000, 50
sleep 200
SoundBeep, 2000, 50
SoundBeep, 2000, 50

TrayTip, reconocimiento, %letra1% %letra2% %letra3% %letra4%


;return

;t::
;chequeo palabra 1
for i, elemento in palabralista1
	{
	;msgbox, %elemento% - %letra1%
	if (elemento = letra1)
		{
		for j, elemento2 in palabralista1
			{
			if (elemento2 = letra2)
				{
				for k, elemento3 in palabralista1
					{
					if (elemento3 = letra3)
						{
						for l, elemento4 in palabralista1
							{
							if (elemento4 = letra4)
								{
								palabra = 1
								}
							}until palabra = 1
						}
					}until palabra = 1
				}
			}until palabra = 1
		}
	}until palabra = 1

if palabra = 0
{
;chequeo palabra 2
for i, elemento in palabralista2
	{
	;msgbox, %elemento% - %letra1%
	if (elemento = letra1)
		{
		for j, elemento2 in palabralista2
			{
			if (elemento2 = letra2)
				{
				for k, elemento3 in palabralista2
					{
					if (elemento3 = letra3)
						{
						for l, elemento4 in palabralista2
							{
							if (elemento4 = letra4)
								{
								palabra = 2
								}
							}until palabra = 2
						}
					}until palabra = 2
				}
			}until palabra = 2
		}
	}until palabra = 2
}

if palabra = 0
{
;chequeo palabra 3
for i, elemento in palabralista3
	{
	;msgbox, %elemento% - %letra1%
	if (elemento = letra1)
		{
		for j, elemento2 in palabralista3
			{
			if (elemento2 = letra2)
				{
				for k, elemento3 in palabralista3
					{
					if (elemento3 = letra3)
						{
						for l, elemento4 in palabralista3
							{
							if (elemento4 = letra4)
								{
								palabra = 3
								}
							}until palabra = 3
						}
					}until palabra = 3
				}
			}until palabra = 3
		}
	}until palabra = 3
}

if palabra = 0
{
;chequeo palabra 4
for i, elemento in palabralista4
	{
	;msgbox, %elemento% - %letra1%
	if (elemento = letra1)
		{
		for j, elemento2 in palabralista4
			{
			if (elemento2 = letra2)
				{
				for k, elemento3 in palabralista4
					{
					if (elemento3 = letra3)
						{
						for l, elemento4 in palabralista4
							{
							if (elemento4 = letra4)
								{
								palabra = 4
								}
							}until palabra = 4
						}
					}until palabra = 4
				}
			}until palabra = 4
		}
	}until palabra = 4
}

if palabra = 0
{
;chequeo palabra 5
for i, elemento in palabralista5
	{
	;msgbox, %elemento% - %letra1%
	if (elemento = letra1)
		{
		for j, elemento2 in palabralista5
			{
			if (elemento2 = letra2)
				{
				for k, elemento3 in palabralista5
					{
					if (elemento3 = letra3)
						{
						for l, elemento4 in palabralista5
							{
							if (elemento4 = letra4)
								{
								palabra = 5
								}
							}until palabra = 5
						}
					}until palabra = 5
				}
			}until palabra = 5
		}
	}until palabra = 5
}

if palabra = 0
{
;chequeo palabra 6
for i, elemento in palabralista6
	{
	;msgbox, %elemento% - %letra1%
	if (elemento = letra1)
		{
		for j, elemento2 in palabralista6
			{
			if (elemento2 = letra2)
				{
				for k, elemento3 in palabralista6
					{
					if (elemento3 = letra3)
						{
						for l, elemento4 in palabralista6
							{
							if (elemento4 = letra4)
								{
								palabra = 6
								}
							}until palabra = 6
						}
					}until palabra = 6
				}
			}until palabra = 6
		}
	}until palabra = 6
}



;msgbox, fin lista %palabra%
;empiezo a buscar el orden
if palabra = 1
	palabrabuscar := ["raqueta", "alfa", "lambda", "november", "araña", "hotel", "cespejada"]
else if palabra = 2
	palabrabuscar := ["euro", "raqueta", "cespejada", "quebec", "estrella", "hotel", "interrogacion"]
else if palabra = 3
	palabrabuscar := ["copyright", "whisky", "quebec", "kilo", "romeo", "lambda", "estrella"]
else if palabra = 4
	palabrabuscar := ["seis", "parrafo", "bravo", "araña", "kilo", "interrogacion", "sonrisa"]
else if palabra = 5
	palabrabuscar := ["candelabro", "sonrisa", "bravo", "charlie", "parrafo", "tres", "estrella negra"]
else if palabra = 6
	palabrabuscar := ["seis", "euro", "puzzle", "ae", "candelabro", "enie", "omega"]
else
	msgbox, palabra no encontrada

posiciones := { one : letra1 , two : letra2 , three : letra3 , four : letra4 }

decir_final := ""



for i, elemento in palabrabuscar
	{
	for pos, letra in posiciones
		{
		if (letra = elemento)
			{
				decir_final = %decir_final%%pos%-
			}
		}
	}
;msgbox, fin lista %palabra% - %letra1% - %letra2% - %letra3% - %letra4%
;msgbox, %decir_final%
SB_SetText(decir_final, 2)
d.SetRate(-6)
d.SpeakWait(decir_final)

return

;------------------------------------------------------------------------------------------------------------
;---------rutina simon---------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------------------

simon:

decir_simon = ""
;rojo azul verde amarillo
;red blue green yellow
;chequeo vocal
if vocal = "yes"
{
    ;si tiene vocal
    if strike = 0
    {
        ;sin strike si vocal
        if color_simon = "simon rojo"
        {
            decir_simon = blue
        }
        else if color_simon = "simon azul"
        {
            decir_simon = red
        }
        else if color_simon = "simon verde"
        {
            decir_simon = yellow
        }
        else if color_simon = "simon amarillo"
        {
            decir_simon = green
        }
    }
    else if strike = 1
    {
        ;1 strike si vocal
        if color_simon = "simon rojo"
        {
            decir_simon = yellow
        }
        else if color_simon = "simon azul"
        {
            decir_simon = green
        }
        else if color_simon = "simon verde"
        {
            decir_simon = blue
        }
        else if color_simon = "simon amarillo"
        {
            decir_simon = red
        }
    }
    else
    {
        ;mas de un strike si vocal
        if color_simon = "simon rojo"
        {
            decir_simon = green
        }
        else if color_simon = "simon azul"
        {
            decir_simon = red
        }
        else if color_simon = "simon verde"
        {
            decir_simon = yellow
        }
        else if color_simon = "simon amarillo"
        {
            decir_simon = blue
        }
    }
}
else
{
    ;no tiene vocal
    if strike = 0
    {
        ;sin strike no vocal
        if color_simon = "simon rojo"
        {
            decir_simon = blue
        }
        else if color_simon = "simon azul"
        {
            decir_simon = yellow
        }
        else if color_simon = "simon verde"
        {
            decir_simon = green
        }
        else if color_simon = "simon amarillo"
        {
            decir_simon = red
        }
    }
    else if strike = 1
    {
        ;1 strike no vocal
        if color_simon = "simon rojo"
        {
            decir_simon = red
        }
        else if color_simon = "simon azul"
        {
            decir_simon = blue
        }
        else if color_simon = "simon verde"
        {
            decir_simon = yellow
        }
        else if color_simon = "simon amarillo"
        {
            decir_simon = green
        }
    }
    else
    {
        ;mas de un strike no vocal
        if color_simon = "simon rojo"
        {
            decir_simon = yellow
        }
        else if color_simon = "simon azul"
        {
            decir_simon = green
        }
        else if color_simon = "simon verde"
        {
            decir_simon = blue
        }
        else if color_simon = "simon amarillo"
        {
            decir_simon = red
        }
    }
}
;msgbox, %color_simon% - %decir_simon%

simonfinal = %Texto% - %decir_simon%

SB_SetText(simonfinal, 2)

d.SetRate(-2)
d.SpeakWait(decir_simon)
d.SetRate(-2)

return


;------------------------------------------------------------------------------------------------------------
;---------rutina quien---------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------------------


quien:
SB_SetText(Texto, 2)
posicion_quien = 0
buscar_quien = 
lista_quien := [""]
decir_quien = ""
quien_encontrada = ""
display_quien = ""

d.SetRate(-2)
d.SetPitch(0)
d.SpeakWait("who's on first")
gosub, bip

;saco el indice
e.Recognize(["ies", "first", "displey", "ocai", "seis", "nazin", "nada", "blanc", "no", "led", "lid", "rid", "red", "romeoeco", "limaeco", "joldon", "yanki", "yankialfa", "yankiromeo", "yankiapostrofe", "iuniformromeo", "tango eco", "tangoapostrofe", "tangoromeo", "tangoalfa", "si", "charlie", "charlieco", "don", "jol", "leftango", "laik", "midel", "next", "pres", "redi", "rait", "shur", "iuniform", "iuniform hotel", "iuniform uniform", "iuniform hotel hotel", "weit", "whisky tango", "whisky tango interrogacion", "salir"])
Texto := e.Prompt()

if (Texto = "ies")
	Texto = YES
else if (Texto = "first")
	Texto = FIRST
else if (Texto = "displey")
	Texto = DISPLAY
else if (Texto = "ocai")
	Texto = OKAY
else if (Texto = "seis")
	Texto = SAYS
else if (Texto = "nazin")
	Texto = NOTHING
else if (Texto = "nada")
	Texto = NADA
else if (Texto = "blanc")
	Texto = BLANK
else if (Texto = "no")
	Texto = NO
else if (Texto = "led")
	Texto = LED
else if (Texto = "lid")
	Texto = LEAD
else if (Texto = "rid")
	Texto = READ
else if (Texto = "red")
	Texto = RED
else if (Texto = "romeoeco")
	Texto = REED
else if (Texto = "limaeco")
	Texto = LEED
else if (Texto = "joldon")
	Texto = HOLD ON
else if (Texto = "yanki")
	Texto = YOU
else if (Texto = "yankialfa")
	Texto = YOU ARE
else if (Texto = "yankiromeo")
	Texto = YOUR
else if (Texto = "yankiapostrofe")
	Texto = YOU'RE
else if (Texto = "iuniformromeo")
	Texto = UR
else if (Texto = "tango eco")
	Texto = THERE
else if (Texto = "tangoapostrofe")
	Texto = THEY'RE
else if (Texto = "tangoromeo")
	Texto = THEIR
else if (Texto = "tangoalfa")
	Texto = THEY ARE
else if (Texto = "si")
	Texto = SEE
else if (Texto = "charlie")
	Texto = C
else if (Texto = "charlieco")
	Texto = CEE
else if (Texto = "don")
	Texto = DONE
else if (Texto = "jol")
	Texto = HOLD
else if (Texto = "leftango")
	Texto = LEFT
else if (Texto = "laik")
	Texto = LIKE
else if (Texto = "midel")
	Texto = MIDDLE
else if (Texto = "next")
	Texto = NEXT
else if (Texto = "pres")
	Texto = PRESS
else if (Texto = "redi")
	Texto = READY
else if (Texto = "rait")
	Texto = RIGHT
else if (Texto = "shur")
	Texto = SURE
else if (Texto = "iuniform")
	Texto = U
else if (Texto = "iuniform hotel")
	Texto = UH HUH
else if (Texto = "iuniform uniform")
	Texto = UH UH
else if (Texto = "iuniform hotel hotel")
	Texto = UHHH
else if (Texto = "weit")
	Texto = WAIT
else if (Texto = "whisky tango")
	Texto = WHAT
else if (Texto = "whisky tango interrogacion")
	Texto = WHAT?
else if (Texto = "salir")
	return
display_quien := Texto
SB_SetText(Texto, 2)

;chequeo que posicion buscar

if (Texto = "UR")
	posicion_quien = 1
else if (Texto = "FIRST" or Texto = "OKAY" or Texto = "C")
	posicion_quien = 2
else if (Texto = "YES" or Texto = "NOTHING" or Texto = "LED" or Texto = "THEY ARE")
	posicion_quien = 3
else if (Texto = "BLANK" or Texto = "READ" or Texto = "RED" or Texto = "YOU" or Texto = "YOUR" or Texto = "YOU'RE" or Texto = "THEIR")
	posicion_quien = 4
else if (Texto = "NADA" or Texto = "REED" or Texto = "LEED" or Texto = "THEY'RE")
	posicion_quien = 5
else if (Texto = "DISPLAY" or Texto = "SAYS" or Texto = "NO" or Texto = "LEAD" or Texto = "HOLD ON" or Texto = "YOU ARE" or Texto = "THERE" or Texto = "SEE" or Texto = "CEE")
	posicion_quien = 6
SoundBeep, 1000, 50

;-------------------pregunto por primera
e.Recognize(["ies", "first", "displey", "ocai", "seis", "nazin", "nada", "blanc", "no", "led", "lid", "rid", "red", "romeoeco", "limaeco", "joldon", "yanki", "yankialfa", "yankiromeo", "yankiapostrofe", "iuniformromeo", "tango eco", "tangoapostrofe", "tangoromeo", "tangoalfa", "si", "charlie", "charlieco", "don", "jol", "leftango", "laik", "midel", "next", "pres", "redi", "rait", "shur", "iuniform", "iuniform hotel", "iuniform uniform", "iuniform hotel hotel", "weit", "whisky tango", "whisky tango interrogacion"])
Texto := e.Prompt()

if (Texto = "ies")
	Texto = YES
else if (Texto = "first")
	Texto = FIRST
else if (Texto = "displey")
	Texto = DISPLAY
else if (Texto = "ocai")
	Texto = OKAY
else if (Texto = "seis")
	Texto = SAYS
else if (Texto = "nazin")
	Texto = NOTHING
else if (Texto = "nada")
	Texto = NADA
else if (Texto = "blanc")
	Texto = BLANK
else if (Texto = "no")
	Texto = NO
else if (Texto = "led")
	Texto = LED
else if (Texto = "lid")
	Texto = LEAD
else if (Texto = "rid")
	Texto = READ
else if (Texto = "red")
	Texto = RED
else if (Texto = "romeoeco")
	Texto = REED
else if (Texto = "limaeco")
	Texto = LEED
else if (Texto = "joldon")
	Texto = HOLD ON
else if (Texto = "yanki")
	Texto = YOU
else if (Texto = "yankialfa")
	Texto = YOU ARE
else if (Texto = "yankiromeo")
	Texto = YOUR
else if (Texto = "yankiapostrofe")
	Texto = YOU'RE
else if (Texto = "iuniformromeo")
	Texto = UR
else if (Texto = "tango eco")
	Texto = THERE
else if (Texto = "tangoapostrofe")
	Texto = THEY'RE
else if (Texto = "tangoromeo")
	Texto = THEIR
else if (Texto = "tangoalfa")
	Texto = THEY ARE
else if (Texto = "si")
	Texto = SEE
else if (Texto = "charlie")
	Texto = C
else if (Texto = "charlieco")
	Texto = CEE
else if (Texto = "don")
	Texto = DONE
else if (Texto = "jol")
	Texto = HOLD
else if (Texto = "leftango")
	Texto = LEFT
else if (Texto = "laik")
	Texto = LIKE
else if (Texto = "midel")
	Texto = MIDDLE
else if (Texto = "next")
	Texto = NEXT
else if (Texto = "pres")
	Texto = PRESS
else if (Texto = "redi")
	Texto = READY
else if (Texto = "rait")
	Texto = RIGHT
else if (Texto = "shur")
	Texto = SURE
else if (Texto = "iuniform")
	Texto = U
else if (Texto = "iuniform hotel")
	Texto = UH HUH
else if (Texto = "iuniform uniform")
	Texto = UH UH
else if (Texto = "iuniform hotel hotel")
	Texto = UHHH
else if (Texto = "weit")
	Texto = WAIT
else if (Texto = "whisky tango")
	Texto = WHAT
else if (Texto = "whisky tango interrogacion")
	Texto = WHAT?

quien_1 = %Texto%
SB_SetText(Texto, 2)
SoundBeep, 2000, 50


;-------------------pregunto por segunda
e.Recognize(["ies", "first", "displey", "ocai", "seis", "nazin", "nada", "blanc", "no", "led", "lid", "rid", "red", "romeoeco", "limaeco", "joldon", "yanki", "yankialfa", "yankiromeo", "yankiapostrofe", "iuniformromeo", "tango eco", "tangoapostrofe", "tangoromeo", "tangoalfa", "si", "charlie", "charlieco", "don", "jol", "leftango", "laik", "midel", "next", "pres", "redi", "rait", "shur", "iuniform", "iuniform hotel", "iuniform uniform", "iuniform hotel hotel", "weit", "whisky tango", "whisky tango interrogacion"])
Texto := e.Prompt()

if (Texto = "ies")
	Texto = YES
else if (Texto = "first")
	Texto = FIRST
else if (Texto = "displey")
	Texto = DISPLAY
else if (Texto = "ocai")
	Texto = OKAY
else if (Texto = "seis")
	Texto = SAYS
else if (Texto = "nazin")
	Texto = NOTHING
else if (Texto = "nada")
	Texto = NADA
else if (Texto = "blanc")
	Texto = BLANK
else if (Texto = "no")
	Texto = NO
else if (Texto = "led")
	Texto = LED
else if (Texto = "lid")
	Texto = LEAD
else if (Texto = "rid")
	Texto = READ
else if (Texto = "red")
	Texto = RED
else if (Texto = "romeoeco")
	Texto = REED
else if (Texto = "limaeco")
	Texto = LEED
else if (Texto = "joldon")
	Texto = HOLD ON
else if (Texto = "yanki")
	Texto = YOU
else if (Texto = "yankialfa")
	Texto = YOU ARE
else if (Texto = "yankiromeo")
	Texto = YOUR
else if (Texto = "yankiapostrofe")
	Texto = YOU'RE
else if (Texto = "iuniformromeo")
	Texto = UR
else if (Texto = "tango eco")
	Texto = THERE
else if (Texto = "tangoapostrofe")
	Texto = THEY'RE
else if (Texto = "tangoromeo")
	Texto = THEIR
else if (Texto = "tangoalfa")
	Texto = THEY ARE
else if (Texto = "si")
	Texto = SEE
else if (Texto = "charlie")
	Texto = C
else if (Texto = "charlieco")
	Texto = CEE
else if (Texto = "don")
	Texto = DONE
else if (Texto = "jol")
	Texto = HOLD
else if (Texto = "leftango")
	Texto = LEFT
else if (Texto = "laik")
	Texto = LIKE
else if (Texto = "midel")
	Texto = MIDDLE
else if (Texto = "next")
	Texto = NEXT
else if (Texto = "pres")
	Texto = PRESS
else if (Texto = "redi")
	Texto = READY
else if (Texto = "rait")
	Texto = RIGHT
else if (Texto = "shur")
	Texto = SURE
else if (Texto = "iuniform")
	Texto = U
else if (Texto = "iuniform hotel")
	Texto = UH HUH
else if (Texto = "iuniform uniform")
	Texto = UH UH
else if (Texto = "iuniform hotel hotel")
	Texto = UHHH
else if (Texto = "weit")
	Texto = WAIT
else if (Texto = "whisky tango")
	Texto = WHAT
else if (Texto = "whisky tango interrogacion")
	Texto = WHAT?

quien_2 = %Texto%
SB_SetText(Texto, 2)
SoundBeep, 2000, 50
SoundBeep, 2000, 50


;-------------------pregunto por tercera
e.Recognize(["ies", "first", "displey", "ocai", "seis", "nazin", "nada", "blanc", "no", "led", "lid", "rid", "red", "romeoeco", "limaeco", "joldon", "yanki", "yankialfa", "yankiromeo", "yankiapostrofe", "iuniformromeo", "tango eco", "tangoapostrofe", "tangoromeo", "tangoalfa", "si", "charlie", "charlieco", "don", "jol", "leftango", "laik", "midel", "next", "pres", "redi", "rait", "shur", "iuniform", "iuniform hotel", "iuniform uniform", "iuniform hotel hotel", "weit", "whisky tango", "whisky tango interrogacion"])
Texto := e.Prompt()

if (Texto = "ies")
	Texto = YES
else if (Texto = "first")
	Texto = FIRST
else if (Texto = "displey")
	Texto = DISPLAY
else if (Texto = "ocai")
	Texto = OKAY
else if (Texto = "seis")
	Texto = SAYS
else if (Texto = "nazin")
	Texto = NOTHING
else if (Texto = "nada")
	Texto = NADA
else if (Texto = "blanc")
	Texto = BLANK
else if (Texto = "no")
	Texto = NO
else if (Texto = "led")
	Texto = LED
else if (Texto = "lid")
	Texto = LEAD
else if (Texto = "rid")
	Texto = READ
else if (Texto = "red")
	Texto = RED
else if (Texto = "romeoeco")
	Texto = REED
else if (Texto = "limaeco")
	Texto = LEED
else if (Texto = "joldon")
	Texto = HOLD ON
else if (Texto = "yanki")
	Texto = YOU
else if (Texto = "yankialfa")
	Texto = YOU ARE
else if (Texto = "yankiromeo")
	Texto = YOUR
else if (Texto = "yankiapostrofe")
	Texto = YOU'RE
else if (Texto = "iuniformromeo")
	Texto = UR
else if (Texto = "tango eco")
	Texto = THERE
else if (Texto = "tangoapostrofe")
	Texto = THEY'RE
else if (Texto = "tangoromeo")
	Texto = THEIR
else if (Texto = "tangoalfa")
	Texto = THEY ARE
else if (Texto = "si")
	Texto = SEE
else if (Texto = "charlie")
	Texto = C
else if (Texto = "charlieco")
	Texto = CEE
else if (Texto = "don")
	Texto = DONE
else if (Texto = "jol")
	Texto = HOLD
else if (Texto = "leftango")
	Texto = LEFT
else if (Texto = "laik")
	Texto = LIKE
else if (Texto = "midel")
	Texto = MIDDLE
else if (Texto = "next")
	Texto = NEXT
else if (Texto = "pres")
	Texto = PRESS
else if (Texto = "redi")
	Texto = READY
else if (Texto = "rait")
	Texto = RIGHT
else if (Texto = "shur")
	Texto = SURE
else if (Texto = "iuniform")
	Texto = U
else if (Texto = "iuniform hotel")
	Texto = UH HUH
else if (Texto = "iuniform uniform")
	Texto = UH UH
else if (Texto = "iuniform hotel hotel")
	Texto = UHHH
else if (Texto = "weit")
	Texto = WAIT
else if (Texto = "whisky tango")
	Texto = WHAT
else if (Texto = "whisky tango interrogacion")
	Texto = WHAT?

quien_3 = %Texto%
SB_SetText(Texto, 2)
SoundBeep, 2000, 50
SoundBeep, 2000, 50
sleep 100
SoundBeep, 2000, 50


;-------------------pregunto por cuarta
e.Recognize(["ies", "first", "displey", "ocai", "seis", "nazin", "nada", "blanc", "no", "led", "lid", "rid", "red", "romeoeco", "limaeco", "joldon", "yanki", "yankialfa", "yankiromeo", "yankiapostrofe", "iuniformromeo", "tango eco", "tangoapostrofe", "tangoromeo", "tangoalfa", "si", "charlie", "charlieco", "don", "jol", "leftango", "laik", "midel", "next", "pres", "redi", "rait", "shur", "iuniform", "iuniform hotel", "iuniform uniform", "iuniform hotel hotel", "weit", "whisky tango", "whisky tango interrogacion"])
Texto := e.Prompt()

if (Texto = "ies")
	Texto = YES
else if (Texto = "first")
	Texto = FIRST
else if (Texto = "displey")
	Texto = DISPLAY
else if (Texto = "ocai")
	Texto = OKAY
else if (Texto = "seis")
	Texto = SAYS
else if (Texto = "nazin")
	Texto = NOTHING
else if (Texto = "nada")
	Texto = NADA
else if (Texto = "blanc")
	Texto = BLANK
else if (Texto = "no")
	Texto = NO
else if (Texto = "led")
	Texto = LED
else if (Texto = "lid")
	Texto = LEAD
else if (Texto = "rid")
	Texto = READ
else if (Texto = "red")
	Texto = RED
else if (Texto = "romeoeco")
	Texto = REED
else if (Texto = "limaeco")
	Texto = LEED
else if (Texto = "joldon")
	Texto = HOLD ON
else if (Texto = "yanki")
	Texto = YOU
else if (Texto = "yankialfa")
	Texto = YOU ARE
else if (Texto = "yankiromeo")
	Texto = YOUR
else if (Texto = "yankiapostrofe")
	Texto = YOU'RE
else if (Texto = "iuniformromeo")
	Texto = UR
else if (Texto = "tango eco")
	Texto = THERE
else if (Texto = "tangoapostrofe")
	Texto = THEY'RE
else if (Texto = "tangoromeo")
	Texto = THEIR
else if (Texto = "tangoalfa")
	Texto = THEY ARE
else if (Texto = "si")
	Texto = SEE
else if (Texto = "charlie")
	Texto = C
else if (Texto = "charlieco")
	Texto = CEE
else if (Texto = "don")
	Texto = DONE
else if (Texto = "jol")
	Texto = HOLD
else if (Texto = "leftango")
	Texto = LEFT
else if (Texto = "laik")
	Texto = LIKE
else if (Texto = "midel")
	Texto = MIDDLE
else if (Texto = "next")
	Texto = NEXT
else if (Texto = "pres")
	Texto = PRESS
else if (Texto = "redi")
	Texto = READY
else if (Texto = "rait")
	Texto = RIGHT
else if (Texto = "shur")
	Texto = SURE
else if (Texto = "iuniform")
	Texto = U
else if (Texto = "iuniform hotel")
	Texto = UH HUH
else if (Texto = "iuniform uniform")
	Texto = UH UH
else if (Texto = "iuniform hotel hotel")
	Texto = UHHH
else if (Texto = "weit")
	Texto = WAIT
else if (Texto = "whisky tango")
	Texto = WHAT
else if (Texto = "whisky tango interrogacion")
	Texto = WHAT?

quien_4 = %Texto%
SB_SetText(Texto, 2)
SoundBeep, 2000, 50
SoundBeep, 2000, 50
sleep 100
SoundBeep, 2000, 50
SoundBeep, 2000, 50


;-------------------pregunto por quinta
e.Recognize(["ies", "first", "displey", "ocai", "seis", "nazin", "nada", "blanc", "no", "led", "lid", "rid", "red", "romeoeco", "limaeco", "joldon", "yanki", "yankialfa", "yankiromeo", "yankiapostrofe", "iuniformromeo", "tango eco", "tangoapostrofe", "tangoromeo", "tangoalfa", "si", "charlie", "charlieco", "don", "jol", "leftango", "laik", "midel", "next", "pres", "redi", "rait", "shur", "iuniform", "iuniform hotel", "iuniform uniform", "iuniform hotel hotel", "weit", "whisky tango", "whisky tango interrogacion"])
Texto := e.Prompt()

if (Texto = "ies")
	Texto = YES
else if (Texto = "first")
	Texto = FIRST
else if (Texto = "displey")
	Texto = DISPLAY
else if (Texto = "ocai")
	Texto = OKAY
else if (Texto = "seis")
	Texto = SAYS
else if (Texto = "nazin")
	Texto = NOTHING
else if (Texto = "nada")
	Texto = NADA
else if (Texto = "blanc")
	Texto = BLANK
else if (Texto = "no")
	Texto = NO
else if (Texto = "led")
	Texto = LED
else if (Texto = "lid")
	Texto = LEAD
else if (Texto = "rid")
	Texto = READ
else if (Texto = "red")
	Texto = RED
else if (Texto = "romeoeco")
	Texto = REED
else if (Texto = "limaeco")
	Texto = LEED
else if (Texto = "joldon")
	Texto = HOLD ON
else if (Texto = "yanki")
	Texto = YOU
else if (Texto = "yankialfa")
	Texto = YOU ARE
else if (Texto = "yankiromeo")
	Texto = YOUR
else if (Texto = "yankiapostrofe")
	Texto = YOU'RE
else if (Texto = "iuniformromeo")
	Texto = UR
else if (Texto = "tango eco")
	Texto = THERE
else if (Texto = "tangoapostrofe")
	Texto = THEY'RE
else if (Texto = "tangoromeo")
	Texto = THEIR
else if (Texto = "tangoalfa")
	Texto = THEY ARE
else if (Texto = "si")
	Texto = SEE
else if (Texto = "charlie")
	Texto = C
else if (Texto = "charlieco")
	Texto = CEE
else if (Texto = "don")
	Texto = DONE
else if (Texto = "jol")
	Texto = HOLD
else if (Texto = "leftango")
	Texto = LEFT
else if (Texto = "laik")
	Texto = LIKE
else if (Texto = "midel")
	Texto = MIDDLE
else if (Texto = "next")
	Texto = NEXT
else if (Texto = "pres")
	Texto = PRESS
else if (Texto = "redi")
	Texto = READY
else if (Texto = "rait")
	Texto = RIGHT
else if (Texto = "shur")
	Texto = SURE
else if (Texto = "iuniform")
	Texto = U
else if (Texto = "iuniform hotel")
	Texto = UH HUH
else if (Texto = "iuniform uniform")
	Texto = UH UH
else if (Texto = "iuniform hotel hotel")
	Texto = UHHH
else if (Texto = "weit")
	Texto = WAIT
else if (Texto = "whisky tango")
	Texto = WHAT
else if (Texto = "whisky tango interrogacion")
	Texto = WHAT?

quien_5 = %Texto%
SB_SetText(Texto, 2)
SoundBeep, 2000, 50
SoundBeep, 2000, 50
sleep 100
SoundBeep, 2000, 50
SoundBeep, 2000, 50
sleep 100
SoundBeep, 2000, 50


;-------------------pregunto por sexta
e.Recognize(["ies", "first", "displey", "ocai", "seis", "nazin", "nada", "blanc", "no", "led", "lid", "rid", "red", "romeoeco", "limaeco", "joldon", "yanki", "yankialfa", "yankiromeo", "yankiapostrofe", "iuniformromeo", "tango eco", "tangoapostrofe", "tangoromeo", "tangoalfa", "si", "charlie", "charlieco", "don", "jol", "leftango", "laik", "midel", "next", "pres", "redi", "rait", "shur", "iuniform", "iuniform hotel", "iuniform uniform", "iuniform hotel hotel", "weit", "whisky tango", "whisky tango interrogacion"])
Texto := e.Prompt()

if (Texto = "ies")
	Texto = YES
else if (Texto = "first")
	Texto = FIRST
else if (Texto = "displey")
	Texto = DISPLAY
else if (Texto = "ocai")
	Texto = OKAY
else if (Texto = "seis")
	Texto = SAYS
else if (Texto = "nazin")
	Texto = NOTHING
else if (Texto = "nada")
	Texto = NADA
else if (Texto = "blanc")
	Texto = BLANK
else if (Texto = "no")
	Texto = NO
else if (Texto = "led")
	Texto = LED
else if (Texto = "lid")
	Texto = LEAD
else if (Texto = "rid")
	Texto = READ
else if (Texto = "red")
	Texto = RED
else if (Texto = "romeoeco")
	Texto = REED
else if (Texto = "limaeco")
	Texto = LEED
else if (Texto = "joldon")
	Texto = HOLD ON
else if (Texto = "yanki")
	Texto = YOU
else if (Texto = "yankialfa")
	Texto = YOU ARE
else if (Texto = "yankiromeo")
	Texto = YOUR
else if (Texto = "yankiapostrofe")
	Texto = YOU'RE
else if (Texto = "iuniformromeo")
	Texto = UR
else if (Texto = "tango eco")
	Texto = THERE
else if (Texto = "tangoapostrofe")
	Texto = THEY'RE
else if (Texto = "tangoromeo")
	Texto = THEIR
else if (Texto = "tangoalfa")
	Texto = THEY ARE
else if (Texto = "si")
	Texto = SEE
else if (Texto = "charlie")
	Texto = C
else if (Texto = "charlieco")
	Texto = CEE
else if (Texto = "don")
	Texto = DONE
else if (Texto = "jol")
	Texto = HOLD
else if (Texto = "leftango")
	Texto = LEFT
else if (Texto = "laik")
	Texto = LIKE
else if (Texto = "midel")
	Texto = MIDDLE
else if (Texto = "next")
	Texto = NEXT
else if (Texto = "pres")
	Texto = PRESS
else if (Texto = "redi")
	Texto = READY
else if (Texto = "rait")
	Texto = RIGHT
else if (Texto = "shur")
	Texto = SURE
else if (Texto = "iuniform")
	Texto = U
else if (Texto = "iuniform hotel")
	Texto = UH HUH
else if (Texto = "iuniform uniform")
	Texto = UH UH
else if (Texto = "iuniform hotel hotel")
	Texto = UHHH
else if (Texto = "weit")
	Texto = WAIT
else if (Texto = "whisky tango")
	Texto = WHAT
else if (Texto = "whisky tango interrogacion")
	Texto = WHAT?

quien_6 = %Texto%
SB_SetText(Texto, 2)
SoundBeep, 2000, 50
SoundBeep, 2000, 50
sleep 100
SoundBeep, 2000, 50
SoundBeep, 2000, 50
sleep 100
SoundBeep, 2000, 50
SoundBeep, 2000, 50

;igualo posicion de palabra con valor de la palabra
if posicion_quien = 1 
	buscar_quien = %quien_1%
else if posicion_quien = 2
	buscar_quien = %quien_2%
else if posicion_quien = 3
	buscar_quien = %quien_3%
else if posicion_quien = 4
	buscar_quien = %quien_4%
else if posicion_quien = 5
	buscar_quien = %quien_5%
else if posicion_quien = 6
	buscar_quien = %quien_6%

;definicion de variables tipo lista segun la palabra dada

if (buscar_quien = "READY")
	lista_quien := ["YES", "OKAY", "WHAT", "MIDDLE", "LEFT", "PRESS", "RIGHT", "BLANK", "READY", "NO", "FIRST", "UHHH", "NOTHING", "WAIT"]
else if (buscar_quien = "FIRST")
	lista_quien := ["LEFT", "OKAY", "YES", "MIDDLE", "NO", "RIGHT", "NOTHING", "UHHH", "WAIT", "READY", "BLANK", "WHAT", "PRESS", "FIRST"]
else if (buscar_quien = "NO")
	lista_quien := ["BLANK", "UHHH", "WAIT", "FIRST", "WHAT", "READY", "RIGHT", "YES", "NOTHING", "LEFT", "PRESS", "OKAY", "NO", "MIDDLE"]
else if (buscar_quien = "BLANK")
	lista_quien := ["WAIT", "RIGHT", "OKAY", "MIDDLE", "BLANK", "PRESS", "READY", "NOTHING", "NO", "WHAT", "LEFT", "UHHH", "YES", "FIRST"]
else if (buscar_quien = "NOTHING")
	lista_quien := ["UHHH", "RIGHT", "OKAY", "MIDDLE", "YES", "BLANK", "NO", "PRESS", "LEFT", "WHAT", "WAIT", "FIRST", "NOTHING", "READY"]
else if (buscar_quien = "YES")
	lista_quien := ["OKAY", "RIGHT", "UHHH", "MIDDLE", "FIRST", "WHAT", "PRESS", "READY", "NOTHING", "YES", "LEFT", "BLANK", "NO", "WAIT"]
else if (buscar_quien = "WHAT")
	lista_quien := ["UHHH", "WHAT", "LEFT", "NOTHING", "READY", "BLANK", "MIDDLE", "NO", "OKAY", "FIRST", "WAIT", "YES", "PRESS", "RIGHT"]
else if (buscar_quien = "UHHH")
	lista_quien := ["READY", "NOTHING", "LEFT", "WHAT", "OKAY", "YES", "RIGHT", "NO", "PRESS", "BLANK", "UHHH", "MIDDLE", "WAIT", "FIRST"]
else if (buscar_quien = "LEFT")
	lista_quien := ["RIGHT", "LEFT", "FIRST", "NO", "MIDDLE", "YES", "BLANK", "WHAT", "UHHH", "WAIT", "PRESS", "READY", "OKAY", "NOTHING"]
else if (buscar_quien = "RIGHT")
	lista_quien := ["YES", "NOTHING", "READY", "PRESS", "NO", "WAIT", "WHAT", "RIGHT", "MIDDLE", "LEFT", "UHHH", "BLANK", "OKAY", "FIRST"]
else if (buscar_quien = "MIDDLE")
	lista_quien := ["BLANK", "READY", "OKAY", "WHAT", "NOTHING", "PRESS", "NO", "WAIT", "LEFT", "MIDDLE", "RIGHT", "FIRST", "UHHH", "YES"]
else if (buscar_quien = "OKAY")
	lista_quien := ["MIDDLE", "NO", "FIRST", "YES", "UHHH", "NOTHING", "WAIT", "OKAY", "LEFT", "READY", "BLANK", "PRESS", "WHAT", "RIGHT"]
else if (buscar_quien = "WAIT")
	lista_quien := ["UHHH", "NO", "BLANK", "OKAY", "YES", "LEFT", "FIRST", "PRESS", "WHAT", "WAIT", "NOTHING", "READY", "RIGHT", "MIDDLE"]
else if (buscar_quien = "PRESS")
	lista_quien := ["RIGHT", "MIDDLE", "YES", "READY", "PRESS", "OKAY", "NOTHING", "UHHH", "BLANK", "LEFT", "FIRST", "WHAT", "NO", "WAIT"]
else if (buscar_quien = "YOU")
	lista_quien := ["SURE", "YOU ARE", "YOUR", "YOU'RE", "NEXT", "UH HUH", "UR", "HOLD", "WHAT?", "YOU", "UH UH", "LIKE", "DONE", "U"]
else if (buscar_quien = "YOU ARE")
	lista_quien := ["YOUR", "NEXT", "LIKE", "UH HUH", "WHAT?", "DONE", "UH UH", "HOLD", "YOU", "U", "YOU'RE", "SURE", "UR", "YOU ARE"]
else if (buscar_quien = "YOUR")
	lista_quien := ["UH UH", "YOU ARE", "UH HUH", "YOUR", "NEXT", "UR", "SURE", "U", "YOU'RE", "YOU", "WHAT?", "HOLD", "LIKE", "DONE"]
else if (buscar_quien = "YOU'RE")
	lista_quien := ["YOU", "YOU'RE", "UR", "NEXT", "UH UH", "YOU ARE", "U", "YOUR", "WHAT?", "UH HUH", "SURE", "DONE", "LIKE", "HOLD"]
else if (buscar_quien = "UR")
	lista_quien := ["DONE", "U", "UR", "UH HUH", "WHAT?", "SURE", "YOUR", "HOLD", "YOU'RE", "LIKE", "NEXT", "UH UH", "YOU ARE", "YOU"]
else if (buscar_quien = "U")
	lista_quien := ["UH HUH", "SURE", "NEXT", "WHAT?", "YOU'RE", "UR", "UH UH", "DONE", "U", "YOU", "LIKE", "HOLD", "YOU ARE", "YOUR"]
else if (buscar_quien = "UH HUH")
	lista_quien := ["UH HUH", "YOUR", "YOU ARE", "YOU", "DONE", "HOLD", "UH UH", "NEXT", "SURE", "LIKE", "YOU'RE", "UR", "U", "WHAT?"]
else if (buscar_quien = "UH UH")
	lista_quien := ["UR", "U", "YOU ARE", "YOU'RE", "NEXT", "UH UH", "DONE", "YOU", "UH HUH", "LIKE", "YOUR", "SURE", "HOLD", "WHAT?"]
else if (buscar_quien = "WHAT?")
	lista_quien := ["YOU", "HOLD", "YOU'RE", "YOUR", "U", "DONE", "UH UH", "LIKE", "YOU ARE", "UH HUH", "UR", "NEXT", "WHAT?", "SURE"]
else if (buscar_quien = "DONE")
	lista_quien := ["SURE", "UH HUH", "NEXT", "WHAT?", "YOUR", "UR", "YOU'RE", "HOLD", "LIKE", "YOU", "U", "YOU ARE", "UH UH", "DONE"]
else if (buscar_quien = "NEXT")
	lista_quien := ["WHAT?", "UH HUH", "UH UH", "YOUR", "HOLD", "SURE", "NEXT", "LIKE", "DONE", "YOU ARE", "UR", "YOU'RE", "U", "YOU"]
else if (buscar_quien = "HOLD")
	lista_quien := ["YOU ARE", "U", "DONE", "UH UH", "YOU", "UR", "SURE", "WHAT?", "YOU'RE", "NEXT", "HOLD", "UH HUH", "YOUR", "LIKE"]
else if (buscar_quien = "SURE")
	lista_quien := ["YOU ARE", "DONE", "LIKE", "YOU'RE", "YOU", "HOLD", "UH HUH", "UR", "SURE", "U", "WHAT?", "NEXT", "YOUR", "UH UH"]
else if (buscar_quien = "LIKE")
	lista_quien := ["YOU'RE", "NEXT", "U", "UR", "HOLD", "DONE", "UH UH", "WHAT?", "UH HUH", "YOU", "LIKE", "SURE", "YOU ARE", "YOUR"]

for i, elemento in lista_quien
	{
	if (elemento = quien_1)
		{
			decir_quien = one
			quien_encontrada = 1
		}
	else if (elemento = quien_2)
		{
			decir_quien = two
			quien_encontrada = 1
		}
	else if (elemento = quien_3)
		{
			decir_quien = three
			quien_encontrada = 1
		}
	else if (elemento = quien_4)
		{
			decir_quien = four
			quien_encontrada = 1
		}
	else if (elemento = quien_5)
		{
			decir_quien = five
			quien_encontrada = 1
		}
	else if (elemento = quien_6)
		{
			decir_quien = six
			quien_encontrada = 1
		}
	}until quien_encontrada = 1




;TrayTip, reconocimiento, %Texto%
;msgbox, %Texto% - %posicion_quien% - %buscar_quien% - %decir_quien% - %quien_1% - %quien_2% - %quien_3% - %quien_4% - %quien_5% - %quien_6%

;final_quien1 = %display_quien% - %quien_1% - %quien_2% - %quien_3% - %quien_4% - %quien_5% - %quien_6% - %decir_quien%
final_quien1 = %decir_quien%
Final_quien2 = position - %decir_quien%

SB_SetText(final_quien1, 2)

;d.SetRate(0)
;d.SpeakWait(final_quien1)
d.SetRate(-2)
d.SpeakWait(Final_quien2)
d.SetRate(0)

return



;------------------------------------------------------------------------------------------------------------
;---------rutina memorias------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------------------



memoria:

if procesadouno = 0
	{
	memorias_pos_1 := 0
	memorias_val_1 := 0
	memorias_pos_2 := 0
	memorias_val_2 := 0
	memorias_pos_3 := 0
	memorias_val_3 := 0
	memorias_pos_4 := 0
	memorias_val_5 := 0
	gosub, procesaruno
	return
	}
else if procesadodos = 0
	{
	gosub, procesardos
	return
	}
else if procesadotres = 0
	{
	gosub, porcesartres
	return
	}
else if procesadocuatro = 0
	{
	gosub, procesarcuatro
	return
	}
else if procesadocinco = 0
	{
	gosub, procesarcinco
	return
	}
else
	{
	procesadouno = 0
	procesadodos = 0
	procesadotres = 0
	procesadocuatro = 0
	procesadocinco = 0
	memorias_pos_1 := 0
	memorias_val_1 := 0
	memorias_pos_2 := 0
	memorias_val_2 := 0
	memorias_pos_3 := 0
	memorias_val_3 := 0
	memorias_pos_4 := 0
	memorias_val_5 := 0
	gosub, memoria
	}

return

procesaruno:
;--------------------------------------------rutina de pedir memoria1
;rutina de decir memoria1
d.SetRate(-2)
SB_SetText("memorias, secuencia 1", 2)
d.SpeakWait("sequence 1")
gosub, bip

e.Recognize(["1", "2", "3", "4"])
memorias_numero1 := e.Prompt()
;memorias_numero1 = (escuchar numero 1)
d.SetRate(-4)

if memorias_numero1 = 1
{
	;si es 1, presionar segunda posicion
	SB_SetText("presionar segunda posicion, valor?", 2)
	memorias_pos_1 := 2
	d.Speak("position second, value")
	gosub, bip
	e.Recognize(["1", "2", "3", "4"])
	value := e.Prompt()
	memorias_val_1 := value
}
else if memorias_numero1 = 2
{
	;si es 2, presionar segunda posicion
	SB_SetText("presionar segunda posicion, valor?", 2)
	memorias_pos_1 := 2
	d.Speak("position second, value")
	gosub, bip
	e.Recognize(["1", "2", "3", "4"])
	value := e.Prompt()
	memorias_val_1 := value
}
else if memorias_numero1 = 3
{
	;si es 3, presionar tercera posicion
	SB_SetText("presionar tercera posicion, valor?", 2)
	memorias_pos_1 := 3
	d.Speak("position third, value")
	gosub, bip
	e.Recognize(["1", "2", "3", "4"])
	value := e.Prompt()
	memorias_val_1 := value
}
else if memorias_numero1 = 4
{
	;si es 4, presionar cuarta posicion
	SB_SetText("presionar cuarta posicion, valor?", 2)
	memorias_pos_1 := 4
	d.Speak("position fourth, value")
	gosub, bip
	e.Recognize(["1", "2", "3", "4"])
	value := e.Prompt()
	memorias_val_1 := value
}

procesadouno = 1
return

procesardos:
;--------------------------------------------rutina de pedir memoria2
d.SetRate(-2)
SB_SetText("memorias, secuencia 2", 2)
d.SpeakWait("sequence 2")
d.SetRate(-4)
gosub, bip
e.Recognize(["1", "2", "3", "4"])
memorias_numero2 := e.Prompt()
;memorias_numero2 = (escuchar numero 2)

if memorias_numero2 = 1
{
	;si es 1, presionar valor 4
	SB_SetText("presionar 4, posicion?", 2)
	memorias_val_2 = 4
	d.Speak("value four, position")
	gosub, bip
	e.Recognize(["1", "2", "3", "4"])
	position := e.Prompt()
	memorias_pos_2 := position
}
else if memorias_numero2 = 2
{
	;si es 2, presionar misma posicion que en secuencia 1
	SB_SetText("presionar posicion " memorias_pos_1 ", valor?", 2)
	memorias_pos_2 := memorias_pos_1
	d.Speak("position " memorias_pos_1 ", value")
	gosub, bip
	e.Recognize(["1", "2", "3", "4"])
	value := e.Prompt()
	memorias_val_2 := value
}
else if memorias_numero2 = 3
{
	;si es 3, presionar primera posicion
	SB_SetText("presionar primera posicion, valor?", 2)
	memorias_pos_2 = 1
	d.Speak("position one, value")
	gosub, bip
	e.Recognize(["1", "2", "3", "4"])
	value := e.Prompt()
	memorias_val_2 := value
}
else if memorias_numero2 = 4
{
	;si es 4, presionar misma posicion que en secuencia 1
	SB_SetText("presionar posicion " memorias_pos_1 ", valor?", 2)
	memorias_pos_2 := memorias_pos_1
	d.Speak("position " memorias_pos_1 ", value")
	gosub, bip
	e.Recognize(["1", "2", "3", "4"])
	value := e.Prompt()
	memorias_val_2 := value
}

procesadodos = 1
return

porcesartres:
;--------------------------------------------rutina de pedir memoria3
d.SetRate(-2)
SB_SetText("memorias, secuencia 3", 2)
d.SpeakWait("sequence 3")
d.SetRate(-4)
gosub, bip
e.Recognize(["1", "2", "3", "4"])
memorias_numero3 := e.Prompt()
;memorias_numero3 = (escuchar numero 3)

if memorias_numero3 = 1
{
	;si es 1, presionar mismo valor que en stage 2
	SB_SetText("presionar valor " memorias_val_2 ", posicion?", 2)
	memorias_val_3 := memorias_val_2
	d.Speak("value " memorias_val_2 ", position")
	gosub, bip
	e.Recognize(["1", "2", "3", "4"])
	position := e.Prompt()
	memorias_pos_3 := position
}
else if memorias_numero3 = 2
{
	;si es 2, presionar mismo valor que en stage 1
	SB_SetText("presionar valor " memorias_val_1 ", posicion?", 2)
	memorias_val_3 := memorias_val_1
	d.Speak("value " memorias_val_1 ", position")
	gosub, bip
	e.Recognize(["1", "2", "3", "4"])
	position := e.Prompt()
	memorias_pos_3 := position
}
else if memorias_numero3 = 3
{
	;si es 3, presionar tercera posicion
	SB_SetText("presionar tercera posicion, valor?", 2)
	memorias_pos_3 = 3
	d.Speak("position third, value")
	gosub, bip
	e.Recognize(["1", "2", "3", "4"])
	value := e.Prompt()
	memorias_val_3 := value
}
else if memorias_numero3 = 4
{
	;si es 4, presionar valor 4
	SB_SetText("presionar 4, posicion?", 2)
	memorias_val_3 = 4
	d.Speak("value 4, position")
	gosub, bip
	e.Recognize(["1", "2", "3", "4"])
	position := e.Prompt()
	memorias_pos_3 := position
}

procesadotres = 1
return

procesarcuatro:
;--------------------------------------------rutina de pedir memoria4
d.SetRate(-2)
SB_SetText("memorias, secuencia 4", 2)
d.SpeakWait("sequence 4")
d.SetRate(-4)
gosub, bip
e.Recognize(["1", "2", "3", "4"])
memorias_numero4 := e.Prompt()
;memorias_numero4 = (escuchar numero 4)

if memorias_numero4 = 1
{
	;si es 1, presionar misma posicion que secuencia 1
	SB_SetText("presionar posicion " memorias_pos_1 ", valor?", 2)
	memorias_pos_4 := memorias_pos_1
	d.Speak("position " memorias_pos_1 ", value")
	gosub, bip
	e.Recognize(["1", "2", "3", "4"])
	value := e.Prompt()
	memorias_val_4 := value
}
else if memorias_numero4 = 2
{
	;si es 2, presionar primera posicion
	SB_SetText("presionar primera posicion, valor?", 2)
	memorias_pos_4 = 1
	d.Speak("position first, value")
	gosub, bip
	e.Recognize(["1", "2", "3", "4"])
	value := e.Prompt()
	memorias_val_4 := value
}
else if memorias_numero4 = 3
{
	;si es 3, presionar misma posicion que secuencia 2
	SB_SetText("presionar posicion " memorias_pos_2 ", valor?", 2)
	memorias_pos_4 := memorias_pos_2
	d.Speak("position " memorias_pos_2 ", value")
	gosub, bip
	e.Recognize(["1", "2", "3", "4"])
	value := e.Prompt()
	memorias_val_4 := value
}
else if memorias_numero4 = 4
{
	;si es 4, presionar misma posicion que secuencia 2
	SB_SetText("presionar posicion " memorias_pos_2 ", valor?", 2)
	memorias_pos_4 := memorias_pos_2
	d.Speak("position " memorias_pos_2 ", value")
	gosub, bip
	e.Recognize(["1", "2", "3", "4"])
	value := e.Prompt()
	memorias_val_4 := value
}

procesadocuatro = 1
return

procesarcinco:
;--------------------------------------------rutina de pedir memoria5
d.SetRate(-2)
SB_SetText("memorias, secuencia 5", 2)
d.SpeakWait("sequence 5")
d.SetRate(-4)
gosub, bip
e.Recognize(["1", "2", "3", "4"])
memorias_numero5 := e.Prompt()
;memorias_numero5 = (escuchar numero 5)

if memorias_numero5 = 1
{
	;si es 1, mismo valor que en stage 1
	SB_SetText("presionar valor " memorias_val_1, 2)
	d.Speak("press " memorias_val_1)
	gosub, bip
}
else if memorias_numero5 = 2
{
	;si es 2, mismo valor que en stage 2
	SB_SetText("presionar valor " memorias_val_2, 2)
	d.Speak("press " memorias_val_2)
	gosub, bip
}
else if memorias_numero5 = 3
{
	;si es 3, mismo valor que en stage 4
	SB_SetText("presionar valor " memorias_val_4, 2)
	d.Speak("press " memorias_val_4)
	gosub, bip
}
else if memorias_numero5 = 4
{
	;si es 4, mismo valor que en stage 3
	SB_SetText("presionar valor " memorias_val_3, 2)
	d.Speak("press " memorias_val_3)
	gosub, bip
}

procesadocinco = 1
return



;------------------------------------------------------------------------------------------------------------
;---------rutinas secuencia cables---------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------------------



secuencia:
rojo = 0
azul = 0
negro = 0
letra = ""
cable_actual = ""

d.SetRate(0)
d.SetPitch(0)
SB_SetText("secuencia", 2)
d.Speak("sequence")


loop{
gosub, bip

e.Recognize(["rojo alfa", "rojo bravo", "rojo charlie", "azul alfa", "azul bravo", "azul charlie", "negro alfa", "negro bravo", "negro charlie", "fin"])
Texto := e.Prompt()

if (Texto = "fin")
	{
	SB_SetText("fin", 2)
	break
	}
else if (Texto = "rojo alfa")
	{
	rojo := rojo + 1
	letra = a
	cable_actual = rojo
	gosub, proc_seq
	}
else if (Texto = "rojo bravo")
	{
	rojo := rojo + 1
	letra = b
	cable_actual = rojo
	gosub, proc_seq
	}
else if (Texto = "rojo charlie")
	{
	rojo := rojo + 1
	letra = c
	cable_actual = rojo
	gosub, proc_seq
	}
else if (Texto = "azul alfa")
	{
	azul := azul + 1
	letra = a
	cable_actual = azul
	gosub, proc_seq
	}
else if (Texto = "azul bravo")
	{
	azul := azul + 1
	letra = b
	cable_actual = azul
	gosub, proc_seq
	}
else if (Texto = "azul charlie")
	{
	azul := azul + 1
	letra = c
	cable_actual = azul
	gosub, proc_seq
	}
else if (Texto = "negro alfa")
	{
	negro := negro + 1
	letra = a
	cable_actual = negro
	gosub, proc_seq
	}
else if (Texto = "negro bravo")
	{
	negro := negro + 1
	letra = b
	cable_actual = negro
	gosub, proc_seq
	}
else if (Texto = "negro charlie")
	{
	negro := negro + 1
	letra = c
	cable_actual = negro
	gosub, proc_seq
	}
}
return

proc_seq:
secuencia_decir = ""
;SB_SetText(Texto " - " letra " - " rojo " - " azul " - " negro, 2)
;aca proceso la secuencia

if (cable_actual = "rojo")
	{
	;rutina de los rojos
	if rojo = 1
		{
		if (letra = "c")
			{
			gosub, seq_cortar
			}
		else
			{
			gosub, seq_nocortar
			}
		}
	else if rojo = 2
		{
		if (letra = "b")
			{
			gosub, seq_cortar
			}
		else
			{
			gosub, seq_nocortar
			}
		}
	else if rojo = 3
		{
		if (letra = "a")
			{
			gosub, seq_cortar
			}
		else
			{
			gosub, seq_nocortar
			}
		}
	else if rojo = 4
		{
		if (letra = "a" or letra = "c")
			{
			gosub, seq_cortar
			}
		else
			{
			gosub, seq_nocortar
			}
		}
	else if rojo = 5
		{
		if (letra = "b")
			{
			gosub, seq_cortar
			}
		else
			{
			gosub, seq_nocortar
			}
		}
	else if rojo = 6
		{
		if (letra = "a" or letra = "c")
			{
			gosub, seq_cortar
			}
		else
			{
			gosub, seq_nocortar
			}
		}
	else if rojo = 7
		{
		if (letra = "a" or letra = "b" or letra = "c")
			{
			gosub, seq_cortar
			}
		else
			{
			gosub, seq_nocortar
			}
		}
	else if rojo = 8
		{
		if (letra = "a" or letra = "b")
			{
			gosub, seq_cortar
			}
		else
			{
			gosub, seq_nocortar
			}
		}
	else if rojo = 9
		{
		if (letra = "b")
			{
			gosub, seq_cortar
			}
		else
			{
			gosub, seq_nocortar
			}
		}
	}
else if (cable_actual = "azul")
	{
	;rutina de los azules
	if azul = 1
		{
		if (letra = "b")
			{
			gosub, seq_cortar
			}
		else
			{
			gosub, seq_nocortar
			}
		}
	else if azul = 2
		{
		if (letra = "a" or letra = "c")
			{
			gosub, seq_cortar
			}
		else
			{
			gosub, seq_nocortar
			}
		}
	else if azul = 3
		{
		if (letra = "b")
			{
			gosub, seq_cortar
			}
		else
			{
			gosub, seq_nocortar
			}
		}
	else if azul = 4
		{
		if (letra = "a")
			{
			gosub, seq_cortar
			}
		else
			{
			gosub, seq_nocortar
			}
		}
	else if azul = 5
		{
		if (letra = "b")
			{
			gosub, seq_cortar
			}
		else
			{
			gosub, seq_nocortar
			}
		}
	else if azul = 6
		{
		if (letra = "b" or letra = "c")
			{
			gosub, seq_cortar
			}
		else
			{
			gosub, seq_nocortar
			}
		}
	else if azul = 7
		{
		if (letra = "c")
			{
			gosub, seq_cortar
			}
		else
			{
			gosub, seq_nocortar
			}
		}
	else if azul = 8
		{
		if (letra = "a" or letra = "c")
			{
			gosub, seq_cortar
			}
		else
			{
			gosub, seq_nocortar
			}
		}
	else if azul = 9
		{
		if (letra = "a")
			{
			gosub, seq_cortar
			}
		else
			{
			gosub, seq_nocortar
			}
		}
	}
else if (cable_actual = "negro")
	{
	;rutina de los negros
	if negro = 1
		{
		if (letra = "a" or letra = "b" or letra = "c")
			{
			gosub, seq_cortar
			}
		else
			{
			gosub, seq_nocortar
			}
		}
	else if negro = 2
		{
		if (letra = "a" or letra = "c")
			{
			gosub, seq_cortar
			}
		else
			{
			gosub, seq_nocortar
			}
		}
	else if negro = 3
		{
		if (letra = "b")
			{
			gosub, seq_cortar
			}
		else
			{
			gosub, seq_nocortar
			}
		}
	else if negro = 4
		{
		if (letra = "a" or letra = "c")
			{
			gosub, seq_cortar
			}
		else
			{
			gosub, seq_nocortar
			}
		}
	else if negro = 5
		{
		if (letra = "b")
			{
			gosub, seq_cortar
			}
		else
			{
			gosub, seq_nocortar
			}
		}
	else if negro = 6
		{
		if (letra = "b" or letra = "c")
			{
			gosub, seq_cortar
			}
		else
			{
			gosub, seq_nocortar
			}
		}
	else if negro = 7
		{
		if (letra = "a" or letra = "b")
			{
			gosub, seq_cortar
			}
		else
			{
			gosub, seq_nocortar
			}
		}
	else if negro = 8
		{
		if (letra = "c")
			{
			gosub, seq_cortar
			}
		else
			{
			gosub, seq_nocortar
			}
		}
	else if negro = 9
		{
		if (letra = "c")
			{
			gosub, seq_cortar
			}
		else
			{
			gosub, seq_nocortar
			}
		}
	}

;decir secuencia
d.SpeakWait(secuencia_decir)
return

seq_nocortar:
secuencia_decir = no
SB_SetText(Texto " - " letra " - " rojo " - " azul " - " negro " - NO cortar", 2)
return

seq_cortar:
secuencia_decir = cut
SB_SetText(Texto " - " letra " - " rojo " - " azul " - " negro " - cortar", 2)
return



;------------------------------------------------------------------------------------------------------------
;---------rutinas complicados------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------------------


complicados:
d.SetRate(0)
d.SetPitch(0)
SB_SetText("cables complicados", 2)
d.SpeakWai("complicated")

loop {
c_rojo = 0
c_azul = 0
c_estrella = 0
c_led = 0
d.Speak("cable")

loop {
gosub, bip
e.Recognize(["rojo", "azul", "estrella", "led", "fin", "salir"])
Texto := e.Prompt()

if (Texto = "fin")
	{
	SB_SetText("fin", 2)
	break
	}
else if (Texto = "salir")
	{
	return
	}
else if (Texto = "rojo")
	{
	SB_SetText("rojo", 2)
	c_rojo = 1
	}
else if (Texto = "azul")
	{
	SB_SetText("azul", 2)
	c_azul = 1
	}
else if (Texto = "estrella")
	{
	SB_SetText("estrella", 2)
	c_estrella = 1
	}
else if (Texto = "led")
	{
	SB_SetText("led", 2)
	c_led = 1
	}
}


;nada -> c
if (c_rojo = 0 and c_azul = 0 and c_estrella = 0 and c_led = 0)
	{
	gosub, complicados_c
	}
;rojo -> s
else if (c_rojo = 1 and c_azul = 0 and c_estrella = 0 and c_led = 0)
	{
	gosub, complicados_s
	}
;led -> d
else if (c_rojo = 0 and c_azul = 0 and c_estrella = 0 and c_led = 1)
	{
	gosub, complicados_d
	}
;azul -> s
else if (c_rojo = 0 and c_azul = 1 and c_estrella = 0 and c_led = 0)
	{
	gosub, complicados_s
	}
;estrella -> c
else if (c_rojo = 0 and c_azul = 0 and c_estrella = 1 and c_led = 0)
	{
	gosub, complicados_c
	}
;rojo estrella -> c
else if (c_rojo = 1 and c_azul = 0 and c_estrella = 1 and c_led = 0)
	{
	gosub, complicados_c
	}
;rojo azul -> s
else if (c_rojo = 1 and c_azul = 1 and c_estrella = 0 and c_led = 0)
	{
	gosub, complicados_s
	}
;azul led -> p
else if (c_rojo = 0 and c_azul = 1 and c_estrella = 0 and c_led = 1)
	{
	gosub, complicados_p
	}
;rojo led -> b
else if (c_rojo = 1 and c_azul = 0 and c_estrella = 0 and c_led = 1)
	{
	gosub, complicados_b
	}
;estrella led -> b
else if (c_rojo = 0 and c_azul = 0 and c_estrella = 1 and c_led = 1)
	{
	gosub, complicados_b
	}
;estrella azul -> d
else if (c_rojo = 0 and c_azul = 1 and c_estrella = 1 and c_led = 0)
	{
	gosub, complicados_d
	}
;rojo azul estrella -> p
else if (c_rojo = 1 and c_azul = 1 and c_estrella = 1 and c_led = 0)
	{
	gosub, complicados_p
	}
;azul led rojo -> s
else if (c_rojo = 1 and c_azul = 1 and c_estrella = 0 and c_led = 1)
	{
	gosub, complicados_s
	}
;azul led estrella -> p
else if (c_rojo = 0 and c_azul = 1 and c_estrella = 1 and c_led = 1)
	{
	gosub, complicados_p
	}
;rojo estrella led  -> b
else if (c_rojo = 1 and c_azul = 0 and c_estrella = 1 and c_led = 1)
	{
	gosub, complicados_b
	}
;estrella rojo azul led -> d
else if (c_rojo = 1 and c_azul = 1 and c_estrella = 1 and c_led = 1)
	{
	gosub, complicados_d
	}

}
return

complicados_c:
gosub, complicados_cortar
return

complicados_d:
gosub, complicados_nocortar
return

complicados_s:
;cortar si el ultimo digito es par
if (digito = 0 or digito = 2 or digito = 4 or digito = 6 or digito = 8)
	{
	gosub, complicados_cortar
	}
else
	{
	gosub, complicados_nocortar
	}
return

complicados_p:
;cortar si tiene puerto paralelo
if (paralelo = """yes""")
	{
	gosub, complicados_cortar
	}
else
	{
	gosub, complicados_nocortar
	}
return

complicados_b:
;cortar si tiene 2 o mas baterias >1
if baterias > 1
	{
	gosub, complicados_cortar
	}
else
	{
	gosub, complicados_nocortar
	}
return


complicados_cortar:
d.SetRate(-2)
d.SpeakWait("cut")
return

complicados_nocortar:
d.SetRate(-2)
d.SpeakWait("no")
return



;------------------------------------------------------------------------------------------------------------
;---------rutina contrasenas---------------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------------------


contrasena:
cont_palabra_sub1 := ""
cont_palabra_sub2 := ""
cont_palabra_sub3 := ""
cont_palabra_sub4 := ""
contr_final := ""
contrasena_encontrada = 0
fila_1 := []
fila_2 := []
fila_3 := []
fila_4 := []

d.SetRate(0)
d.SetPitch(0)
SB_SetText("contraseña", 2)
d.SpeakWait("password first")
gosub, bip
gosub, pedir_fila
fila_1 := filatemp

d.SpeakWait("second")
gosub, bip
gosub, pedir_fila
fila_2 := filatemp

d.SpeakWait("third")
gosub, bip
gosub, pedir_fila
fila_3 := filatemp

d.SpeakWait("fourth")
gosub, bip
gosub, pedir_fila
fila_4 := filatemp

for i, palabra_c in lista_contrasenas
{
;seteo las letras de la palabra
cont_palabra_sub1 := SubStr(palabra_c, 1 , 1)
cont_palabra_sub2 := SubStr(palabra_c, 2 , 1)
cont_palabra_sub3 := SubStr(palabra_c, 3 , 1)
cont_palabra_sub4 := SubStr(palabra_c, 4 , 1)

	for j, cont_letra1 in fila_1
	{
		if (cont_letra1 = cont_palabra_sub1)
		{
			for l, cont_letra2 in fila_2
			{
				if (cont_letra2 = cont_palabra_sub2)
				{
					for k, cont_letra3 in fila_3
					{
						if (cont_letra3 = cont_palabra_sub3)
						{
							for h, cont_letra4 in fila_4
							{
								if (cont_letra4 = cont_palabra_sub4)
								{
									contr_final := palabra_c
									contrasena_encontrada = 1
								}
							}until contrasena_encontrada = 1
						}
					}until contrasena_encontrada = 1
				}
			}until contrasena_encontrada = 1
		}
	}until contrasena_encontrada = 1
;msgbox, palabra procesada: %palabra%
}until contrasena_encontrada = 1

gosub, relatar_contr
gosub, contar_pass_final

return

pedir_fila:
filatemp := []
puntero_array = 0
;filatemp
loop 6 {

e.Recognize(["alfa", "bravo", "charlie", "delta", "eco", "foxtrot", "golf", "hotel", "india", "juliet", "kilo", "lima", "mike", "november", "oscar", "papa", "quebec", "romeo", "sierra", "tango", "unicorn", "victor", "whisky", "xray", "yanki", "zulu", "fin"])
Texto := e.Prompt()
SB_SetText(Texto, 2)
gosub, bip

if Texto = fin
	{
	;gosub, mostrararray
	break
	}

Texto := SubStr(Texto, 1 , 1)

puntero_array += 1
filatemp[puntero_array] := Texto

}
return

mostrararray:
contr_temp := ""

For key, letra in filatemp
	contr_temp = %contr_temp%%letra%

msgbox, %contr_temp%
return

relatar_contr:
if contr_final = about
	decir_contra_final = - alfa - bravo - oscar - uniform
else if contr_final = after
	decir_contra_final = - alfa - foxtrot - tango - eco
else if contr_final = again
	decir_contra_final = - alfa - golf - alfa - india
else if contr_final = below
	decir_contra_final = - bravo - eco - lime - oscar
else if contr_final = could
	decir_contra_final = - charlie - oscar - uniform - lima
else if contr_final = every
	decir_contra_final = - eco - victor - eco - romeo
else if contr_final = first
	decir_contra_final = - foxtrot - india - romeo - sierra
else if contr_final = found
	decir_contra_final = - foxtrot - oscar - uniform - november
else if contr_final = great
	decir_contra_final = - golf - romeo - eco - alfa
else if contr_final = house
	decir_contra_final = - hotel - oscar - uniform - sierra
else if contr_final = large
	decir_contra_final = - lima - alfa - romeo - golf
else if contr_final = learn
	decir_contra_final = - lima - eco - alfa - romeo
else if contr_final = never
	decir_contra_final = - november - eco - victor - eco
else if contr_final = other
	decir_contra_final = - oscar - tango - hotel - eco
else if contr_final = place
	decir_contra_final = - papa - lima - alfa - charlie
else if contr_final = plant
	decir_contra_final = - papa - lima - alfa - november
else if contr_final = point
	decir_contra_final = - papa - oscar - india - november
else if contr_final = right
	decir_contra_final = - romeo - india - golf - hotel
else if contr_final = small
	decir_contra_final = - sierra - mike - alfa - lima
else if contr_final = sound
	decir_contra_final = - sierra - oscar - uniform - november
else if contr_final = spell
	decir_contra_final = - sierra - papa - eco - lima
else if contr_final = still
	decir_contra_final = - sierra - tango - india - lima
else if contr_final = study
	decir_contra_final = - sierra - tango - uniform - delta
else if contr_final = their
	decir_contra_final = - tango - hotel - eco - india
else if contr_final = there
	decir_contra_final = - tango - hotel - eco - romeo
else if contr_final = these
	decir_contra_final = - tango - hotel - eco - sierra
else if contr_final = thing
	decir_contra_final = - tango - hotel - india - november
else if contr_final = think
	decir_contra_final = - tango - hotel - india - november - kilo
else if contr_final = three
	decir_contra_final = - tango - hotel - romeo - eco
else if contr_final = water
	decir_contra_final = - whiskey - alfa - tango - eco
else if contr_final = where
	decir_contra_final = - whiskey - hotel - eco - romeo
else if contr_final = which
	decir_contra_final = - whiskey - hotel - india - charlie
else if contr_final = world
	decir_contra_final = - whiskey - oscar - romeo - lima
else if contr_final = would
	decir_contra_final = - whiskey - oscar - unform - lima
else if contr_final = write
	decir_contra_final = - whiskey - romeo - india - tango
return

contar_pass_final:
;msgbox, palabra encontra: %contr_final%
d.SetRate(-2)
d.SetPitch(0)
;decir_contra_final = %contr_final% %decir_contra_final%
SB_SetText(contr_final " " decir_contra_final, 2)
d.SpeakWait("the password is -" contr_final " - " decir_contra_final)
;msgbox, %decir_contra_final%
return



;------------------------------------------------------------------------------------------------------------
;---------rutina morse---------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------------------


morse:
SB_SetText("codigo morse", 2)
d.SpeakWait("morse code")
SoundBeep, 2000, 50

e.Recognize(["raya punto punto punto pausa punto pausa punto raya pausa", "raya punto punto punto pausa punto punto pausa punto punto punto pausa", "raya punto punto punto pausa raya raya raya pausa raya raya pausa", "raya punto punto punto pausa raya raya raya pausa raya punto punto raya pausa", "raya punto punto punto pausa punto raya punto pausa punto pausa", "raya punto punto punto pausa punto raya punto pausa punto punto pausa", "punto punto raya punto pausa punto raya punto punto pausa punto punto pausa", "punto punto punto punto pausa punto raya pausa punto raya punto punto pausa", "punto raya punto punto pausa punto pausa punto raya pausa", "punto punto punto pausa punto punto punto punto pausa punto pausa", "punto punto punto pausa punto raya punto punto pausa punto punto pausa", "punto punto punto pausa raya pausa punto pausa", "punto punto punto pausa raya pausa punto punto pausa", "punto punto punto pausa raya pausa punto raya punto pausa", "raya pausa punto raya punto pausa punto punto pausa", "punto punto punto raya pausa punto pausa raya punto raya punto pausa"])
Texto := e.Prompt()

;msgbox, %Texto%



if (Texto = "raya punto punto punto pausa punto pausa punto raya pausa")
	Texto = beats 3.600
else if (Texto = "raya punto punto punto pausa punto punto pausa punto punto punto pausa")
	Texto = bistro 3.552
else if (Texto = "raya punto punto punto pausa raya raya raya pausa raya raya pausa")
	Texto = bombs 3.565
else if (Texto = "raya punto punto punto pausa raya raya raya pausa raya punto punto raya pausa")
	Texto = boxes 3.535
else if (Texto = "raya punto punto punto pausa punto raya punto pausa punto pausa")
	Texto = break 3.572
else if (Texto = "raya punto punto punto pausa punto raya punto pausa punto punto pausa")
	Texto = brick 3.575
else if (Texto = "punto punto raya punto pausa punto raya punto punto pausa punto punto pausa")
	Texto = flick 3.555
else if (Texto = "punto punto punto punto pausa punto raya pausa punto raya punto punto pausa")
	Texto = halls 3.515
else if (Texto = "punto raya punto punto pausa punto pausa punto raya pausa")
	Texto = leaks 3.542
else if (Texto = "punto punto punto pausa punto punto punto punto pausa punto pausa")
	Texto = shell 3.505
else if (Texto = "punto punto punto pausa punto raya punto punto pausa punto punto pausa")
	Texto = slick 3.522
else if (Texto = "punto punto punto pausa raya pausa punto pausa")
	Texto = steak 3.582
else if (Texto = "punto punto punto pausa raya pausa punto punto pausa")
	Texto = sting 3.592
else if (Texto = "punto punto punto pausa raya pausa punto raya punto pausa")
	Texto = strobe 3.545
else if (Texto = "raya pausa punto raya punto pausa punto punto pausa")
	Texto = trick 3.532
else if (Texto = "punto punto punto raya pausa punto pausa raya punto raya punto pausa")
	Texto = vector 3.595


SB_SetText(Texto, 2)
d.SetRate(-2)
d.SpeakWait(Texto)

SoundBeep, 2000, 50

sleep 3000
return



;------------------------------------------------------------------------------------------------------------
;---------rutina laberinto-----------------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------------------



laberinto:
;seteo la variable vacia, mucho muy importante
laberinto := {}



;pedir por laberinto arrancando con X
SB_SetText("laberinto, primer circulo", 2)
d.SpeakWait("maze, first circle")

e.Recognize(["1", "2", "3", "4", "5", "6", "7"])
laberinto_numerox := e.Prompt()
SB_SetText(laberinto_numerox, 2)
gosub, bip

e.Recognize(["1", "2", "3", "4", "5", "6", "7"])
laberinto_numeroy := e.Prompt()
SB_SetText(laberinto_numeroy, 2)
gosub, bip

;aca pedir por laberinto_numero
if (laberinto_numerox = 1 and laberinto_numeroy = 2)
{
	gosub, laberinto_1-2
	gosub, bip
}
else if (laberinto_numerox = 5 and laberinto_numeroy = 2)
{
	gosub, laberinto_5-2
	gosub, bip
}
else if (laberinto_numerox = 4 and laberinto_numeroy = 4)
{
	gosub, laberinto_4-4
	gosub, bip
}
else if (laberinto_numerox = 1 and laberinto_numeroy = 1)
{
	gosub, laberinto_1-1
	gosub, bip
}
else if (laberinto_numerox = 5 and laberinto_numeroy = 3)
{
	gosub, laberinto_5-3
	gosub, bip
}
else if (laberinto_numerox = 5 and laberinto_numeroy = 1)
{
	gosub, laberinto_5-1
	gosub, bip
}
else if (laberinto_numerox = 2 and laberinto_numeroy = 1)
{
	gosub, laberinto_2-1
	gosub, bip
}
else if (laberinto_numerox = 4 and laberinto_numeroy = 1)
{
	gosub, laberinto_4-1
	gosub, bip
}
else if (laberinto_numerox = 3 and laberinto_numeroy = 2)
{
	gosub, laberinto_3-2
	gosub, bip
}

;a esa altura ya esta cargado el laberinto
;vamos a suponer que es el laberinto_5-2
;gosub, laberinto_5-2
;gosub, bip

;--------------------------------------
;-restos del dibujo de la hermosa grid-
;--------------------------------------
/*
alto := 6
ancho := 6
posx := 10
posy := 10
punteroy := 1
punterox := 1

;dibujo mi hermosa grid de 13 x 13
loop, 13
{
	
	Loop, 13
	{
		if (laberinto["y_"punteroy]["x_"punterox] = "p")
		{
			Gui, Add, Progress,x%posx% y%posy% w%ancho% h%alto% cBlack vx_%punterox%y_%punteroy%, 100
		}
		else
		{
			Gui, Add, Progress,x%posx% y%posy% w%ancho% h%alto% cLime vx_%punterox%y_%punteroy%, 100
		}
		posx += 5
		punterox += 1
	}
	posx := 10
	punterox := 1
	punteroy += 1
	posy += 5
}
Gui,Show,w400 h400
*/


;pido posicion inicial y posicion final
;cuadrado blanco
;pido jugador arrancando con X
SB_SetText("cuadrado blanco", 2)
d.SpeakWait("white square")

;pido iniciox

e.Recognize(["1", "2", "3", "4", "5", "6", "7"])
iniciox := e.Prompt()
SB_SetText(iniciox, 2)
gosub, bip

;pido inicioy

e.Recognize(["1", "2", "3", "4", "5", "6", "7"])
inicioy := e.Prompt()
SB_SetText(inicioy, 2)
gosub, bip




;pido meta
;triangulo rojo
SB_SetText("triangulo rojo", 2)
d.SpeakWait("red triangle")
;pido finx
e.Recognize(["1", "2", "3", "4", "5", "6", "7"])
finx := e.Prompt()
SB_SetText(finx, 2)
gosub, bip

;pido finy
e.Recognize(["1", "2", "3", "4", "5", "6", "7"])
finy := e.Prompt()
SB_SetText(finy, 2)
gosub, bip




SB_SetText("calculando...", 2)


;la traduzco a mi grilla de 13 x 13
iniciox := iniciox * 2
inicioy := inicioy * 2
finx := finx * 2
finy := finy * 2

/*
;pinto lindos colores para que se vea kawaii, morphe se esta volviendo loco
;mi hermosa grid
GuiControl, +cYellow, x_%iniciox%y_%inicioy%
GuiControl, +cRed, x_%finx%y_%finy%
*/

;seteo la posicion en inicial y limpio variables de posiciones y pasos globales
gosub, reiniciar_posicion

;inicio procesamiento del laberinto
gosub, iniciar_proceso_laberinto

;aca deberia devolver el resultado
;gosub, decir_resultado_laberinto
return




iniciar_proceso_laberinto:
llego := 0
loop
{
gosub, contar_libres
gosub, mover
;sleep 20
if (llego = 1)
	{
	gosub, procesar_pasos
	break
	}
}
return

reiniciar_posicion:
actualx := iniciox
actualY := inicioy
antiguox := 0
antiguoy := 0
contador_pasos := 0
pasos := []
return

mover:
if (finx = actualx and finy = actualy)
	{
	;msgbox,listo, viejo, ya llegaste
	llego := 1
	}
else if espacios_totales < 1
	{
	;choque contra pared, bloquear ultimo cruce :ok_hand:
	laberinto["y_"ultimocrucey]["x_"ultimocrucex] := "p"
	gosub, reiniciar_posicion
	;te vamos a extranar grid, eras tan linda
	;gosub, repintar_tabla
	}
else if espacios_totales = 1
	{
	antiguox := actualx
	antiguoy := actualy
	if arr_libre = 1
		{
		gosub mover_arriba
		}
	else if der_libre = 1
		{
		gosub mover_derecha
		}
	else if abj_libre = 1
		{
		gosub mover_abajo
		}
	else if izq_libre = 1
		{
		gosub mover_izquierda
		}
	;muevo cursor, ya no lo muevo porque no lo dibujo :C
	;GuiControl, +cYellow, x_%actualx%y_%actualy%
	}
else if espacios_totales > 1
	{
	antiguox := actualx
	antiguoy := actualy
	if arr_libre = 1
		{
		ultimocrucex := actualx
		ultimocrucey := actualy - 1
		gosub mover_arriba
		}
	else if der_libre = 1
		{
		ultimocrucex := actualx + 1
		ultimocrucey := actualy
		gosub mover_derecha
		}
	else if abj_libre = 1
		{
		ultimocrucex := actualx
		ultimocrucey := actualy + 1
		gosub mover_abajo
		}
	else if izq_libre = 1
		{
		ultimocrucex := actualx - 1
		ultimocrucey := actualy
		gosub mover_izquierda
		}
	;muevo cursor, ya no lo muevo porque no lo dibujo :C
	;GuiControl, +cYellow, x_%actualx%y_%actualy%
	}
return

mover_arriba:
contador_pasos += 1
actualx := actualx
actualy := actualy - 1
pasos[contador_pasos] := "up"
return

mover_derecha:
contador_pasos += 1
actualx := actualx + 1
actualy := actualy
pasos[contador_pasos] := "right"
return

mover_abajo:
contador_pasos += 1
actualx := actualx
actualy := actualy + 1
pasos[contador_pasos] := "down"
return

mover_izquierda:
contador_pasos += 1
actualx := actualx - 1
actualy := actualy
pasos[contador_pasos] := "left"
return

contar_libres:
espacioslibres = 


arrx := actualx
arry := actualy - 1

izqx := actualx - 1
izqy := actualy

derx := actualx + 1
dery := actualy

abjx := actualx
abjy := actualy + 1

arr_libre := 0
izq_libre := 0
der_libre := 0
abj_libre := 0

arriba := laberinto["y_"arry]["x_"arrx]
izquierda := laberinto["y_"izqy]["x_"izqx]
derecha := laberinto["y_"dery]["x_"derx]
abajo := laberinto["y_"abjy]["x_"abjx]



if (antiguox = arrx and antiguoy = arry)
	{
	;es de donde vengo
	}
else
	{
	if (arriba = "o")
		{
		espacioslibres := espacioslibres "arriba - "
		arr_libre := 1
		}
	}

if (antiguox = izqx and antiguoy = izqy)
	{
	;es de donde vengo
	}
else
	{
	if (izquierda = "o")
		{
		espacioslibres := espacioslibres "izquierda - "
		izq_libre := 1
		}
	}

if (antiguox = derx and antiguoy = dery)
	{
	;es de donde vengo
	}
else
	{
	if (derecha = "o")
		{
		espacioslibres := espacioslibres "derecha - "
		der_libre := 1
		}
	}

if (antiguox = abjx and antiguoy = abjy)
	{
	;es de donde vengo
	}
else
	{
	if (abajo = "o")
		{
		espacioslibres := espacioslibres "abajo - "
		abj_libre := 1
		}
	}

espacios_totales := arr_libre + izq_libre + der_libre + abj_libre
;linda, hermosa linea debuggeadora
;msgbox, actual: x:%actualx% - y:%actualy%`rarriba: %arriba% - x:%arrx% y%arry%`rizquierda: %izquierda% - x:%izqx% y:%izqy%`rderecha: %derecha% - x:%derx% y:%dery%`rabajo: %abajo% - x:%abjx% y:%abjy%`respacios libres: %espacioslibres%`respacios totales: %espacios_totales%

return

procesar_pasos:
;pasos_completa := ""
;contador_salteado := 1
;pasos_cont_totales := 1
;for i, k in pasos
;	{
;	pasos_completa := pasos_completa pasos[contador_salteado] " - "
;	contador_salteado += 2
;	pasos_cont_totales += 1
;	}
;msgbox, %pasos_completa%
saltear := 0
pasos_cont_totales := 1
pasos_limpio_final := []
pasos_completa := ""

for i, k in pasos
{
	if (saltear = 0)
	{
		saltear := 1
		;pasos_completa := pasos_completa pasos[i] " - "
		pasos_limpio_final[pasos_cont_totales] := k
		pasos_cont_totales += 1
	}
	else
	{
		saltear := 0
	}
}

;aca devuelvo el resultado, cuidadito
gosub, decir_laberinto_final

return

decir_laberinto_final:
;d.SpeakWait("begin")

acumulador_laberinto := 0
pasos_completa := ""

for i, k in pasos_limpio_final
	if (acumulador_laberinto > 1)
		{
		SB_SetText(pasos_completa, 2)
		d.SpeakWait(pasos_completa)
		pasos_completa := ""
		pasos_completa := pasos_completa k " - "
		acumulador_laberinto := 1
		}
		else
		{
		pasos_completa := pasos_completa k " - "
		acumulador_laberinto += 1
		}

SB_SetText(pasos_completa, 2)
d.SpeakWait(pasos_completa)


return


/*
;mi hermosa grid
repintar_tabla:
alto := 6
ancho := 6
posx := 10
posy := 10
punteroy := 1
punterox := 1


loop, 13
{
	
	Loop, 13
	{
		if (laberinto["y_"punteroy]["x_"punterox] = "p")
		{
			GuiControl, +cBlack, x_%punterox%y_%punteroy%
		}
		else
		{
			GuiControl, +cLime, x_%punterox%y_%punteroy%
		}
		posx += 5
		punterox += 1
	}
	posx := 10
	punterox := 1
	punteroy += 1
	posy += 5
}


GuiControl, +cYellow, x_%iniciox%y_%inicioy%
GuiControl, +cRed, x_%finx%y_%finy%

return
*/

;----------------------------------------------------
;---------------------defino laberintos--------------
;----------------------------------------------------
;mucho muy importante
laberinto_1-2:
laberinto.Insert("y_1", {x_1:"p",x_2:"p",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"p",x_13:"p"})
laberinto.Insert("y_2", {x_1:"p",x_2:"o",x_3:"o",x_4:"o",x_5:"o",x_6:"o",x_7:"p",x_8:"o",x_9:"o",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_3", {x_1:"p",x_2:"o",x_3:"p",x_4:"p",x_5:"p",x_6:"o",x_7:"p",x_8:"o",x_9:"p",x_10:"p",x_11:"p",x_12:"p",x_13:"p"})
laberinto.Insert("y_4", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"o",x_6:"o",x_7:"p",x_8:"o",x_9:"o",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_5", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_6", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"o",x_6:"o",x_7:"p",x_8:"o",x_9:"o",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_7", {x_1:"p",x_2:"o",x_3:"p",x_4:"p",x_5:"p",x_6:"o",x_7:"p",x_8:"o",x_9:"p",x_10:"p",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_8", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"o",x_6:"o",x_7:"o",x_8:"o",x_9:"p",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_9", {x_1:"p",x_2:"o",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_10", {x_1:"p",x_2:"o",x_3:"o",x_4:"o",x_5:"o",x_6:"o",x_7:"p",x_8:"o",x_9:"o",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_11", {x_1:"p",x_2:"o",x_3:"p",x_4:"p",x_5:"p",x_6:"o",x_7:"p",x_8:"o",x_9:"p",x_10:"p",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_12", {x_1:"p",x_2:"o",x_3:"o",x_4:"o",x_5:"p",x_6:"o",x_7:"o",x_8:"o",x_9:"p",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_13", {x_1:"p",x_2:"p",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"p",x_13:"p"})
return
laberinto_5-2:
laberinto.Insert("y_1", {x_1:"p",x_2:"p",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"p",x_13:"p"})
laberinto.Insert("y_2", {x_1:"p",x_2:"o",x_3:"o",x_4:"o",x_5:"o",x_6:"o",x_7:"p",x_8:"o",x_9:"o",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_3", {x_1:"p",x_2:"p",x_3:"p",x_4:"o",x_5:"p",x_6:"p",x_7:"p",x_8:"o",x_9:"p",x_10:"o",x_11:"p",x_12:"p",x_13:"p"})
laberinto.Insert("y_4", {x_1:"p",x_2:"o",x_3:"o",x_4:"o",x_5:"p",x_6:"o",x_7:"o",x_8:"o",x_9:"p",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_5", {x_1:"p",x_2:"o",x_3:"p",x_4:"p",x_5:"p",x_6:"o",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_6", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"o",x_6:"o",x_7:"p",x_8:"o",x_9:"o",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_7", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"p",x_7:"p",x_8:"o",x_9:"p",x_10:"p",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_8", {x_1:"p",x_2:"o",x_3:"o",x_4:"o",x_5:"p",x_6:"o",x_7:"o",x_8:"o",x_9:"p",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_9", {x_1:"p",x_2:"o",x_3:"p",x_4:"p",x_5:"p",x_6:"o",x_7:"p",x_8:"p",x_9:"p",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_10", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"o",x_7:"p",x_8:"o",x_9:"o",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_11", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"o",x_7:"p",x_8:"o",x_9:"p",x_10:"p",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_12", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"o",x_6:"o",x_7:"p",x_8:"o",x_9:"o",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_13", {x_1:"p",x_2:"p",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"p",x_13:"p"})
return
laberinto_4-4:
laberinto.Insert("y_1", {x_1:"p",x_2:"p",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"p",x_13:"p"})
laberinto.Insert("y_2", {x_1:"p",x_2:"o",x_3:"o",x_4:"o",x_5:"o",x_6:"o",x_7:"p",x_8:"o",x_9:"p",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_3", {x_1:"p",x_2:"o",x_3:"p",x_4:"p",x_5:"p",x_6:"o",x_7:"p",x_8:"o",x_9:"p",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_4", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"o",x_7:"p",x_8:"o",x_9:"o",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_5", {x_1:"p",x_2:"p",x_3:"p",x_4:"o",x_5:"p",x_6:"o",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_6", {x_1:"p",x_2:"o",x_3:"o",x_4:"o",x_5:"p",x_6:"o",x_7:"p",x_8:"o",x_9:"o",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_7", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"o",x_7:"p",x_8:"o",x_9:"p",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_8", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"o",x_7:"p",x_8:"o",x_9:"p",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_9", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"o",x_7:"p",x_8:"o",x_9:"p",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_10", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"o",x_6:"o",x_7:"p",x_8:"o",x_9:"p",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_11", {x_1:"p",x_2:"o",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"o",x_9:"p",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_12", {x_1:"p",x_2:"o",x_3:"o",x_4:"o",x_5:"o",x_6:"o",x_7:"o",x_8:"o",x_9:"p",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_13", {x_1:"p",x_2:"p",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"p",x_13:"p"})
return
laberinto_1-1:
laberinto.Insert("y_1", {x_1:"p",x_2:"p",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"p",x_13:"p"})
laberinto.Insert("y_2", {x_1:"p",x_2:"o",x_3:"o",x_4:"o",x_5:"p",x_6:"o",x_7:"o",x_8:"o",x_9:"o",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_3", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_4", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"o",x_7:"o",x_8:"o",x_9:"o",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_5", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"o",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_6", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"o",x_6:"o",x_7:"p",x_8:"o",x_9:"o",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_7", {x_1:"p",x_2:"o",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"o",x_9:"p",x_10:"p",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_8", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"o",x_6:"o",x_7:"o",x_8:"o",x_9:"o",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_9", {x_1:"p",x_2:"o",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_10", {x_1:"p",x_2:"o",x_3:"o",x_4:"o",x_5:"o",x_6:"o",x_7:"o",x_8:"o",x_9:"o",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_11", {x_1:"p",x_2:"o",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_12", {x_1:"p",x_2:"o",x_3:"o",x_4:"o",x_5:"o",x_6:"o",x_7:"p",x_8:"o",x_9:"o",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_13", {x_1:"p",x_2:"p",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"p",x_13:"p"})
return
laberinto_5-3:
laberinto.Insert("y_1", {x_1:"p",x_2:"p",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"p",x_13:"p"})
laberinto.Insert("y_2", {x_1:"p",x_2:"o",x_3:"o",x_4:"o",x_5:"o",x_6:"o",x_7:"o",x_8:"o",x_9:"o",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_3", {x_1:"p",x_2:"p",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_4", {x_1:"p",x_2:"o",x_3:"o",x_4:"o",x_5:"o",x_6:"o",x_7:"o",x_8:"o",x_9:"o",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_5", {x_1:"p",x_2:"o",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"o",x_9:"p",x_10:"p",x_11:"p",x_12:"p",x_13:"p"})
laberinto.Insert("y_6", {x_1:"p",x_2:"o",x_3:"o",x_4:"o",x_5:"p",x_6:"o",x_7:"o",x_8:"o",x_9:"p",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_7", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_8", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"o",x_6:"o",x_7:"o",x_8:"o",x_9:"p",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_9", {x_1:"p",x_2:"o",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"o",x_9:"p",x_10:"p",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_10", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"o",x_6:"o",x_7:"o",x_8:"o",x_9:"o",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_11", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_12", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"o",x_6:"o",x_7:"o",x_8:"o",x_9:"o",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_13", {x_1:"p",x_2:"p",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"p",x_13:"p"})
return
laberinto_5-1:
laberinto.Insert("y_1", {x_1:"p",x_2:"p",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"p",x_13:"p"})
laberinto.Insert("y_2", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"o",x_6:"o",x_7:"p",x_8:"o",x_9:"o",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_3", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"o",x_7:"p",x_8:"p",x_9:"p",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_4", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"o",x_7:"p",x_8:"o",x_9:"o",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_5", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"o",x_7:"p",x_8:"o",x_9:"p",x_10:"p",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_6", {x_1:"p",x_2:"o",x_3:"o",x_4:"o",x_5:"p",x_6:"o",x_7:"p",x_8:"o",x_9:"p",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_7", {x_1:"p",x_2:"o",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"o",x_9:"p",x_10:"o",x_11:"p",x_12:"p",x_13:"p"})
laberinto.Insert("y_8", {x_1:"p",x_2:"o",x_3:"o",x_4:"o",x_5:"p",x_6:"o",x_7:"o",x_8:"o",x_9:"p",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_9", {x_1:"p",x_2:"p",x_3:"p",x_4:"o",x_5:"p",x_6:"o",x_7:"p",x_8:"o",x_9:"p",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_10", {x_1:"p",x_2:"o",x_3:"o",x_4:"o",x_5:"p",x_6:"o",x_7:"p",x_8:"o",x_9:"p",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_11", {x_1:"p",x_2:"o",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"o",x_9:"p",x_10:"p",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_12", {x_1:"p",x_2:"o",x_3:"o",x_4:"o",x_5:"o",x_6:"o",x_7:"o",x_8:"o",x_9:"p",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_13", {x_1:"p",x_2:"p",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"p",x_13:"p"})
return
laberinto_2-1:
laberinto.Insert("y_1", {x_1:"p",x_2:"p",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"p",x_13:"p"})
laberinto.Insert("y_2", {x_1:"p",x_2:"o",x_3:"o",x_4:"o",x_5:"o",x_6:"o",x_7:"o",x_8:"o",x_9:"p",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_3", {x_1:"p",x_2:"o",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"o",x_9:"p",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_4", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"o",x_6:"o",x_7:"p",x_8:"o",x_9:"o",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_5", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_6", {x_1:"p",x_2:"o",x_3:"o",x_4:"o",x_5:"p",x_6:"o",x_7:"o",x_8:"o",x_9:"p",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_7", {x_1:"p",x_2:"p",x_3:"p",x_4:"p",x_5:"p",x_6:"o",x_7:"p",x_8:"p",x_9:"p",x_10:"o",x_11:"p",x_12:"p",x_13:"p"})
laberinto.Insert("y_8", {x_1:"p",x_2:"o",x_3:"o",x_4:"o",x_5:"p",x_6:"o",x_7:"o",x_8:"o",x_9:"o",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_9", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"o",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_10", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"o",x_7:"o",x_8:"o",x_9:"o",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_11", {x_1:"p",x_2:"o",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_12", {x_1:"p",x_2:"o",x_3:"o",x_4:"o",x_5:"o",x_6:"o",x_7:"o",x_8:"o",x_9:"o",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_13", {x_1:"p",x_2:"p",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"p",x_13:"p"})
return
laberinto_4-1:
laberinto.Insert("y_1", {x_1:"p",x_2:"p",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"p",x_13:"p"})
laberinto.Insert("y_2", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"o",x_6:"o",x_7:"o",x_8:"o",x_9:"p",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_3", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"p",x_7:"p",x_8:"o",x_9:"p",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_4", {x_1:"p",x_2:"o",x_3:"o",x_4:"o",x_5:"o",x_6:"o",x_7:"p",x_8:"o",x_9:"o",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_5", {x_1:"p",x_2:"o",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_6", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"o",x_6:"o",x_7:"o",x_8:"o",x_9:"o",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_7", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_8", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"o",x_6:"o",x_7:"p",x_8:"o",x_9:"o",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_9", {x_1:"p",x_2:"o",x_3:"p",x_4:"p",x_5:"p",x_6:"o",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"p",x_13:"p"})
laberinto.Insert("y_10", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"o",x_7:"o",x_8:"o",x_9:"o",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_11", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"p",x_13:"p"})
laberinto.Insert("y_12", {x_1:"p",x_2:"o",x_3:"o",x_4:"o",x_5:"o",x_6:"o",x_7:"o",x_8:"o",x_9:"o",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_13", {x_1:"p",x_2:"p",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"p",x_13:"p"})
return
laberinto_3-2:
laberinto.Insert("y_1", {x_1:"p",x_2:"p",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"p",x_13:"p"})
laberinto.Insert("y_2", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"o",x_6:"o",x_7:"o",x_8:"o",x_9:"o",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_3", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_4", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"o",x_7:"o",x_8:"o",x_9:"p",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_5", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"o",x_7:"p",x_8:"p",x_9:"p",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_6", {x_1:"p",x_2:"o",x_3:"o",x_4:"o",x_5:"o",x_6:"o",x_7:"p",x_8:"o",x_9:"o",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_7", {x_1:"p",x_2:"o",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"o",x_9:"p",x_10:"p",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_8", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"o",x_7:"o",x_8:"o",x_9:"p",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_9", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"o",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_10", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"o",x_7:"p",x_8:"o",x_9:"o",x_10:"o",x_11:"p",x_12:"o",x_13:"p"})
laberinto.Insert("y_11", {x_1:"p",x_2:"o",x_3:"p",x_4:"o",x_5:"p",x_6:"o",x_7:"p",x_8:"o",x_9:"p",x_10:"o",x_11:"p",x_12:"p",x_13:"p"})
laberinto.Insert("y_12", {x_1:"p",x_2:"o",x_3:"o",x_4:"o",x_5:"p",x_6:"o",x_7:"o",x_8:"o",x_9:"p",x_10:"o",x_11:"o",x_12:"o",x_13:"p"})
laberinto.Insert("y_13", {x_1:"p",x_2:"p",x_3:"p",x_4:"p",x_5:"p",x_6:"p",x_7:"p",x_8:"p",x_9:"p",x_10:"p",x_11:"p",x_12:"p",x_13:"p"})
return




/*
handling FUCKING OBJECTSSSSSSSSSSS
eterna lucha de manejo de variables
c::
;ultimocrucey := "y_1"
;ultimocrucex := "x_1"
;laberinto.Insert("y_"[ultimocrucey], {x_[ultimocrucex]:"o"})
;laberinto.y_1.x_1 := "o"
;laberinto.ultimocrucey ultimocrucexr := "o"
;.RemoveAt(Pos , Length)
;laberinto[ultimocrucey][ultimocrucex] := "o"
;laberinto.y_1.Delete(x_1)
;laberinto.Insert("y_1", {x_14:"o"})
;laberinto[ultimocrucey][ultimocrucex] := "o"

ultimocrucey := 1
ultimocrucex := 1
laberinto["y_"ultimocrucey]["x_"ultimocrucex] := "p"
return

testin array asociativas te odio autohokey
v::
ultimocrucey := 1
ultimocrucex := 1
foo := laberinto["y_"ultimocrucey]["x_"ultimocrucex]
msgbox, %foo%
return



*/
































;------------------------------------------------------------------------------------------------------------
;---------rutinas finales------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------------------

ganamos:
SB_SetText("bien, chabon, bien", 2)
d.SetRate(-0)
d.SetPitch(-5)
d.SpeakWait("this was a triumph, i'm making a note here.. HUGE SUCCESS")
sleep 1000
return



exploto:
SB_SetText("te cagaste muriendo, viejo", 2)
;Oh good that's still working - Oh good.  My slow clap processor made it into this thing. So we have that.

d.SetRate(-2)
d.SetPitch(-5)

SoundPlay, %A_ScriptDir%\Slow clap.wav
sleep 700
d.SpeakWait("Oh good.  My slow clap processor its still working. So we have that.")
sleep 500
d.Speakwait("i hope you are proud of yourself")
sleep 500
d.Speak("congratulations")
SoundPlay, %A_ScriptDir%\Slow clap.wav
sleep 5000
return


;------------------------------------------------------------------------------------------------------------
;---------rutina status--------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------------------

status:
SB_SetText(Texto, 2)
	d.SetRate(-6)
	status = batteries %baterias% - digit %digito% -- vocal %vocal% -- car %car% -- freak %frk% -- parallel port %paralelo%
	d.SpeakWait(status)
	gosub, bip
	d.SetRate(-2)
return

;------------------------------------------------------------------------------------------------------------
;---------rutina cerrar--------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------------------

cerrar:
	SB_SetText("cerrar", 2)
	d.SetRate(-5)
	d.SpeakWait("goodbye")
	gosub, bip
	ExitApp
return


;------------------------------------------------------------------------------------------------------------
;---------rutina bip-----------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------------------


bip:
SoundBeep, 2000, 50
return































































































































































































/*
--------------------------------------------------
--------------------------------------------------
--------------------------------------------------
--------------------------------------------------
--------------------------------------------------
comentado

viejas memorias

procesaruno:
;--------------------------------------------rutina de pedir memoria1
;rutina de decir memoria1
d.SetRate(-2)
SB_SetText("memorias, secuencia 1", 2)
d.SpeakWait("sequence 1")

gosub, pedirnumero

if (numerook = 1)
	{
	memoria1 := numerofinal
	vai := SubStr(memoria1, 1 , 1)
	va1 := SubStr(memoria1, 2 , 1)
	va2 := SubStr(memoria1, 3 , 1)
	va3 := SubStr(memoria1, 4 , 1)
	va4 := SubStr(memoria1, 5 , 1)
	}
else
	{
	return
	}


;MsgBox %memoria1% - %vai% - %va1% - %va2% - %va3% - %va4%
SB_SetText(memoria1, 2)

if vai = 1
	{
		;si es 1 presionar segunda posicion
		posiciones.Insert("num1", {pos:2,valor:va2})
		presionar_memoria = %va2%
	}
else if vai = 2
	{
		;si es 2 presionar segunda posicion
		posiciones.Insert("num1", {pos:2,valor:va2})
		presionar_memoria = %va2%
	}
else if vai = 3
	{
		;si es 3 presionar segunda posicion
		posiciones.Insert("num1", {pos:3,valor:va3})
		presionar_memoria = %va3%
	}
else if vai = 4
	{
		;si es 4 presionar cuarta posicion
		posiciones.Insert("num1", {pos:4,valor:va4})
		presionar_memoria = %va4%
	}

;prueba = num1
;valor := posiciones[prueba].valor
;posicion := posiciones[prueba].pos
;msgbox, numero: %prueba% - pos: %posicion% - val: %valor% - presionar valor: %presionar_memoria%

;msgbox, memoria numero 1: %presionar_memoria%
d.SetRate(-4)
d.SpeakWait(presionar_memoria)

procesadouno = 1
return

procesardos:
;--------------------------------------------rutina de pedir memoria2
d.SetRate(-2)
SB_SetText("memorias, secuencia 2", 2)
d.SpeakWait("sequence 2")

gosub, pedirnumero

if numerook = 1
	{
	memoria2 := numerofinal
	vbi := SubStr(memoria2, 1 , 1)
	vb1 := SubStr(memoria2, 2 , 1)
	vb2 := SubStr(memoria2, 3 , 1)
	vb3 := SubStr(memoria2, 4 , 1)
	vb4 := SubStr(memoria2, 5 , 1)
	}
else
	{
	return
	}

SB_SetText(memoria2, 2)
;MsgBox %memoria2% - %vbi% - %vb1% - %vb2% - %vb3% - %vb4%

if vbi = 1
	{
		;si es 1 presionar el que dice 4
		if vb1 = 4
			pos_temp = 1
		else if vb2 = 4
			pos_temp = 2
		else if vb3 = 4
			pos_temp = 3
		else if vb4 = 4
			pos_temp = 4
		posiciones.Insert("num2", {pos:pos_temp,valor:4})
		presionar_memoria = 4
	}
else if vbi = 2
	{
		;si es 2 presionar misma posicion que num1
		pos_temp := posiciones["num1"].pos
		val_temp := vb%pos_temp%		
		posiciones.Insert("num2", {pos:pos_temp,valor:val_temp})
		presionar_memoria = %val_temp%
	}
else if vbi = 3
	{
		;si es 3 presionar primera posicion
		posiciones.Insert("num2", {pos:1,valor:vb1})
		presionar_memoria = %vb1%
	}
else if vbi = 4
	{
		;si es 4 presionar misma posicion que num1
		pos_temp := posiciones["num1"].pos
		val_temp := vb%pos_temp%
		posiciones.Insert("num2", {pos:pos_temp,valor:val_temp})
		presionar_memoria = %val_temp%
	}

;prueba = num2
;valor := posiciones[prueba].valor
;posicion := posiciones[prueba].pos
;msgbox, numero: %prueba% - pos: %posicion% - val: %valor% - presionar valor: %presionar_memoria%

;msgbox, memoria numero 2: %presionar_memoria%
d.SetRate(-4)
d.SpeakWait(presionar_memoria)

procesadodos = 1
return

porcesartres:
;--------------------------------------------rutina de pedir memoria3
d.SetRate(-2)
SB_SetText("memorias, secuencia 3", 2)
d.SpeakWait("sequence 3")

gosub, pedirnumero

if numerook = 1
	{
	memoria3 := numerofinal
	vci := SubStr(memoria3, 1 , 1)
	vc1 := SubStr(memoria3, 2 , 1)
	vc2 := SubStr(memoria3, 3 , 1)
	vc3 := SubStr(memoria3, 4 , 1)
	vc4 := SubStr(memoria3, 5 , 1)
	}
else
	{
	return
	}

;MsgBox %memoria3% - %vai% - %va1% - %va2% - %va3% - %va4%
SB_SetText(memoria3, 2)
if vci = 1
	{
		;si es 1 presionar el mismo valor de num2
		val_temp := posiciones["num2"].valor
		if (val_temp = vc1)
			pos_temp = 1
		else if (val_temp = vc2)
			pos_temp = 2
		else if (val_temp = vc3)
			pos_temp = 3
		else if (val_temp = vc4)
			pos_temp = 4
		posiciones.Insert("num3", {pos:pos_temp,valor:val_temp})
		presionar_memoria = %val_temp%
	}
else if vci = 2
	{
		;si es 2 presionar el mismo valor de num1
		val_temp := posiciones["num1"].valor
		if (val_temp = vc1)
			pos_temp = 1
		else if (val_temp = vc2)
			pos_temp = 2
		else if (val_temp = vc3)
			pos_temp = 3
		else if (val_temp = vc4)
			pos_temp = 4
		posiciones.Insert("num3", {pos:pos_temp,valor:val_temp})
		presionar_memoria = %val_temp%
	}
else if vci = 3
	{
		;si es 3 presionar tercera posicion
		posiciones.Insert("num3", {pos:3,valor:vc3})
		presionar_memoria = %vc3%
	}
else if vci = 4
	{
		;si es 4 presionar valor 4
		if vc1 = 4
			pos_temp = 1
		else if vc2 = 4
			pos_temp = 2
		else if vc3 = 4
			pos_temp = 3
		else if vc4 = 4
			pos_temp = 4
		posiciones.Insert("num3", {pos:pos_temp,valor:val_temp})
		presionar_memoria = %val_temp%
	}

;prueba = num3
;valor := posiciones[prueba].valor
;posicion := posiciones[prueba].pos
;msgbox, numero: %prueba% - pos: %posicion% - val: %valor% - presionar valor: %presionar_memoria%
;msgbox, memoria numero 3: %presionar_memoria%
d.SetRate(-4)
d.SpeakWait(presionar_memoria)

procesadotres = 1
return

procesarcuatro:
;--------------------------------------------rutina de pedir memoria4
d.SetRate(-2)
SB_SetText("memorias, secuencia 4", 2)
d.SpeakWait("sequence 4")

gosub, pedirnumero

if numerook = 1
	{
	memoria4 := numerofinal
	vdi := SubStr(memoria4, 1 , 1)
	vd1 := SubStr(memoria4, 2 , 1)
	vd2 := SubStr(memoria4, 3 , 1)
	vd3 := SubStr(memoria4, 4 , 1)
	vd4 := SubStr(memoria4, 5 , 1)
	}
else
	{
	return
	}

;MsgBox %memoria4% - %vai% - %va1% - %va2% - %va3% - %va4%
SB_SetText(memoria4, 2)
if vdi = 1
	{
		;si es 1 presionar la misma posicion en num1
		pos_temp := posiciones["num1"].pos
		val_temp := vd%pos_temp%		
		posiciones.Insert("num4", {pos:pos_temp,valor:val_temp})
		presionar_memoria = %val_temp%
	}
else if vdi = 2
	{
		;si es 2 presionar en la posicion 1
		posiciones.Insert("num4", {pos:1,valor:vd1})
		presionar_memoria = %vd1%
	}
else if vdi = 3
	{
		;si es 3 presionar misma posicion en num2
		pos_temp := posiciones["num2"].pos
		val_temp := vd%pos_temp%		
		posiciones.Insert("num4", {pos:pos_temp,valor:val_temp})
		presionar_memoria = %val_temp%
	}
else if vdi = 4
	{
		;si es 4 presionar misma posicion en num2
		pos_temp := posiciones["num2"].pos
		val_temp := vd%pos_temp%		
		posiciones.Insert("num4", {pos:pos_temp,valor:val_temp})
		presionar_memoria = %val_temp%
	}

;prueba = num4
;valor := posiciones[prueba].valor
;posicion := posiciones[prueba].pos
;msgbox, numero: %prueba% - pos: %posicion% - val: %valor% - presionar valor: %presionar_memoria%

;msgbox, memoria numero 4: %presionar_memoria%
d.SetRate(-4)
d.SpeakWait(presionar_memoria)

procesadocuatro = 1
return

procesarcinco:
;--------------------------------------------rutina de pedir memoria5
d.SetRate(-2)
SB_SetText("memorias, secuencia 5", 2)
d.SpeakWait("sequence 5")

gosub, pedirnumero

if numerook = 1
	{
	memoria5 := numerofinal
	vei := SubStr(memoria5, 1 , 1)
	ve1 := SubStr(memoria5, 2 , 1)
	ve2 := SubStr(memoria5, 3 , 1)
	ve3 := SubStr(memoria5, 4 , 1)
	ve4 := SubStr(memoria5, 5 , 1)
	}
else
	{
	return
	}

;MsgBox %memoria5% - %vai% - %va1% - %va2% - %va3% - %va4%
SB_SetText(memoria5, 2)
if vei = 1
	{
	;si es 1 mismo valor que num1
	val_temp := posiciones["num1"].valor
	presionar_memoria = %val_temp%
	}
else if vei = 2
	{
	;si es 2 mismo valor que num2
	val_temp := posiciones["num2"].valor
	presionar_memoria = %val_temp%
	}
else if vei = 3
	{
	;si es 3 mismo valor que num4
	val_temp := posiciones["num4"].valor
	presionar_memoria = %val_temp%
	}
else if vei = 4
	{
	;si es 4 mismo valor que nume3
	val_temp := posiciones["num3"].valor
	presionar_memoria = %val_temp%
	}

;msgbox, memoria numero5: %presionar_memoria%

d.SetRate(-4)
d.SpeakWait(presionar_memoria)

procesadocinco = 1
return



pedirnumero:
;--------------------------------------------rutina de pedir numero
numerook = 0

;pedir numero1
gosub, bip
e.Recognize(["1", "2", "3", "4", "salir"])
numero1 := e.Prompt()
if (numero1 = "salir")
	{
	return
	}

SB_SetText("1: "numero1, 2)
gosub, bip

;pedir numero2
e.Recognize(["1", "2", "3", "4", "salir"])
numero2 := e.Prompt()
if (numero2 = "salir")
	{
	return
	}

SB_SetText("2: "numero2, 2)
gosub, bip

;pedir numero3
e.Recognize(["1", "2", "3", "4", "salir"])
numero3 := e.Prompt()
if (numero3 = "salir")
	{
	return
	}

SB_SetText("3: "numero3, 2)
gosub, bip

;pedir numero4
e.Recognize(["1", "2", "3", "4", "salir"])
numero4 := e.Prompt()
if (numero4 = "salir")
	{
	return
	}

SB_SetText("4: "numero4, 2)
gosub, bip

;pedir numero5
e.Recognize(["1", "2", "3", "4", "salir"])
numero5 := e.Prompt()
if (numero5 = "salir")
	{
	return
	}

SB_SetText("5: "numero5, 2)
gosub, bip

numerofinal := numero1 numero2 numero3 numero4 numero5
numerook = 1

return

-----------------------------
-----------------------------
-----------------------------


chequeo inestable

-------------
d.SetRate(0)
d.SetPitch(0)
d.SetVolume(100)

d.SpeakWait("check bomb - batteries")
e.Recognize(["1", "2", "3", "4", "5", "6", "0"])
baterias := e.Prompt()
TrayTip, reconocimiento, baterias: %baterias%

d.SpeakWait("digit")
e.Recognize(["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"])
digito := e.Prompt()
TrayTip, reconocimiento, digito: %digito%

d.SpeakWait("vowel")
e.Recognize(["yes", "no"])
vocal := e.Prompt()
TrayTip, reconocimiento, vocal: %vocal%

d.SpeakWait("car")
e.Recognize(["yes", "no"])
car := e.Prompt()
TrayTip, reconocimiento, car: %car%

d.SpeakWait("freak")
e.Recognize(["yes", "no"])
freak := e.Prompt()
TrayTip, reconocimiento, freak: %freak%

d.SpeakWait("parallel port")
e.Recognize(["yes", "no"])
db25 := e.Prompt()
TrayTip, reconocimiento, db25: %db25%

d.SetRate(-4)
d.SetVolume(100)
status = bomb - batteries %baterias% - digit - %digito% - vowel - %vocal% - car - %car% - freak - %freak% - parallel port %db25%
d.SpeakWait(status)
chequear bomba

baterias?
1 2 3 4 5 6 cero
digito
1 2 3 4 5 6 7 8 9 0
vocal
si no
car
si no
freak
si no
parallel port
si no




;#Include tts.ahk


t::

e.Recognize(["alfa", "bravo", "charlie", "delta", "eco", "foxtrot", "golf", "hotel", "india", "juliet", "kilo", "lima", "mike", "november", "oscar", "papa", "quebec", "romeo", "sierra", "tango", "unicorn", "victor", "whisky", "xray", "yankee", "zulu"])
Text1 := e.Prompt()
e.Recognize(["alfa", "bravo", "charlie", "delta", "eco", "foxtrot", "golf", "hotel", "india", "juliet", "kilo", "lima", "mike", "november", "oscar", "papa", "quebec", "romeo", "sierra", "tango", "unicorn", "victor", "whisky", "xray", "yankee", "zulu"])
Text2 := e.Prompt()
e.Recognize(["alfa", "bravo", "charlie", "delta", "eco", "foxtrot", "golf", "hotel", "india", "juliet", "kilo", "lima", "mike", "november", "oscar", "papa", "quebec", "romeo", "sierra", "tango", "unicorn", "victor", "whisky", "xray", "yankee", "zulu"])
Text3 := e.Prompt()
e.Recognize(["alfa", "bravo", "charlie", "delta", "eco", "foxtrot", "golf", "hotel", "india", "juliet", "kilo", "lima", "mike", "november", "oscar", "papa", "quebec", "romeo", "sierra", "tango", "unicorn", "victor", "whisky", "xray", "yankee", "zulu"])
Text4 := e.Prompt()
e.Recognize(["alfa", "bravo", "charlie", "delta", "eco", "foxtrot", "golf", "hotel", "india", "juliet", "kilo", "lima", "mike", "november", "oscar", "papa", "quebec", "romeo", "sierra", "tango", "unicorn", "victor", "whisky", "xray", "yankee", "zulu"])
Text5 := e.Prompt()
e.Recognize(["alfa", "bravo", "charlie", "delta", "eco", "foxtrot", "golf", "hotel", "india", "juliet", "kilo", "lima", "mike", "november", "oscar", "papa", "quebec", "romeo", "sierra", "tango", "unicorn", "victor", "whisky", "xray", "yankee", "zulu"])
Text6 := e.Prompt()
e.Recognize(["alfa", "bravo", "charlie", "delta", "eco", "foxtrot", "golf", "hotel", "india", "juliet", "kilo", "lima", "mike", "november", "oscar", "papa", "quebec", "romeo", "sierra", "tango", "unicorn", "victor", "whisky", "xray", "yankee", "zulu"])
Text7 := e.Prompt()


TrayTip, Speech Recognition, %Text1% - %Text2% - %Text3% - %Text4% - %Text5% - %Text6% -%Text7% -

return







t::
TrayTip, Speech Recognition, Say a number between 0 and 9 inclusive

s := new SpeechRecognizer
;s.Recognize(["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"])
s.Recognize(["cero", "uno", "dos", "tres", "cuatro", "cinco", "seis", "siete", "ocho", "nueve"])
Text := s.Prompt()

TrayTip, Speech Recognition, You said: %Text%
;Sleep, 3000
return

q::
TrayTip, Speech Recognition, Say something

s := new SpeechRecognizer
s.Recognize(True)
Text := s.Prompt()

TrayTip, Speech Recognition, You said: %Text%
;Sleep, 3000
return


j::
s.SetRate(-2)
s.SetPitch(0)
s.SetVolume(100)
s.SpeakWait("Reading rate minus two and volume 100 and pitch 0")
return
*/
