@echo off

:Configuración
set "origen=C:\programacionbatch\Origen"
set "destino=C:\programacionbatch\Destino"
set "archivos_a_borrar=nocopiar.txt nocopiar1.txt"

:Copia de archivos y subdirectorios
xcopy %origen% %destino% /e /i /y

:Borrado de archivos y carpetas
for %%a in (%archivos_a_borrar%) do (
  echo Borrando "%%a"
  del /f /q /s "%destino%\%%a" 2>nul
)

echo Proceso completado.
pause
