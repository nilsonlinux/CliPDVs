#!/bin/bash
#
# CliPDVs.sh
# Automatização sobre demanda
# Nilsonlinux 25/06/2020
# Colabore com o projeto
#
#Veriaveis
clear
a='\033[1;33m' # Amarelo
p='\033[0;35m' # Purple
v="\033[0;31m"        #vermelho
vr="\033[0;32m"       #Verde
br="\033[0;37m"       #Branco
ec="\033[0m"
a='\033[1;33m'                 
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
t=Terminal  
##########
# CliPDVs Logo
logoCliPDVs () {
  clear
  echo -e "${vr} 
       ____ _ _ ____  ______     __
      / ___| (_)  _ \|  _ \ \   / /__
     | |   | | | |_) | | | \ \ / / __|  
     | |___| | |  __/| |_| |\ V /\__ \    
      \____|_|_|_|   |____/  \_/ |___/ © 2020
              ${v}Versão :${end} ${v}${version}  ${end}"
    echo
}
# CliPDVs
  clear
  logoCliPDVs
echo -e "----[ ${p}REINICIALIZAÇÂO DE TERMINAIS (CliPDVs)${end} ]-----
---------------------------------------------------
 [ ${y}0${enda} ] ${r}Fechar o Script${end}
--------------------------------------------------- ${end}" 		
echo -e "DIGITE A ${a}FAIXA${end} REFERÊNTE A SUA FILIAL: "
read -p "$IPSERV." $read fx
clear
##########
  clear
logoCliPDVs
echo -e "----[ ${p}REINICIALIZAÇÂO DE TERMINAIS (CliPDVs)${end} ]-----
---------------------------------------------------
 [ ${y}0${enda} ] ${r}Fechar o Script${end}
--------------------------------------------------- ${end}" 		
echo -e "DIGITE O ${a}FINAL DO IP${end} QUE DESEJA ATUALIZAR: "
read -p "$IPSERV.$fx." $read ip
echo "==================================================="
echo "Aguarde enquanto testamos conexão com o terminal..."
if ! ping -c 2 $IPSERV.$fx.$ip >> /dev/null ; then
clear
echo -e "$v======================================= $end"
echo -e "$v       TERMINAL DESCONECTADO.           $end"
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
read -p "DIGITE ENTER PARA VOLTAR PARA O MENU PRINCIPAL." opcao
case $opcao in
*)
./CliPDVs/global/menu_global.sh;
esac
else
clear
echo "======================================"
echo -e "$vr         TERMINAL CONECTADO.  $end "
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
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.$fx.$ip "it-update-pdv.sh";
fi
echo "======================================"
echo -e "$vr=======================================                          $end"
read -p "DIGITE ENTER PARA VOLTAR PARA O MENU PRINCIPAL." opcao
case $opcao in
*)
./CliPDVs/global/menu_global.sh;
esac



