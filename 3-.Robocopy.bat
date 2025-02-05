@echo off
Set Ruta="C:ruta Fuente"
set Fuente="C:ruta Destino"

Rem Copia excluyendo todas las carpetas contenidas aqui
robocopy %fuente %ruta /XD  "C:\ruta\Carpeta1" ^
                            "C:\ruta\Carpeta2"

Rem Copia excluyendo todos los archivos contenidos aquí 
robocopy %fuente %ruta /XF  "C:\ruta\File1" ^ 
                            "C:\ruta\File2"

Rem C:\AppData\Roaming\Microsoft\Windows\Startmenu\Programs\Startup