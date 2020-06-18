#!/bin/bash
#
# CliPDVs.sh
# Automatização sobre demanda
# Nilsonlinux 15/06/2020
# Colabore com o projeto
#
#Veriaveis
IPSERV=192.168.6.36
a='\033[1;33m'                 # Amarelo
end='\E[0m' 		
echo "====================================================="
echo "Aguarde enquanto testamos se o servidor de destino encontra-se acessível"
if ! ping -c 5 $IPSERV >> /dev/null ; then
echo "=========================="
echo " IMPORTA DESCONECTADO. "
echo "=========================="
exit
else
echo "========================="
echo " IMPORTA CONECTADO!!! "
echo "========================="
fi
echo "====================================================="
################## PROGRESSO STATUS ##############################
BAR='Conexão bem sucedida ...'   # MÁXIMO 20 CARACTERES
sleep 1
for i in {1..20}; do
    echo -ne "\r${BAR:0:$i}"
    sleep .1
done
sleep 1
echo
echo "====================================================="
sleep 1
sshpass -p importa ssh -o "StrictHostKeyChecking no" importa@pdvmaxipos.mateus "";
./CliPDVs/global/menu_global.sh;
