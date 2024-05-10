#!/bin/bash
#@meichon 9 Mayo 2024 v0.1
source ./calls/opc1.sh

var=0
while [ $var -eq 0 ] 
do
clear
echo -e "Menu de servicios basicos\n"
echo -e "1) Redes e interfaces: "
echo -e "2) DNS y hostname: "
echo -e "3) registros de Dominio: "
echo -e "4) Servicios: "
echo -e "5) Salir: \n"
echo -e "Opcion: \c"
read opc0
case $opc0 in
    1) echo -e "opcion1"
    redes_interfaces
    ;;
    2) dns_hostname
    ;;
    3) join
    ;;
    4) read -n 1 -p " Adios!"
    exit
    ;;
    *) echo -e "selecciona opcion valida!"
    break
    ;; 
esac

done
