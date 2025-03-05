@echo off
setlocal

:: ID personalizado para el evento
set EVENT_ID=1001

:: Ruta al archivo EXE a monitorear
set EXE_PATH="C:\ruta\al\archivo.exe"

:: Iniciar el proceso
echo Iniciando el proceso con ID %EVENT_ID%...
start "" %EXE_PATH%

:: Esperar a que el proceso se cierre
echo Esperando que el proceso se cierre...
:wait_for_process
tasklist /FI "IMAGENAME eq archivo.exe" 2>NUL | find /I "archivo.exe" > NUL
if errorlevel 1 (
    echo El proceso se ha cerrado. Evento %EVENT_ID% completado.
    goto end
)
timeout /t 1 > NUL
goto wait_for_process

:end
echo Fin del script.
endlocal