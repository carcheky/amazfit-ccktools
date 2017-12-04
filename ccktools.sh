#!/bin/bash
error_flag=0

error(){
	echo ""
	echo "----- error -> ${error_message}"
	echo "----- ccktools.sh [descompilar/compilar] [RUTA ARCHIVO BIN]"
	echo ""
	echo ""
	echo ""
	exit
}
descompilar(){
	python dependencies/amazfitbip/tools/dial2img.py -u -i ${RUTABIN}
}

compilar(){
	python dependencies/amazfitbip/tools/dial2img.py -i ${RUTABIN} -p
}

timestamp() {
  timestamp2=date +"%T"
}

newwatchface(){
	mkdir watchfaces/${timestamp2}
}
newwatchface


if [[ ! $1 || ! $2 ]]; then
	error_flag=1
	error_message = "el argumento es incorrecto"
	error
fi

ACCION=$1
RUTABIN=$2



if [[ $1 == descompilar ]]; then
	descompilar ${RUTABIN}
elif [[ $1 == compilar ]]; then
	compilar ${RUTABIN}
else
	error_message = "el argumento es incorrecto"
	error
fi
