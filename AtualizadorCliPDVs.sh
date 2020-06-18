#!/bin/bash
#
# CliPDVs.sh
# Automatização sobre demanda
# Nilsonlinux 15/06/2020
# Colabore com o projeto
#
#Veriaveis
IPSERV=8.8.8.8
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
  clear
  echo -e "${g} 
       ____ _ _ ____  ______     __
      / ___| (_)  _ \|  _ \ \   / /__
     | |   | | | |_) | | | \ \ / / __|  
     | |___| | |  __/| |_| |\ V /\__ \    
      \____|_|_|_|   |____/  \_/ |___/ © 2020
              ${c}Versão :${enda} ${y}${version}  ${enda}"
###########################################################
echo -e "$br============================================$ec"
echo -e "$br                CONECTANDO...               $ec"
if ! ping -c 4 $IPSERV >> /dev/null ; then
clear
echo -e "$v============================================$ec"
echo -e "$v          VOCÊ ESTÁ DESCONECTADO.            $ec"
echo -e "$v============================================$ec"
echo -e "$v      _____ ____  ____   ___    _ 					       $ec"
echo -e "$v     | ____|  _ \|  _ \ / _ \  | |					       $ec"
echo -e "$v     |  _| | |_) | |_) | | | | | |				         	  $ec"
echo -e "$v     | |___|  _ <|  _ <| |_| | |_|					       $ec"
echo -e "$v     |_____|_| \_\_| \_\\____/  (_)					       $ec"
echo -e "$v----[ $br Não é possível prosseguir $ec $v]------                 $ec"
echo -e "$br           (( ${v}Sem conexão${ec} ${br}))                       $ec"	
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
echo -e "$vr                ATUALIZANDO.                $ec "
echo -e "$vr============================================$ec"
echo -e "$vr 	  ___        _ _                      $ec"
echo -e "$vr	 / _ \ _ __ | (_)_ __   ___           $ec"
echo -e "$vr	| | | | '_ \| | | '_ \ / _ \          $ec"
echo -e "$vr	| |_| | | | | | | | | |  __/          $ec"
echo -e "$vr	 \___/|_| |_|_|_|_| |_|\___|          $ec"
echo -e "$vr --------[ $br   Aguarde... $ec $vr]---------  	           	  $ec"
echo -e "$vr             (( Conectado ))                                     $ec"			
echo -e "$vr -------------------------------------------                     $ec"	
rm -rf CliPDVs && git clone https://github.com/nilsonlinux/CliPDVs.git && chmod -R 777 ./CliPDVs && clear && ./CliPDVs/CliPDVs.sh
echo "============================================"
fi
echo "============================================"
./CliPDVs/CliPDVs.sh;
esac
