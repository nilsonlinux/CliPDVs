#!/bin/bash
#
# CliPDVs.sh
# Automatização sobre demanda
# Nilsonlinux 15/06/2020
# Colabore com o projeto
#
#Veriaveis
v="\033[0;31m"        #vermelho
vr="\033[0;32m"       #Verde
br="\033[0;37m"       #Branco
ec="\033[0m"
a='\033[1;33m'                 
end='\E[0m'
t=Terminal
clear    		
echo -e "DIGITE O SITE OU IP QUE DESEJA TESTAR: "
read ip
echo "Aguarde enquanto testamos se o endereço de destino, encontra-se acessível"
if ! ping -c 4 $ip >> /dev/null ; then
echo -e "$v============================================$ec"
echo -e "$v          TERMINAL DESCONECTADO.            $ec"
echo -e "$v============================================$ec"
echo -e "$v      _____ ____  ____   ___    _ 					       $ec"
echo -e "$v     | ____|  _ \|  _ \ / _ \  | |					       $ec"
echo -e "$v     |  _| | |_) | |_) | | | | | |				         	  $ec"
echo -e "$v     | |___|  _ <|  _ <| |_| | |_|					       $ec"
echo -e "$v     |_____|_| \_\_| \_\\____/  (_)					       $ec"
echo -e "$v --------[ $br Status da requisição $ec $v]---------              $ec"
echo -e "$v         $ip $ec $a Sem conexão                                   $ec"	
echo -e "$v -------------------------------------------                      $ec"			
echo -e "$v Digite ENTER para voltar pro menu principal.                     $ec"
read -p " ⇢ " opcao
case $opcao in
*)
./CliPDVs/CliPDVs.sh;
esac
else
echo "============================================"
echo -e "$vr             TERMINAL CONECTADO.  $ec "
echo "============================================"
echo -e "$vr 	  ___        _ _             $ec"
echo -e "$vr	 / _ \ _ __ | (_)_ __   ___  $ec"
echo -e "$vr	| | | | '_ \| | | '_ \ / _ \ $ec"
echo -e "$vr	| |_| | | | | | | | | |  __/ $ec"
echo -e "$vr	 \___/|_| |_|_|_|_| |_|\___| $ec"
echo -e "$vr --------[ $br Status da requisição $ec $vr]---------  		  $ec"
echo -e "$vr         $ip $ec $vr Conectado                                   $ec"			
echo -e "$vr -------------------------------------------                     $ec"	
ping -c 2 $ip
echo "============================================"
echo -e "${a}Digite ${ec}${br}ENTER ${ec}${a}para voltar para menu principal.$ec"
fi
echo "============================================"
read -p " ⇢ " opcao
case $opcao in
*)
./CliPDVs/CliPDVs.sh;
esac
