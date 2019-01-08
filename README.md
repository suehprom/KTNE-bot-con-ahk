# KTNE-bot-con-ahk
bot para desactivar bomba escrito en AHK, porque el autohotkey es una herramienta muy poderosa
autohotkey es una herramienta de macros para windows

aca voy a ir poniendo una descripcion de la instalacion, cuando se me cante la regalada gana

final.ahk -> AHK principal
Speech Recognition.ahk -> libreria de reconocimiento de voz
TTS.ahk -> libreria de Text To Speech

ejecutar final.ahk, presionar la letra "q" para que el bot comience a escuchar

#comandos vocales:
despues de recibir un comando se va a escuchar un beep de 50 millisegundos de frecuencia 2000, que recibio el comando y que esta lista para recibir otro comando

#::chequear bomba::
va a escuchar la definicion de la bomba
-baterias [1-9]
-digito [1-9]
-paralelo [si-no]
-car [si-no]
-freak [si-no] (pronunciacion frik)
-fin
::::

#::boton::
primero va a pedir el color seguido del texto
-.........
