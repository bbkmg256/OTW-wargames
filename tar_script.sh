#!/bin/env bash

# Comprimir y encriptar

# NOTA: Crear un dir. especifico de descompresión del repo,
# así se evita el problema del grep en la linea 8.

nombre_fichero="repo.tar.xz"

verif(){
	if [ $? -gt 0 ]; then
		echo "[ERROR] - La operación falló :("
		exit 1
	fi
}

tar -cJvf $nombre_fichero $(ls | grep -Ev "^pass|^clave|\.sh$")
verif
gpg -c $nombre_fichero
verif
echo "[CORRECTO] - Operación completada con éxito :)"
exit 0
