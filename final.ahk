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

baterias = 0
digito = 0
vocal = "no"
car = "no"
frk = "no"
paralelo = "no"

palabralista1 := ["raqueta", "alfa", "lambda", "november", "araña", "hotel", "cespejada"]
palabralista2 := ["euro", "raqueta", "cespejada", "quebec", "estrella", "hotel", "interrogacion"]
palabralista3 := ["copyright", "whisky", "quebec", "kilo", "romeo", "lambda", "estrella"]
palabralista4 := ["seis", "parrafo", "bravo", "araña", "kilo", "interrogacion", "sonrisa"]
palabralista5 := ["candelabro", "sonrisa", "bravo", "charlie", "parrafo", "tres", "estrella negra"]
palabralista6 := ["seis", "euro", "puzzle", "ae", "candelabro", "enie", "omega"]
palabra = 0

e := new SpeechRecognizer
d := new TTS()
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

e.Recognize(["chequear bomba", "status", "chau", "cables", "boton", "simbolos"])
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
}
return

chequear:
d.SetRate(0)
d.SetPitch(0)
d.SpeakWait("check bomb")
gosub, bip
d.SetRate(-1)
loop{

e.Recognize(["baterias 1" , "baterias 2" , "baterias 3" , "baterias 4" , "baterias 5" , "baterias 6" , "baterias 0" , "digito 1" , "digito 2" , "digito 3" , "digito 4" , "digito 5" , "digito 6" , "digito 7" , "digito 8" , "digito 9" , "vocal no" , "vocal si" , "car no" , "car si" , "frik no" , "frik si" , "paralelo no" , "paralelo si" , "fin"])
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

status:
	d.SetRate(-6)
	status = batteries %baterias% - digit %digito% -- vocal %vocal% -- car %car% -- freak %frk% -- parallel port %paralelo%
	d.SpeakWait(status)
	gosub, bip
	d.SetRate(-2)
return

cerrar:
	d.SetRate(-5)
	d.SpeakWait("goodbye")
	gosub, bip
	ExitApp
return

cables:
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
d.SpeakWait("cables")
gosub, bip
d.SetRate(-1)
loop{

e.Recognize(["rojo" , "blanco" , "azul" , "amarillo" , "negro" , "fin", "salir"])
Texto := e.Prompt()

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
d.SpeakWait(cable_1 cable_2 cable_3 cable_4 cable_5 cable_6)
gosub, bip

d.SetRate(-4)
if cables_total = 3
{
	if rojo = 0
		d.SpeakWait("cut cable number 2 " cable_2)
	else if cable_3 = "white"
		d.SpeakWait("cut cable number 3 " cable_3)
	else if azul > 1
		d.SpeakWait("cut cable last blue")
	else
		d.SpeakWait("cut cable number 3 " cable_3)
}
else if cables_total = 4
{
	if (rojo > 1 and (digito = 1 or digito = 3 or digito = 5 or digito = 7 or digito = 9))
		d.SpeakWait("cable last red")
	else if (cable_4 = "yellow" and rojo = 0)
		d.SpeakWait("cut cable number 1 " cable_1)
	else if azul = 1
		d.SpeakWait("cut cable number 1 " cable_1)
	else if amarillo > 1
		d.SpeakWait("cut cable number 4 " cable_4)
	else
		d.SpeakWait("cut cable number 2 " cable_2)
}
else if cables_total = 5
{
	if (cable_5 = "black" and (digito = 1 or digito = 3 or digito = 5 or digito = 7 or digito = 9))
		d.SpeakWait("cut cable number 4 " cable_4)
	else if rojo = 1 and amarillo > 1
		d.SpeakWait("cut cable number 1 " cable_1)
	else if negro = 0
		d.SpeakWait("cut cable number 2 " cable_2)
	else
		d.SpeakWait("cut cable number 1 " cable_1)
}
else if cables_total = 6
{
	if (amarillo = 0 and (digito = 1 or digito = 3 or digito = 5 or digito = 7 or digito = 9))
		d.SpeakWait("cut cable number 3 " cable_3)
	else if (amarillo = 1 and blanco > 1)
		d.SpeakWait("cut cable number 4 " cable_4)
	else if rojo = 0
		d.SpeakWait("cut cable number 6 " cable_6)
	else
		d.SpeakWait("cut cable number 4 " cable_4)
}
return

boton:
b_color = ""
b_texto = ""
d.SetRate(-1)
d.SpeakWait("color and text")
gosub, bip
e.Recognize(["azul" , "blanco" , "amarillo" , "rojo"])
Texto := e.Prompt()

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

gosub, proc_boton
return

proc_boton:
d.SetRate(-1)

d.SpeakWait(b_resu1 b_resu2)
gosub, bip
;TrayTip, reconocimiento, %b_resu1% %b_resu2% %b_texto%
if (b_color = """azul""" and b_texto = """abort""")
	gosub, presionar_boton
else if (baterias > 1 and b_texto = """detonate""")
	d.SpeakWait("press and release")
else if (b_color = """blanco""" and car = """yes""")
	gosub, presionar_boton
else if (baterias > 2 and frk = """yes""")
	d.SpeakWait("press and release")
else if b_color = """amarillo"""
	gosub, presionar_boton
else if (b_color = """rojo""" and b_texto = """hold""")
	d.SpeakWait("press and release")
else
	gosub, presionar_boton
return

presionar_boton:
d.SpeakWait("press and hold, strip color")
gosub, bip
e.Recognize(["azul" , "blanco" , "amarillo" , "rojo"])
Texto := e.Prompt()

if (Texto = "azul"){
	;TrayTip, reconocimiento, %Texto%
	d.SpeakWait("release on four")
	gosub, bip
}
else if (Texto = "blanco"){
	;TrayTip, reconocimiento, %Texto%
	d.SpeakWait("release on one")
	gosub, bip
}
else if (Texto = "amarillo"){
	;TrayTip, reconocimiento, %Texto%
	d.SpeakWait("release on five")
	gosub, bip
}
else if (Texto = "rojo"){
	;TrayTip, reconocimiento, %Texto%
	d.SpeakWait("release on one")
	gosub, bip
}
return

simbolos:
d.SpeakWait("ready")
SoundBeep, 2000, 50
palabra1 = ""
palabra2 = ""
palabra3 = ""
palabra4 = ""


e.Recognize(["raqueta", "alfa", "lambda", "november", "araña", "hotel", "cespejada", "euro", "quebec", "estrella", "interrogacion", "copyright", "whisky", "kilo", "romeo", "seis", "parrafo", "bravo", "sonrisa", "candelabro", "charlie", "tres", "estrella negra", "puzzle", "ae", "enie", "omega"])
letra1 := e.Prompt()
TrayTip, reconocimiento, %letra1%
SoundBeep, 2000, 50

e.Recognize(["raqueta", "alfa", "lambda", "november", "araña", "hotel", "cespejada", "euro", "quebec", "estrella", "interrogacion", "copyright", "whisky", "kilo", "romeo", "seis", "parrafo", "bravo", "sonrisa", "candelabro", "charlie", "tres", "estrella negra", "puzzle", "ae", "enie", "omega"])
letra2 := e.Prompt()
TrayTip, reconocimiento, %letra2%
SoundBeep, 2000, 50
SoundBeep, 2000, 50

e.Recognize(["raqueta", "alfa", "lambda", "november", "araña", "hotel", "cespejada", "euro", "quebec", "estrella", "interrogacion", "copyright", "whisky", "kilo", "romeo", "seis", "parrafo", "bravo", "sonrisa", "candelabro", "charlie", "tres", "estrella negra", "puzzle", "ae", "enie", "omega"])
letra3 := e.Prompt()
TrayTip, reconocimiento, %letra3%
SoundBeep, 2000, 50
SoundBeep, 2000, 50
sleep 200
SoundBeep, 2000, 50

e.Recognize(["raqueta", "alfa", "lambda", "november", "araña", "hotel", "cespejada", "euro", "quebec", "estrella", "interrogacion", "copyright", "whisky", "kilo", "romeo", "seis", "parrafo", "bravo", "sonrisa", "candelabro", "charlie", "tres", "estrella negra", "puzzle", "ae", "enie", "omega"])
letra4 := e.Prompt()
TrayTip, reconocimiento, %letra4%
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
d.SetRate(-6)
d.SpeakWait(decir_final)
return





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