# amazfit-ccktools


Ejecutando el commando `./ccktools` podrá descargar/reinstalar las dependencias necesarias


Una vez añadido un .bit a la carpeta `watchfaces`, ejecutar el comando `./ccktools' y usar la opción `4` para generar un nuevo proyecto dentro de la carpeta `watchfaces`

Cualquiera de estos proyectos debería funcionar de forma independiente, sin necesidad de estar dentro de watchfaces.


Al crearse un proyecto nuevo, se genera una carpeta con el bin descomprimido (donde editar las imágennes)

Una vez editadas las imágenes, en el terminal, navegar hasta la carpeta donde se encuentra el archivo `compilar` y ejecutar `./compilar`.


Si tienes adb (tambien funciona con adb sobre red si antes te conectas con `adb connect ip:port` y estás conectado a tu teléfono, copiará el nuevo archivo directamente a tu teléfono usando adb push `adb push nombre_del_bin_.bin /sdcard/Download/`

Todos los archivos generados se mueven automáticamente a la carpeta `old`
