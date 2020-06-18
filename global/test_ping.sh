#!/bin/bash
#
# CliPDVs.sh
# Automatização sobre demanda
# Nilsonlinux 15/06/2020
# Colabore com o projeto
#
#Veriaveis
IPSERV=192.168
TIME=3
LOG="/CliPDVs/outros/log/logs"
v="\033[0;31m"        #vermelho
vr="\033[0;32m"       #Verde
br="\033[0;37m"       #Branco
ec="\033[0m"
a='\033[1;33m'                 
end='\E[0m'
t=Terminal
clear    		
echo -e "DIGITE A${br} FAIXA${ec} DE SUA FILIAL : "
read fx
echo -e "DIGITE O${br} IP FINAL${ec} DE SUA FILIAL : "
read ip
clear
echo -e "$br============================================$ec"
echo -e "$br                CONECTANDO...               $ec"
if ! ping -c 4 $IPSERV.$fx.$ip >> /dev/null ; then
clear
echo -e "$v============================================$ec"
echo -e "$v          TERMINAL DESCONECTADO.            $ec"
echo -e "$v============================================$ec"
echo -e "$v      _____ ____  ____   ___    _ 					       $ec"
echo -e "$v     | ____|  _ \|  _ \ / _ \  | |					       $ec"
echo -e "$v     |  _| | |_) | |_) | | | | | |				         	  $ec"
echo -e "$v     | |___|  _ <|  _ <| |_| | |_|					       $ec"
echo -e "$v     |_____|_| \_\_| \_\\____/  (_)					       $ec"
echo -e "$v --------[ $br Status da requisição $ec $v]---------              $ec"
echo -e "$br         $IPSERV.$fx.$ip $ec $v (( Sem conexão ))                $ec"	
echo -e "$v -------------------------------------------                      $ec"			
echo -e "$v Digite ${br}ENTER ${ec} para voltar pro menu principal. $ec"
read -p " ⇢ " opcao
case $opcao in
*)
./CliPDVs/CliPDVs.sh;
esac
else
clear
echo -e "$vr============================================$ec"
echo -e "$vr             TERMINAL CONECTADO.            $ec "
echo -e "$vr============================================$ec"
echo -e "$vr 	  ___        _ _                      $ec"
echo -e "$vr	 / _ \ _ __ | (_)_ __   ___           $ec"
echo -e "$vr	| | | | '_ \| | | '_ \ / _ \          $ec"
echo -e "$vr	| |_| | | | | | | | | |  __/          $ec"
echo -e "$vr	 \___/|_| |_|_|_|_| |_|\___|          $ec"
echo -e "$vr --------[ $br Status da requisição $ec $vr]---------  		  $ec"
echo -e "$br          $IPSERV.$fx.$ip $ec $vr (( Conectado ))                $ec"			
echo -e "$vr -------------------------------------------                     $ec"	
ping -c 2 $IPSERV.$fx.$ip
echo "============================================"
echo -e "$vr Digite ${br}ENTER ${ec} para voltar para o menu principal.      $ec"
fi
echo "============================================"
read -p " ⇢ " opcao
case $opcao in
*)
./CliPDVs/CliPDVs.sh;
esac
