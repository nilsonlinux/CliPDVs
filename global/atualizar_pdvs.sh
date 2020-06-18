#!/bin/bash
#
# CliPDVs.sh
# Automatização sobre demanda
# Nilsonlinux 15/06/2020
# Colabore com o projeto
#
#Veriaveis
IPSERV=192.168
LOG=""
v="\033[0;31m"        #vermelho
vr="\033[0;32m"       #Verde
br="\033[0;37m"       #Branco
ec="\033[0m"
a='\033[1;33m'                 
end='\E[0m'
t=Terminal
clear      		
echo -e "DIGITE A ${a}FAIXA${end} REFERÊNTE A SUA FILIAL: "
read fx
echo -e "DIGITE O ${a}FINAL DO IP${end} QUE DESEJA ATUALIZAR: "
read ip
echo "============================================"
echo "Aguarde enquanto testamos conexão com o terminal"
if ! ping -c 2 $IPSERV.$fx.$ip >> /dev/null ; then
clear
echo -e "$v======================================= $ec"
echo -e "$v       TERMINAL DESCONECTADO.           $ec"
echo -e "$v======================================= $ec"
echo -e "$v      _____ ____  ____   ___    _ 					       $ec"
echo -e "$v     | ____|  _ \|  _ \ / _ \  | |					       $ec"
echo -e "$v     |  _| | |_) | |_) | | | | | |				         	  $ec"
echo -e "$v     | |___|  _ <|  _ <| |_| | |_|					       $ec"
echo -e "$v     |_____|_| \_\_| \_\\____/  (_)					       $ec"
echo -e "$v======[ $br Status da requisição $ec $v]=======                   $ec"
echo -e "$v $a IP $end - $v $IPSERV.$fx.$ip $ec $v Sem conexão               $ec"	
echo -e "$v=======================================                           $ec"			
echo -e "$v Digite\033[0;32m ENTER\033[0;33m para voltar pro menu principal. $ec"
read -p " ⇢ " opcao
case $opcao in
*)
./CliPDVs/global/menu_global.sh;
esac
else
clear
echo "======================================"
echo -e "$vr       TERMINAL CONECTADO.  $ec "
echo "======================================"
echo -e "$vr       ___        _ _              $ec"
echo -e "$vr      / _ \ _ __ | (_)_ __   ___   $ec"
echo -e "$vr     | | | | '_ \| | | '_ \ / _ \  $ec"
echo -e "$vr     | |_| | | | | | | | | |  __/  $ec"
echo -e "$vr      \___/|_| |_|_|_|_| |_|\___|  $ec"
echo -e "$vr======[ $br Status da requisição $ec $vr]====== 		       $ec"
echo -e "$v $a IP $end - $vr $IPSERV.$fx.$ip $ec $vr Conectado               $ec"			
echo -e "$vr=======================================                          $ec"	
echo -e "IP - ${a}192.168.${fx}.${ip}                                        $ec"
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.$fx.$ip "it-update-pdv.sh";
################## PROGRESSO STATUS ##############################
BAR='Atualizando terminal...'   # MÁXIMO 20 CARACTERES
sleep 1
for i in {1..20}; do
    echo -ne "\r${BAR:0:$i}"
    sleep .1
done
sleep 1
echo
echo "====================================================="
echo -e "$t Atualizado... IP -$a 192.168.$fx.$ip $end. Por favor verifique.";
sleep 1
echo -e "$v Digite\033[0;32m ENTER\033[0;33m para voltar pro menu principal. $ec"
fi
echo "======================================"
read -p " ⇢ " opcao
case $opcao in
*)
./CliPDVs/global/menu_global.sh;
esac


