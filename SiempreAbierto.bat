@echo off
setlocal

set "EXE_NAME=archivo.exe"
set "EXE_PATH=C:\ruta\al\archivo.exe"
set "WAIT_TIME=30"

:monitor
tasklist /FI "IMAGENAME eq %EXE_NAME%" 2>NUL | find /I "%EXE_NAME%" > NUL
if %ERRORLEVEL% NEQ 0 start "" "%EXE_PATH%"

timeout /t %WAIT_TIME% /nobreak > NUL
goto monitor
