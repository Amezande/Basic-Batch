@echo off

set "origen=C:\programacionbatch\Origen"
set "destino=C:\programacionbatch\Destino"
set "archivos_a_borrar=nocopiar.txt nocopiar1.txt"

::Copia de archivos y subdirectorios /e = copia subdirectorios vacíos 
::/i = si no existe el directorio lo crea /y = sobreescribe sin preguntar
xcopy %origen% %destino% /e /i /y

::Borrado de archivos y carpetas /f = forzar /q = silencioso 
::/s = subdirectorios
:: %%a iterador for usa %%
for %%a in (%archivos_a_borrar%) do (
  echo Borrando "%%a"
  del /f /q /s "%destino%\%%a" 2>nul
)
pause
