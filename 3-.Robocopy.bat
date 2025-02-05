@echo off
Set Ruta=
set Fuente=

robocopy %fuente %ruta /XD  "C:\ruta\Carpeta1" ^
                            "C:\ruta\Carpeta2"

robocopy %fuente %ruta /XF  "C:\ruta\File1" ^ 
                            "C:\ruta\File2"

Rem C:\AppData\Roaming\Microsoft\Windows\Startmenu\Programs\Startup