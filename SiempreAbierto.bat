@echo off
setlocal

:: Nombre del proceso sin la ruta
set "EXE_NAME=archivo.exe"

:: Ruta completa del archivo ejecutable
set "EXE_PATH=C:\ruta\al\archivo.exe"

:: Tiempo de espera en segundos (ajusta según necesidad)
set "WAIT_TIME=30"

:: Bucle infinito para mantener la aplicación abierta
:monitor
echo Verificando si %EXE_NAME% está en ejecución...

:: Comprobar si el proceso está en ejecución
tasklist /FI "IMAGENAME eq %EXE_NAME%" 2>NUL | find /I "%EXE_NAME%" > NUL
if %ERRORLEVEL% NEQ 0 (
    echo El proceso %EXE_NAME% no está en ejecución. Reiniciándolo...
    start "" "%EXE_PATH%"
) else (
    echo El proceso %EXE_NAME% sigue en ejecución.
)

:: Esperar más tiempo antes de volver a comprobar (para ahorrar recursos)
echo Esperando %WAIT_TIME% segundos antes de la siguiente verificación...
timeout /t %WAIT_TIME% /nobreak > NUL
goto monitor
