#!/bin/sh

zenity --info --text "Bienvenidos al asistente de optimizacion para sabayon. Tu contraseña sera solicitada."

# clear the screen
clear


{
wd=$(pwd)
basename "$(test -L "$0" && readlink "$0" || echo "$0")" > /tmp/scriptname
scriptname=$(echo -e -n $wd/ && cat /tmp/scriptname)
su -c "cp $scriptname /usr/bin/CoffeeBreak" root && echo "Felicitaciones! El programa ha sido instado, ahora puedes usarlo con el comando CoffeeBreak" || echo "Installation failed"
}

zenity --info --text "Ve por una taza de cafe y relajate. SRKDOS"


# Actualizamos lista de repositorios
echo "------------------------------------" 
echo "| Actualizar lista de repositorios | "
echo "| equo update | " 
echo "------------------------------------ "
equo update

# actualizar Entropy 
echo "--------------------------------------------"
echo "| actualizar Entropy | "
echo "| equo install entropy rigo equo --relaxed | "
echo "-------------------------------------------- "
equo install entropy rigo equo --relaxed

#actualizar los archivos de configuración
echo "------------------------------------------"
echo "| actualizando archivos de configuración |"
echo "| equo conf update | "
echo "------------------------------------------ "
equo conf update

#actualizar lista
echo "--------------------------------------"
echo "| actualizando lista de repositorios |"
echo "| equo update | "
echo "-------------------------------------- "
equo update

#Actualizar repositorios ordenando los mirros del más rápido al más lento:
echo "--------------------------------------"
echo "| ordenando repositorios mas rápidos |"
echo "| equo repo mirrorsort sabayon-weekly | "
echo "--------------------------------------- "
equo repo mirrorsort sabayon-weekly

#actualizando el sistema
echo "----------------------------"
echo "| actualizando el sistema | "
echo "| equo upgrade --ask | "
echo "---------------------------- "
equo upgrade --ask

#Actualizar archivos de configuración, después de actualización.
echo "---------------------------------------------"
echo "| Re-actualizando archivos de configuración |"
echo "| equo conf update | "
echo "--------------------------------------------- "
equo conf update

#comprobar las dependencias:
echo "---------------------------------"
echo "| comprobando las dependencias |"
echo "| equo deptest | "
echo "---------------------------------- "
equo deptest

#comprobar las librerías:
echo "-------------------------"
echo "| comprobando librerías |"
echo "| equo libtest          |"
echo "------------------------ "
equo libtest

#Limpiar archivos rotos y basura. Una vez instalados los paquetes descargados pueden ser removidos
echo "---------------------------------"
echo "|Eliminar paquetes innecesarios.|"
echo "| Equo cleanup                  |"
echo "---------------------------------"
Equo cleanup

echo "------------------"
echo "| Terminado       "
echo "| de actualizar   "
echo "------------------"
