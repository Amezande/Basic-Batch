@echo off
:check
timeout /t 10 /nobreak > nul 2&1
Rem Tasklist /f Programa.exe
Tasklist /NH /FI Programa.exe

if Not ("%ERRORLEVEL%" == "1"
    goto :check
) 