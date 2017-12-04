#!/bin/bash
error_flag=0
OPTIONS=$1


ccktools_help(){
	echo "------------------------------------------------------------------------------ "
	echo "------ Descargar & reinstalar dependencias"
	echo "------ "
	if [[ ${error_flag} == 1 ]]; then
	echo "------ debes introducir un comando después del nombre del archivo"
	echo "------ "
	fi
	echo "------ 1) download 		=> 	Download dependencies"
	echo "------ 2) delete 		=> 	Delete previous downloaded dependencies"
	echo "------ 3) delete & download 	=> 	Delete & download dependencies"
	echo "------ "
	echo "------ introduce una opción (1,2,3):"
	read OPTIONS
	
	if [[ ! ${OPTIONS} ]]; then
		ccktools_help
	fi
}
ccktools_download(){
	if [[ -d "dependencies" ]]; then
		echo "------ "
		echo "------ las dependencias ya se habían descargado"
		echo "------ para volver a descargarlas, ejecute de nuevo este script"
		echo "------ "
	fi
	if [[ ! -d "dependencies" ]]; then
		echo "------ "
		echo "------ descargando dependencias"
		echo "------ "
		mkdir dependencies
		git clone https://github.com/amazfitbip/tools.git dependencies
		chmod +x dependencies/*.py
	fi
	if [[ ! -d "watchfaces" ]]; then
		mkdir watchfaces
	fi
}
ccktools_delete(){
	echo "------ "
	echo "------ borrando dependencias"
	echo "------ "
	rm -fr tools
	rm -fr dependencies
	rm -fr watchfaces
}
ccktools_reinstall(){
	ccktools_delete
	ccktools_download
}

if [[ ! $1 ]]; then
	error_flag=1
fi

if [[  ${error_flag} == 1  || ${OPTIONS} == "help" ]]; then
	ccktools_help
fi

if [[ ${OPTIONS} == 1 ]]; then
	ccktools_download
fi

if [[ ${OPTIONS} == 2 ]]; then
	ccktools_delete
fi

if [[ ${OPTIONS} == 3 ]]; then
	ccktools_reinstall
fi

echo "FIN"