# amazfit-ccktools


‼️ COMPILAR Y DESCOMPILAR ARCHIVOS .BIN Y .RES ‼️

1. Para descompilar y compilar archivos necesitaremos la herramienta Python 2.7. Puedes descargarla desde la página oficial.

2. Para los archivos .RES necesitaremos el archivo res2img.py (Necesitamos que se encuentr en la misma carpeta de la raíz donde se encuentre Python).

3. Abriremos la ventana de comandos con: Windows+R, escribiremos cmd y daremos enter. Una vez dentro:

4. Escribiremos:    cd C:\Python27

5. Y luego: Python.exe res2img.py –i zyt.res –u  (siendo ZYT el nombre de mi archivo)

6. Se nos creará una carpeta con los múltiples archivos de ese .res

7. Una vez acabado el proceso de edición volveremos a compilar el archivo con el comando: python.exe res2img.py –i zyt.res –p

—------------------—

8. Para los archivos .BIN seguiremos el mismo método pero necesitaremos el archivo dial2img.py en la misma ubicación. 

9. El proceso será igual pero los comandos cambian; para descompilar usaremos: python.exe dial2img.py -u -i zyt.bin

10. Para compilar: Python.exe dial2img.py -i zyt.bin -p