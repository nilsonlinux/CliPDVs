#!/bin/bash
#
# CliPDVs.sh
# Automatização sobre demanda
# Nilsonlinux 15/06/2020
# Colabore com o projeto
#
#Veriaveis
clear
a='\033[1;33m'       # Amarelo
p='\033[0;35m'       # Purple
v="\033[0;31m"       #vermelho
vr="\033[0;32m"      #Verde
br="\033[0;37m"      #Branco
ec="\033[0m"              
end='\E[0m'
b='\033[1m'
u='\033[4m'
bl='\E[30m'
r='\E[31m'
g='\E[32m'
y='\E[33m'
bu='\E[34m'
m='\E[35m'
c='\E[36m'
w='\E[37m'
endc='\E[0m'
enda='\033[0m'
version='20200617'
IPSERV=192.168
LOG=""
###########################################################
##########
# CliPDVs Logo
logoCliPDVs () {
  echo -e "${vr} 
       ____ _ _ ____  ______     __
      / ___| (_)  _ \|  _ \ \   / /__
     | |   | | | |_) | | | \ \ / / __|  
     | |___| | |  __/| |_| |\ V /\__ \    
      \____|_|_|_|   |____/  \_/ |___/ © 2020
              ${v}Versão :${end} ${v}${version}  ${end}"
# CliPDVs
echo -e "${v}ECD CONNECT - LOJAS  (CliPDVs) Suporte regional${ec}"
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
    echo
}
#################################################################
clear
logoCliPDVs	
echo -e "--------------------------------------------------- ${end}"
echo -e "DIGITE A ${a}FAIXA${end} REFERÊNTE A SUA FILIAL: "
read -p "$IPSERV." $read fx
##########
clear
logoCliPDVs
echo -e "--------------------------------------------------- ${end}"	
echo -e "DIGITE O ${a}FINAL DO IP${end} QUE DESEJA ACESSAR.: "
read -p "$IPSERV.$fx." $read ip
echo "Aguarde enquanto testamos conexão com o terminal..."
if ! ping -c 2 $IPSERV.$fx.$ip >> /dev/null ; then
clear
echo -e "$v======================================= $end"
echo -e "$v       SERVIDOR DESCONECTADO.           $end"
echo -e "$v======================================= $end"
echo -e "$v      _____ ____  ____   ___    _       $end"
echo -e "$v     | ____|  _ \|  _ \ / _ \  | |      $end"
echo -e "$v     |  _| | |_) | |_) | | | | | |      $end"
echo -e "$v     | |___|  _ <|  _ <| |_| | |_|      $end"
echo -e "$v     |_____|_| \_\_| \_\\____/  (_)     $end"
echo -e "$v======[ $br Status da requisição $ec $v]=======              $end"
echo -e "$v $a IP $end - $v $IPSERV.$fx.$ip $ec - $v Sem conexão        $end"	
echo -e "$v=======================================                      $end"	
echo -e "$v=======================================                      $end"		
echo -e "$a Pressione qualquer tecla para retornar ao menu principal.   $end"      
read -n1
./CliPDVs/global/servidorECD.sh;
else
clear
echo "======================================"
echo -e "$vr         SERVIDOR CONECTADO.  $end "
echo "======================================"
echo -e "$vr       ___        _ _              $end"
echo -e "$vr      / _ \ _ __ | (_)_ __   ___   $end"
echo -e "$vr     | | | | '_ \| | | '_ \ / _ \  $end"
echo -e "$vr     | |_| | | | | | | | | |  __/  $end"
echo -e "$vr      \___/|_| |_|_|_|_| |_|\___|  $end"
echo -e "$vr======[ $br Status da requisição $ec $vr]======                  $end"
echo -e "$vr $a IP $end - $vr $IPSERV.$fx.$ip $ec - $vr Conectado            $end"			
echo -e "$vr=======================================                          $end"	
echo -e "IP - ${a}192.168.${fx}.${ip}                                        $end"
xfreerdp /t:VM /u:maxpos_gw /p:terminal /v:$ip.fx.$ip2 /size:1366x705
fi
echo "======================================"
echo -e "$vr=======================================                          $end"
echo -e "$a Pressione qualquer tecla para retornar ao menu principal.        $end"      
read -n1
./CliPDVs/global/servidorECD.sh;
