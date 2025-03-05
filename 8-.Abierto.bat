@echo off
Start /b MonitorNGM_beta.exe

Rem Comprueba La Ejecución
:check
timeout /t 10 /nobreak >nul 2&1
Tasklist /NH /FI MonitorNGM_beta.exe

If Not "%ERRORLEVEL%" == "1"
goto check
Else 
Start /b MonitorNGM_beta.exe



Rem Crearle Una Política de Grupo 
Get-WinEvent -FilterHashtable @{name="New Process Name"; express {$_.Properties[1].Value}} | Where -Object 