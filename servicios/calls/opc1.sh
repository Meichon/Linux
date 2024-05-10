#!/bin/bash
function redes_interfaces(){
clear
echo -e "\tIndica las opciones con su respectivo numero"
echo ####################################################
echo -e "1) Cambiar la direccion ip"
echo -e "2) Cambiar numbre de host"
echo -e "3) montar repositorio local"
echo -e "4) validaciones de accesos SSH"
echo -e "5) Harderizar sistema"
echo -e "6) Validacion discos"
echo -e "7) salir\n"
echo -e "Indica la opcion :\c"
read num
case $num in
1)
clear
echo -e "\n\tInterfaces Activas"
echo -e "###########################################"
ip addr | grep UP | awk '{ print $2 " - " "Activa" }'
echo -e "\nDigita la interface a configurar: \c"
read int0
ip addr | grep $int0 >> /dev/null
if [ $? -eq 0 ];
then
echo -e "\n\tDireccion actual de la interface"
echo -e "###########################################"
ip a show $int0 | grep inet | awk '{ print $1 " - " $2 }'
echo -e "Indica la direccion para esta interface $int0, en el formato x.x.x.x/xx: \c"
read dir
echo $dir
break
else
read -n 1 -p "La interface que indicaste no existe, intenta denuevo"
fi
break
;;
2)
;;
3)
;;
4)
;;
5)
;;
6)
;;
7)read -n 1 -p "Adios!"

;;
*)
esac
}