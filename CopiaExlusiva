@echo off
setlocal enabledelayedexpansion

:: Definir rutas de origen y destino
set origen=C:
set destino=C:

:: Especificar los archivos a eliminar
set "eliminar=Nopasa.txt Nopasa1.txt"

:: Copiar los archivos de la ruta origen a la ruta destino
echo Copiando archivos de "%origen%" a "%destino%"
xcopy "%origen%" "%destino%" /s /e /y

:: Eliminar los archivos especificados del origen
echo Eliminando archivos del origen...

:: Bucle para procesar cada archivo a eliminar
for %%f in (%eliminar%) do (
    if exist "%origen%\%%f" (
        echo Eliminando: %%f
        del "%origen%\%%f"
    ) else (
        echo No se encontró el archivo: %%f
    )
)

echo Proceso completado.
pause
