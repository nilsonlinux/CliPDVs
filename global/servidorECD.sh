#!/bin/bash
#
# CliPDVs.sh
# Automatização sobre demanda
# Nilsonlinux 15/06/2020
# Colabore com o projeto
#
#Veriaveis
ip=192.168
ip3=100
LOG=""
v="\033[0;31m"        #vermelho
vr="\033[0;32m"       #Verde
br="\033[0;37m"       #Branco
a='\033[1;33m'        #Amarelo
ec="\033[0m"                
end='\E[0m'
version='20200620'
###########################################################
##########
  clear
  echo -e "${vr} 
       ____ _ _ ____  ______     __
      / ___| (_)  _ \|  _ \ \   / /__
     | |   | | | |_) | | | \ \ / / __|  
     | |___| | |  __/| |_| |\ V /\__ \    
      \____|_|_|_|   |____/  \_/ |___/ Suporte CPD © 2020
              ${br}Versão :${ec} ${v}${version}  ${ec}
${v}ECD CONECT - LOJAS  (CliPDVs) Suporte regional${ec}"
echo -e "$vr============================================= $ec"
echo -e "${br}FAIXA${ec} - ${vr}[ 3 ]${ec} - ${a}SUPER SANTA INES SM03${ec}"
echo -e "${br}FAIXA${ec} - ${vr}[ 46 ]${ec} - ${a}MIX TIMON SM32${ec}"
echo -e "${br}FAIXA${ec} - ${vr}[ 114 ]${ec} - ${a}MIX CHAPADINHA SM39${ec}"
echo -e "${br}FAIXA${ec} - ${vr}[ 11 ]${ec} - ${a}MIX CAXIAS - SM41${ec}"
echo -e "${br}FAIXA${ec} - ${vr}[ 115 ]${ec} - ${a}MIX BACABAL - SM47${ec}"
echo -e "${br}FAIXA${ec} - ${vr}[ 93 ]${ec} - ${a}MIX PEDREIRAS - SM48${ec}"
echo -e "${br}FAIXA${ec} - ${vr}[ 91 ]${ec} - ${a}MIX SANTA INES - SM91${ec}"
echo -e "${br}FAIXA${ec} - ${vr}[ 117 ]${ec} - ${a}MIX PINHEIRO - SM99${ec}"
echo -e "${br}FAIXA${ec} - ${vr}[ 142 ]${ec} - ${a}SUPER CODÓ - SM202${ec}"
echo -e "${br}FAIXA${ec} - ${vr}[ 118 ]${ec} - ${a}MIX PARNAIBA - SM251${ec}"
echo -e "${br}FAIXA${ec} - ${vr}[ 161 ]${ec} - ${a}MIX TERESINA - SM252${ec}"
echo -e "${br}FAIXA${ec} - ${vr}[ 144 ]${ec} - ${a}CAMINO LAGO DA PEDRA - SM431${ec}"
echo -e "${br}FAIXA${ec} - ${vr}[ 136 ]${ec} - ${a}CAMINO VIANA - SM433${ec}"
echo -e "${br}FAIXA${ec} - ${vr}[ 00 ]${ec} - ${a}CAMINO BARREIRINHAS - SM434${ec}"
echo -e "${br}FAIXA${ec} - ${vr}[ 41 ]${ec} - ${a}CAMINO COROATÁ - SM435${ec}"
echo -e "${br}FAIXA${ec} - ${vr}[ 169 ]${ec} - ${a}CAMINO SANTA INES - SM436${ec}"
echo -e "${br}FAIXA${ec} - ${vr}[ 170 ]${ec} - ${a}CAMINO MIRANDA - SM439${ec}"
#################################################################
echo -e "$vr ============================================= $ec"
t=Terminal   		
echo -e "DIGITE A ${a}FAIXA${end} REFERÊNTE A FILIAL QUE DESEJA ACESSAR: "
read fx
echo -e "$vr ============================================= $ec"
echo "Aguarde enquanto testamos conexão com o servidor solicitado..."
if ! ping -c 2 $ip.$fx$ip3 >> /dev/null ; then
clear
echo -e "$v======================================= $ec"
echo -e "$v       SERVIDOR DESCONECTADO.           $ec"
echo -e "$v======================================= $ec"
echo -e "$v $a IP $end - $v $ip.$fx.$ip3 $ec $v Sem conexão             $ec"	
echo -e "$v=======================================                      $ec"			
echo -e "$v Digite $v ENTER $ec para voltar pro menu principal.          $ec"
read -p " ⇢ " opcao
case $opcao in
*)
./CliPDVs/global/menu_global.sh;
esac
else
clear
echo "======================================"
echo -e "$vr       SERVIDOR CONECTADO.  $ec "
echo "======================================"
echo -e "$v $a IP $end - $vr $ip.$fx.$ip $ec $vr Conectado               $ec"			
echo -e "$vr=======================================                      $ec"	
echo -e "IP - ${a}${ip}.${fx}.${ip2}                                     $ec"
xfreerdp /t:VM /u:maxpos_gw /p:terminal /v:$ip.fx.$ip2 /size:1366x705
echo -e "$vr Digite $v ENTER $ec para voltar pro menu principal.          $ec"
fi
echo "======================================"
read -p " ⇢ " opcao
case $opcao in
*)
./CliPDVs/global/menu_global.sh;
esac
