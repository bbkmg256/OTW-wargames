#!/bin/env bash


# NOTA: Hay que mejorar las entradas y evitar que se rompa todo,
# ya que está muy básico el script xd.


echo -e "[!] Nivel del bandit (Ej: 0, 1, 2, ...)"; read -p "> " b_nivel

echo -e "[!] Direccion del bandit (Ej: bandit.labs.overthewire.org)"; read -p "> " b_dir

echo -e "[!] Usuario de acceso del bandit"; read -p "> " b_us

echo -e "[!] Contraseña del bandit"; read -p "> " b_contra

echo -e "[!] Flag/Bandera del bandit"; read -p "> " b_flag

echo -e "[!] Comentario adjunto"; read -p "> " b_coment

echo -e "Nivel: $b_nivel\nUsuario: $b_us\nContraseña: $b_contra\nFlag/Bandera: $b_flag\nComentario: $b_coment" 1> $b_us.txt
exit 0
