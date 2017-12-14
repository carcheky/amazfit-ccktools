



# amazfit-ccktools


1) Sitúa el archivo `*.bin` que escojas en la carpeta `./watchfaces/` (si no existe, créala)
2) Abre el terminal y navega hasta la carpeta donde se ubica el archivo `ccktools` y ejecuta:
 `chmod +x ccktools;./ccktools;`

Esto, creará dentro de watchfaces una carpeta llamada `build_nombredetubin`, copiará el bin dentro y lo descomprimirá (también te abrirá un terminal situado en la carpeta recién creada).

Una vez editados los recursos, en este nuevo terminal, ejecutamos: `./compilar`

Si estamos conectados por adb a nuestro teléfono, nos lo copiará a nuestra carpeta /sdcard/Download, si no es así, ignorar el error
