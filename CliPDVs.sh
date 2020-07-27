#!/bin/bash
#
# CliPDVs.sh
# Automatização sobre demanda
# Nilsonlinux 23/07/2020
# Colabore com o projeto
# -------------------------------------------------------
# Variables
# b=bold u=underline bl=black r=red g=green
# y=yellow bu=blue m=magenta c=cyan w=white
# endc=end-color end=end-argument
pdvs_ips='139 131 122 123 124 25 102 103 104 105 107 120 140 133 110 11 112 113 114 130 116 55 59 117 225 132 138 128' #FINAL dos IPS DOS PDVS...
version="2.9"
GMCORE='6.36'
IPSERV='192.168'
RES="1920x1030"
GUSER="maxpos_gw"
GPASS="terminal"
spath="$( cd "$( dirname $0 )" && pwd )"
a='\033[1;33m'       # Amarelo
p='\033[0;35m'       # Purple
v="\033[0;31m"       #vermelho
vr="\033[01;32m"      #Verde
br="\033[0;37m"      #Branco
# Variável com a lista de máquinas
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
end='\033[0m'
#LVARIÁVEIS TERMINAIS LOJA =========
TERMINAL_01="123"		IP_CAIXA_01="59"
TERMINAL_02="103"		IP_CAIXA_02="122"
TERMINAL_03="104"		IP_CAIXA_03="123"
TERMINAL_04="105"		IP_CAIXA_04="124"
TERMINAL_05="106"		IP_CAIXA_05="25"
TERMINAL_06="107"		IP_CAIXA_06="102"
TERMINAL_07="108"		IP_CAIXA_07="103"
TERMINAL_08="109"		IP_CAIXA_08="104"
TERMINAL_09="110"		IP_CAIXA_09="139"
TERMINAL_10="111"		IP_CAIXA_10="105"
TERMINAL_11="112"		IP_CAIXA_11="107"
TERMINAL_12="113"		IP_CAIXA_12="120"
TERMINAL_13="114"		IP_CAIXA_13="106"
TERMINAL_14="115"		IP_CAIXA_14="110"
TERMINAL_15="116"		IP_CAIXA_15="11"
TERMINAL_16="117"		IP_CAIXA_16="112"
TERMINAL_17="118"		IP_CAIXA_17="113"
TERMINAL_18="119"		IP_CAIXA_18="114"
TERMINAL_19="128"		IP_CAIXA_19="128"
TERMINAL_20="121"		IP_CAIXA_20="116"
TERMINAL_21="126"		IP_CAIXA_21="132"
TERMINAL_22="122"		IP_CAIXA_22="55"
TERMINAL_LANCHONETE="127"		IP_CAIXA_LANCHONETE=""
TERMINAL_ELETRO_01="124"		IP_CAIXA_ELETRO_01="117"
TERMINAL_ELETRO_02="125"		IP_CAIXA_ELETRO_02="225"
TERMINAL_ATACADOS="120"		IP_CAIXA_ATACADOS="138"
TERMINAL_BUTECO="126"		IP_CAIXA_BUTECO="132"
#LVARIÁVEIS TERMINAIS LOJA =========
#LISTA DOS TERMINAIS LOJA =========
loja () {
echo -e "${b} TERMINAL ${endc}  ${b} CAIXA  ${endc}     ${b}   IP  ${endc}
${vr}   $TERMINAL_01        01      $IPSERV.$FX.$IP_CAIXA_01       ${endc}
 ${g}   $TERMINAL_02        02      $IPSERV.$FX.$IP_CAIXA_02       ${endc}
${vr}   $TERMINAL_03        03      $IPSERV.$FX.$IP_CAIXA_03       ${endc}
 ${g}   $TERMINAL_04        04      $IPSERV.$FX.$IP_CAIXA_04       ${endc}
${vr}   $TERMINAL_05        05      $IPSERV.$FX.$IP_CAIXA_05       ${endc}
 ${g}   $TERMINAL_06        06      $IPSERV.$FX.$IP_CAIXA_06       ${endc}
${vr}   $TERMINAL_07        07      $IPSERV.$FX.$IP_CAIXA_07       ${endc}
 ${g}   $TERMINAL_08        08      $IPSERV.$FX.$IP_CAIXA_08       ${endc}
${vr}   $TERMINAL_09        09      $IPSERV.$FX.$IP_CAIXA_09       ${endc}
 ${g}   $TERMINAL_10        10      $IPSERV.$FX.$IP_CAIXA_10       ${endc}
${vr}   $TERMINAL_11        11      $IPSERV.$FX.$IP_CAIXA_11       ${endc}
 ${g}   $TERMINAL_12        12      $IPSERV.$FX.$IP_CAIXA_12       ${endc}
${vr}   $TERMINAL_13        13      $IPSERV.$FX.$IP_CAIXA_13       ${endc}
 ${g}   $TERMINAL_14        14      $IPSERV.$FX.$IP_CAIXA_14       ${endc}
${vr}   $TERMINAL_15        15      $IPSERV.$FX.$IP_CAIXA_15       ${endc}
 ${g}   $TERMINAL_16        16      $IPSERV.$FX.$IP_CAIXA_16       ${endc}
${vr}   $TERMINAL_17        17      $IPSERV.$FX.$IP_CAIXA_17       ${endc}
 ${g}   $TERMINAL_18        18      $IPSERV.$FX.$IP_CAIXA_18       ${endc}
${vr}   $TERMINAL_19        19      $IPSERV.$FX.$IP_CAIXA_19       ${endc}
 ${g}   $TERMINAL_20        20      $IPSERV.$FX.$IP_CAIXA_20       ${endc}
${vr}   $TERMINAL_21        21      $IPSERV.$FX.$IP_CAIXA_21       ${endc}
 ${g}   $TERMINAL_22        22      $IPSERV.$FX.$IP_CAIXA_22       ${endc}
${vr}   $TERMINAL_ELETRO_01    ELETRO 01   $IPSERV.$FX.$IP_CAIXA_ELETRO_01    ${endc}
 ${g}   $TERMINAL_ELETRO_02    ELETRO 02   $IPSERV.$FX.$IP_CAIXA_ELETRO_02    ${endc}
${vr}   $TERMINAL_LANCHONETE    LANCHONETE  $IPSERV.$FX.$IP_CAIXA_LANCHONETE  ${endc}
 ${g}   $TERMINAL_ATACADOS     ATACADO    $IPSERV.$FX.$IP_CAIXA_ATACADOS      ${endc}
${vr}   $TERMINAL_BUTECO     BUTECO     $IPSERV.$FX.132  ${end}"
    echo
}
#LOJA =========
# NPDVs Logo
logoNPDVs () {
  clear
  echo -e "${vr} 
   _   _ ____  ______     __   
  | \ | |  _ \|  _ \ \   / /__ 
  |  \| | |_) | | | \ \ / / __|
  | |\  |  __/| |_| |\ V /\__ \ 
  |_| \_|_|   |____/  \_/ |___/
             © 2020
          ${y}Versão :${end}${bu} ${version}${end}"
    echo
}
# NPDVs
# Exit NPDVs
npdvsexit () {
  logoNPDVs 
  echo -e " Obrigado por utilizar o ${b}NPDVs${end}
 Desenvolvido por: Nilsonlinux
 ${b}Telegram -➤ ${bu}https://t.me/nilsonlinux${end}"
  echo && sleep 1
  exit
}

# APT Update
#aptgupd () {
#  echo && echo -e " ${y}Preparing To Perform APT Update${endc}"
#  echo " It Is Recommended To Perform APT Update"
#  echo " Before You Install Any Application."
#  echo -en " ${y}Would You Like To Perform APT Update Now ? {y/n}${endc} "
#  read option
#  case $option in
#    y) ;;
#    n) echo " Skiping APT Update"; sleep 1; return 1 ;;
#    *) echo " \"$option\" Is Not A Valid Option"; sleep 1; aptgupd ;;
#  esac
#  echo && echo -e " Performing ${b}APT Update${end}"
#  apt -y update &>/dev/null
#  echo -e " ${b}APT Update${end} Completed"
#  echo && echo -en " ${y}Press Enter To Continue"
#  read input
#}
# Internet Check
checkinternet () {
  if ping -c 1 google.com &>/dev/null; then
    echo -e " Checando conexão com a internet: ${vr}CONECTADO ✅${endc}"
    npdvscheck
  else
    echo -e " Checando conexão com a internet: ${r}DESCONECTADO ❌${endc}
 ${y}Você precisa está conectado para a utilização do NPDVs${endc}"
    echo -e " ${b}O Script está sendo${end} encerrado..."
    echo && sleep 5
    npdvsexit
  fi
}
##################
npdvsrestart () {
  $spath/CliPDVs.sh
  exit
}
# New Version Check & Update
npdvsupdate () {
  logoNPDVs
  echo -e " Preparando atualização ${b}NPDVs${end}"
  echo && echo -en " ${y}Precione ENTER para continuar${endc}"
  read input
  echo && echo -e " Atualizando ${b}NPDVs${end}, Por favor aguarde..."
  wget https://raw.githubusercontent.com/nilsonlinux/npdvs/master/npdvs.sh -O $spath/CliPDVs.sh &>/dev/null
  sleep 1 && echo -e " ${b}NPDVs${end} Atualização aplicada com sucesso "
  sleep 1 && echo -e " Restartando ${b}NPDVs${end}..."
  sleep 2
  npdvsrestart
}
# New Version Check & Update
npdvscheck () {
  changelog=$(curl --silent -q https://raw.githubusercontent.com/nilsonlinux/npdvs/master/changelog.txt)
  uversion=$(curl --silent -q https://raw.githubusercontent.com/nilsonlinux/npdvs/master/version.txt)
  if [[ $uversion > $version ]]; then
    echo -e " Checando atualização: ${r}Nova versão disponível"
    echo && echo -e " Versão em uso: ${y}$version${endc} ${g} ➤  Nova versão: ${endc}${y}$uversion${endc}"
    echo -e " ${bu}Changelog:${endc}\n$changelog"
    echo && echo -en " ${y}Continuar com a atualização? {s/n}${endc} "
    read option
    case $option in
      s) npdvsupdate ;;
      n) echo -e " ${y}Ok, Iniciando NPDVs.${endc}"; sleep 1; aptgupd ;;
      *) echo " \"$option\" Opção inválida, tente outra opção."; sleep 1; npdvscheck ;;
    esac
  else
    echo -e " Checando novas atualizações: ${g}NPDVs está atualizado${endc}"
    aptgupd
  fi
}
##################
# INICIALIZAÇÃO DO SCRIPT
logoNPDVs && echo -e " ${y}Inicializando NPDVs...${endc}" && checkinternet
# -------------------------------------------------------

# (7-2) Install Mozilla Firefox
installfirefox () {
  logoNPDVs
  echo -e " Preparing To Install ${b}Mozilla Firefox${end}" && echo
  echo -e " ${bu}From Mozilla: Mozilla Firefox is a fast, full-featured Web browser.
 Firefox includes pop-up blocking, tab-browsing,
 integrated Google search, simplified privacy controls,
 a streamlined browser window that shows you more of
 the page than any other browser and a number of additional
 features that work with you to help you get the most out of
 your time online.
 Read more about it here: ${b}https://www.mozilla.org/${end}"
  echo && echo -e " ${b}${r}CLOSE ALL YOUR FIREFOX WINDOWS BEFORE UPDATING ${end}"
  echo && echo -en " ${y}Do You Want To Continue? {y/n}${endc} "
  read option
  case $option in
    y) echo && echo -e " Installing ${b}Firefox${end}"; apt -y install firefox-esr &>/dev/null; Comando_feito_ok "Firefox" ;;
    n) echo -e " ${y}OK. Returning To Menu${endc}"; sleep 1; showwebapps ;;
    *) echo " \"$option\" Is Not A Valid Option"; sleep 1; installfirefox ;;
  esac
}

# -------------------------------------------------------
# Script Menus
# (1) Reiniciar PDVs
reiniciar_pdvs () {
  logoNPDVs
echo -e " ${r}REINICIALIZAÇÃO DOS TERMINAIS (NPDVs)${end}"
echo -e "DIGITE A ${y}FAIXA${end} ${r}REFERÊNTE A SUA FILIAL: ${end}"
read -p "$IPSERV." $read FX
clear
##########
  clear
logoNPDVs
echo -e " ${r}REINICIALIZAÇÃO DOS TERMINAIS (NPDVs) ${end}"
loja
echo -e "DIGITE O ${y}FINAL DO IP${end} ${r}QUE DESEJA REINICIAR: ${end}"
read -p "$IPSERV.$FX." $read IP
echo -e "${r}---------------------------------------------------${end}"
echo -e "${y}⌛Aguarde enquanto testamos conexão com o terminal ⌛${end}"
sleep 1
if ! ping -c 1 $IPSERV.$FX.$IP >> /dev/null ; then
clear
echo -e "$v======================================= $end"
echo -e "$v       TERMINAL DESCONECTADO.           $end"
echo -e "$v======================================= $end"
echo -e "$v      _____ ____  ____   ___    _       $end"
echo -e "$v     | ____|  _ \|  _ \ / _ \  | |      $end"
echo -e "$v     |  _| | |_) | |_) | | | | | |      $end"
echo -e "$v     | |___|  _ <|  _ <| |_| | |_|      $end"
echo -e "$v     |_____|_| \_\_| \_\\____/  (_)     $end"
echo && echo -e "$v======================================= $end"
echo -e "$v======[ $br Status da requisição $ec $v]======= $end"
echo -e "$a IP $end-$bu $IPSERV.$FX.$IP $end- $v Sem conexão ✗$end" 
echo -e "$v======================================= $end"
echo -en "${y}Precione enter para retornar para o manu.${endc}"
read input
echo -e "$v=======================================$end" 
else
clear
echo -e "$vr======================================== $end"
echo -e "$vr         TERMINAL CONECTADO.  $end "
echo -e "$vr======================================== $end"
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.$FX.$IP "reboot";
echo -e "$vr=======[ $br Status da requisição $ec $vr]=======$end"
echo -e "$a IP $end -$bu $IPSERV.$FX.$IP $end- $vr Conectado ✔$end"
echo -e "$vr======================================== $end"
echo -e "$vr    COMANDO EXECUTADO COM SUCESSO... $end"
echo -e "$vr======================================== $end"
echo -e "${y}Retornando para o menu principal.
⌛Por favor aguarde ⌛${endc}"
sleep 5
fi
}
# --------------
# (1) Atualizar PDVs
atualizar_pdvs () {
  logoNPDVs
echo -e " ${c}ATUALIZAÇÃO DOS TERMINAIS (NPDVs)${end}"
echo -e "DIGITE A ${c}FAIXA${end} ${br}REFERÊNTE A SUA FILIAL: ${end}"
read -p "$IPSERV." $read FX
clear
##########
  clear
logoNPDVs
echo -e " ${c}ATUALIZAÇÃO DOS TERMINAIS (NPDVs) ${end}"
loja
echo -e "DIGITE O ${c}FINAL DO IP${end} ${br}QUE DESEJA ATUALIZAR: ${end}"
read -p "$IPSERV.$FX." $read IP
echo -e "${c}---------------------------------------------------${end}"
echo -e "${y}⌛Aguarde enquanto testamos conexão com o terminal ⌛ ${end}"
sleep 1
if ! ping -c 2 $IPSERV.$FX.$IP >> /dev/null ; then
clear
echo -e "$v======================================= $end"
echo -e "$v       TERMINAL DESCONECTADO.           $end"
echo -e "$v======================================= $end"
echo -e "$v      _____ ____  ____   ___    _       $end"
echo -e "$v     | ____|  _ \|  _ \ / _ \  | |      $end"
echo -e "$v     |  _| | |_) | |_) | | | | | |      $end"
echo -e "$v     | |___|  _ <|  _ <| |_| | |_|      $end"
echo -e "$v     |_____|_| \_\_| \_\\____/  (_)     $end"
echo && echo -e "$v======================================= $end"
echo -e "$v======[ $br Status da requisição $ec $v]======= $end"
echo -e "$a IP $end-$bu $IPSERV.$FX.$IP $end- $v Sem conexão ✗$end" 
echo -e "$v======================================= $end"
echo -en "${y}Precione enter para retornar para o manu.${endc}"
read input
echo -e "$v=======================================$end" 
else
clear
echo -e "$vr======================================== $end"
echo -e "$vr         TERMINAL CONECTADO.  $end "
echo -e "$vr======================================== $end"
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.$FX.$IP "it-update-pdv.sh";
echo -e "$vr=======[ $br Status da requisição $ec $vr]=======$end"
echo -e "$a IP $end - $bu $IPSERV.$FX.$IP $end - $vr Conectado$end"
echo -e "$vr======================================== $end"
echo -e "$vr    COMANDO EXECUTADO COM SUCESSO... $end"
echo -e "$vr======================================== $end"
echo -e "${y}Retornando para o menu principal.
⌛Por favor aguarde ⌛${endc}"
sleep 5
fi
}
# (3) Reiniciar todos os PDVs
wait
reiniciar_todos () {
logoNPDVs
echo -e " ${v}REINICIALIZAÇÃO DOS TERMINAIS (NPDVs)"
echo -e "${v}---------------------------------------------------${end}
  ${br}Reinicialização dos terminais 
  por faixa.${end}
${v}--------------------------------------------------- ${end}"
echo -e " DIGITE A${y} FAIXA DA FILIAL${end} ${v}QUE DESEJA REINICIALIZAR OS TERMINAIS: ${end}"
echo -e " Caso queira desistir${y}, apenas deixe o campo em branco e dê enter... ${end}"
read -p " $IPSERV." $read FAIXA
clear
echo -e "${v}--------------------------------------------------- ${end}"
echo -e "${y}⌛Aguarde enquanto executo o comando 
${v}reboot${end} ${y}em todos os terminais ⌛ ${end}
${v}--------------------------------------------------- ${end}"
##############
${pdv_ips}
for PDVS_IPS in ${PDVS_IPS}
do
    echo -e "${v}Reiniciando terminal${end} ${g}IP${end} - ${vr}${IPSERV}.${FAIXA}.${PDVS_IPS}${endc} ⌛"
    sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@${IPSERV}.${FAIXA}.${PDVS_IPS} "reboot";
    echo -e '\n'
done
#############
clear
echo -e "$v======================================== $end"
echo -e "$vr    COMANDO EXECUTADO COM SUCESSO... $end"
echo -e "$v======================================== $end"
#############
echo && echo -en "${y}Precione enter para retornar para o manu.${endc}"
read input
}
##########
# (1) Desligar PDVs
desligar_pdvs () {
  logoNPDVs
echo -e " ${r}🚨 DESLIGAMENTO DOS TERMINAIS (NPDVs) 🚨 ${end}"
echo -e "DIGITE A ${y}FAIXA${end} ${r}REFERÊNTE A SUA FILIAL: ${end}"
read -p "$IPSERV." $read FX
clear
##########
  clear
logoNPDVs
echo -e " ${r}🚨 DESLIGAMENTO DOS TERMINAIS (NPDVs) 🚨 ${end}"
loja
echo -e "DIGITE O ${y}FINAL DO IP${end} ${r}QUE DESEJA DESLIGAR: ${end}"
read -p "$IPSERV.$FX." $read IP
echo -e "${r}---------------------------------------------------${end}"
echo -e "${y}⌛Aguarde enquanto testamos conexão com o terminal ⌛${end}"
sleep 1
if ! ping -c 1 $IPSERV.$FX.$IP >> /dev/null ; then
clear
echo -e "$v======================================= $end"
echo -e "$v       TERMINAL DESCONECTADO.           $end"
echo -e "$v======================================= $end"
echo -e "$v      _____ ____  ____   ___    _       $end"
echo -e "$v     | ____|  _ \|  _ \ / _ \  | |      $end"
echo -e "$v     |  _| | |_) | |_) | | | | | |      $end"
echo -e "$v     | |___|  _ <|  _ <| |_| | |_|      $end"
echo -e "$v     |_____|_| \_\_| \_\\____/  (_)     $end"
echo && echo -e "$v======================================= $end"
echo -e "$v======[ $br Status da requisição $ec $v]======= $end"
echo -e "$a IP $end-$bu $IPSERV.$FX.$IP $end- $v Sem conexão ✗$end" 
echo -e "$v======================================= $end"
echo -en "${y}Precione enter para retornar para o manu.${endc}"
read input
echo -e "$v=======================================$end" 
else
clear
echo -e "$vr======================================== $end"
echo -e "$vr         TERMINAL CONECTADO.  $end "
echo -e "$vr======================================== $end"
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.$FX.$IP "halt";
echo -e "$vr=======[ $br Status da requisição $ec $vr]=======$end"
echo -e "$a IP $end -$bu $IPSERV.$FX.$IP $end- $vr Conectado ✔$end"
echo -e "$vr======================================== $end"
echo -e "$vr    COMANDO EXECUTADO COM SUCESSO... $end"
echo -e "$vr======================================== $end"
echo -e "${y}Retornando para o menu principal.
⌛Por favor aguarde ⌛${endc}"
sleep 5
fi
}
# -------------
################################### (4) Atualizar todos os PDVs ######################################
wait
atualizar_todos () {
  logoNPDVs
echo -e " ${bu}ATUALIZAÇÃO DOS TERMINAIS (NPDVs)"
echo -e "${bu}---------------------------------------------------${end}
  ${br}Atualização dos terminais 
  por faixa de sua filial${end}
${bu}--------------------------------------------------- ${end}"
echo -e " DIGITE A${y} FAIXA DA FILIAL${end} ${bu}QUE DESEJA ATUALIZAR: ${end}"
echo -e " Caso queira desistir${y}, apenas deixe o campo em branco e dê enter... ${end}"
read -p " $IPSERV." $read FAIXA
clear
echo -e "${bu}--------------------------------------------------- ${end}"
echo -e "${y}⌛Aguarde enquanto executo o comando 
${bu}it-update-pdv.sh${end} ${y}em todos os terminais ⌛ ${end}
${bu}--------------------------------------------------- ${end}"
##############
${PDVS_IPS}
for PDVS_IPS in ${PDVS_IPS}
do
    echo -e "${bu}Atualizando terminal${end} ${g}IP${end} - ${vr}${IPSERV}.${FAIXA}.${PDVS_IPS}${endc} ⌛"
    sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@${IPSERV}.${FAIXA}.${PDVS_IPS} "it-update-pdv.sh";
    echo -e '\n'
done
#############
clear
echo -e "$vr======================================== $end"
echo -e "$vr    COMANDO EXECUTADO COM SUCESSO... $end"
echo -e "$vr======================================== $end"
#############
echo && echo -en "${y}Precione enter para retornar para o manu.${endc}"
read input
}
################################### (4) Atualizar todos os PDVs ######################################
################################### (4) Desligar todos os PDVs ######################################
wait
desligar_todos () {
  logoNPDVs
echo -e "${v}---------------------------------------------------${end}"
echo -e "${r}🚨 DESLIGAMENTO DOS TERMINAIS (NPDVs) 🚨"
echo -e "${v}--------------------------------------------------- ${end}"
echo -e " DIGITE A${y} FAIXA DA FILIAL${end} ${v}QUE DESEJA DESLIGAR: ${end}"
echo -e " Caso queira desistir${y}, apenas deixe o campo em branco e dê enter... ${end}"
read -p " $IPSERV." $read FAIXA
clear
echo -e "${v}--------------------------------------------------- ${end}"
echo -e "${y}⌛Aguarde enquanto executo o comando 
${v}halt${end} ${y}em todos os terminais ⌛ ${end}
${v}--------------------------------------------------- ${end}"
##############
${pdv_ips}
for PDVS_IPS in ${PDVS_IPS}
do
    echo -e "${bu}Desligando terminal${end} ${g}IP${end} - ${vr}${IPSERV}.${FAIXA}.${PDVS_IPS}${endc} ⌛"
    sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@${IPSERV}.${FAIXA}.${PDVS_IPS} "halt";
    echo -e '\n'
done
#############
clear
echo -e "$v======================================== $end"
echo -e "$v    COMANDO EXECUTADO COM SUCESSO... $end"
echo -e "$v======================================== $end"
#############
echo && echo -en "${y}Precione enter para retornar para o manu.${endc}"
read input
}

# (1) Atualizar PDVs
atualizar_imagem () {
  logoNPDVs
echo -e " ${c}ATUALIZAÇÃO DE IMAGEM DOS TERMINAIS (NPDVs)
---------------------------------------------------${end}
  ${br}Atualização de imagem dos terminais 
  por faixa (IP). Digite a faixa de sua filial, 
  depois dê enter para digitar o IP final 
  do terminal${end}
${c}--------------------------------------------------- ${end}"
echo -e "DIGITE A ${c}FAIXA${end} ${br}REFERÊNTE A SUA FILIAL: ${end}"
read -p "$IPSERV." $read FX
clear
##########
  clear
  logoNPDVs
echo -e " ${c}ATUALIZAÇÃO DE IMAGEM DOS TERMINAIS (NPDVs)"
loja
echo -e "DIGITE O ${c}FINAL DO IP${end} ${br}QUE DESEJA ATUALIZAR IMAGEM: ${end}"
read -p "$IPSERV.$FX." $read IP
echo -e "${bu}---------------------------------------------------${end}"
echo -e "${y}⌛Aguarde enquanto testamos conexão com o terminal ⌛ ${end}"
sleep 1
if ! ping -c 2 $IPSERV.$FX.$IP >> /dev/null ; then
clear
echo -e "$v======================================= $end"
echo -e "$v       TERMINAL DESCONECTADO.           $end"
echo -e "$v======================================= $end"
echo -e "$v      _____ ____  ____   ___    _       $end"
echo -e "$v     | ____|  _ \|  _ \ / _ \  | |      $end"
echo -e "$v     |  _| | |_) | |_) | | | | | |      $end"
echo -e "$v     | |___|  _ <|  _ <| |_| | |_|      $end"
echo -e "$v     |_____|_| \_\_| \_\\____/  (_)     $end"
echo && echo -e "$v======================================= $end"
echo -e "$v======[ $br Status da requisição $ec $v]======= $end"
echo -e "$a IP $end-$bu $IPSERV.$FX.$IP $end- $v Sem conexão ✗$end" 
echo -e "$v======================================= $end"
echo -en "${y}Precione enter para retornar para o manu.${endc}"
read input
echo -e "$v=======================================$end" 
else
clear
echo -e "$vr======================================== $end"
echo -e "$vr         TERMINAL CONECTADO.  $end "
echo -e "$vr======================================== $end"
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.$FX.$IP "it-update-imagens.sh";
echo -e "$vr=======[ $br Status da requisição $ec $vr]=======$end"
echo -e "$a IP $end - $bu $IPSERV.$FX.$IP $end - $vr Conectado$end"
echo -e "$vr======================================== $end"
echo -e "$vr    COMANDO EXECUTADO COM SUCESSO... $end"
echo -e "$vr======================================== $end"
echo -e "${y}Retornando para o menu principal.
⌛Por favor aguarde ⌛${endc}"
sleep 5
fi
}
################################### ATUALIZAR IMAGEM PDVs ######################################
wait
atualizar_imagem_todos () {
  logoNPDVs
echo -e " ${bu}ATUALIZAÇÃO DE IMAGEM DOS TERMINAIS (NPDVs)"
echo -e "${bu}---------------------------------------------------${end}
  ${br}Atualização dos terminais 
  por faixa de sua filial${end}
${bu}--------------------------------------------------- ${end}"
echo -e " DIGITE A${y} FAIXA DA FILIAL${end} ${bu}QUE DESEJA ATUALIZAR: ${end}"
echo -e " Caso queira desistir${y}, apenas deixe o campo em branco e dê enter... ${end}"
read -p " $IPSERV." $read FAIXA
clear
echo -e "${bu}--------------------------------------------------- ${end}"
echo -e "${y}⌛Aguarde enquanto executo o comando 
${bu}it-update-imagens.sh${end} ${y}em todos os terminais ⌛ ${end}
${bu}--------------------------------------------------- ${end}"
##############
${pdv_ips}
for PDVS_IPS in ${PDVS_IPS}
do
    echo -e "${bu}Atualizando imagem do terminal${end} ${g}IP${end} - ${vr}${IPSERV}.${FAIXA}.${PDVS_IPS}${endc} ⌛"
    sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@${IPSERV}.${FAIXA}.${PDVS_IPS} "it-update-imagens.sh";
    echo -e '\n'
done
#############
echo -e "$vr======================================== $end"
echo -e "$vr    COMANDO EXECUTADO COM SUCESSO... $end"
echo -e "$vr======================================== $end"
#############
echo && echo -en "${y}Precione enter para retornar para o manu.${endc}"
read input
}
################################### (6) Atualizar imagens MaxiPOS Todos #############################
################################### (11) Reiniciar Maxipos PDVs ######################################
reiniciar_maxipos () {
  logoNPDVs
echo -e " ${r}REINICIALIZAÇÃO DO MAXIPOS (NPDVs)
---------------------------------------------------${end}
  ${br}Reinicialização do MaxiPOS 
  por faixa (IP). Digite a faixa de sua filial, 
  depois dê enter para digitar o IP final 
  do terminal${end}
${r}--------------------------------------------------- ${end}"
echo -e "DIGITE A ${y}FAIXA${end} ${r}REFERÊNTE A SUA FILIAL: ${end}"
read -p "$IPSERV." $read FX
clear
##########
  clear
logoNPDVs
echo -e " ${r}REINICIALIZAÇÃO DO MAXIPOS (NPDVs)"
loja
echo -e "DIGITE O ${y}FINAL DO IP${end} ${r}QUE DESEJA REINICIAR O MAXIPOS: ${end}"
read -p "$IPSERV.$FX." $read IP
echo -e "${r}---------------------------------------------------${end}"
echo -e "${y}⌛Aguarde enquanto testamos conexão com o terminal ⌛${end}"
sleep 1
if ! ping -c 1 $IPSERV.$FX.$IP >> /dev/null ; then
clear
echo -e "$v======================================= $end"
echo -e "$v       TERMINAL DESCONECTADO.           $end"
echo -e "$v======================================= $end"
echo -e "$v      _____ ____  ____   ___    _       $end"
echo -e "$v     | ____|  _ \|  _ \ / _ \  | |      $end"
echo -e "$v     |  _| | |_) | |_) | | | | | |      $end"
echo -e "$v     | |___|  _ <|  _ <| |_| | |_|      $end"
echo -e "$v     |_____|_| \_\_| \_\\____/  (_)     $end"
echo && echo -e "$v======================================= $end"
echo -e "$v======[ $br Status da requisição $ec $v]======= $end"
echo -e "$a IP $end-$bu $IPSERV.$FX.$IP $end- $v Sem conexão ✗$end" 
echo -e "$v======================================= $end"
echo -en "${y}Precione enter para retornar para o manu.${endc}"
read input
echo -e "$v=======================================$end" 
else
clear
echo -e "$vr======================================== $end"
echo -e "$vr         TERMINAL CONECTADO.  $end "
echo -e "$vr======================================== $end"
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.$FX.$IP "it-restart-application.sh";
echo -e "$vr=======[ $br Status da requisição $ec $vr]=======$end"
echo -e "$a IP $end -$bu $IPSERV.$FX.$IP $end- $vr Conectado ✔$end"
echo -e "$vr======================================== $end"
echo -e "$vr    COMANDO EXECUTADO COM SUCESSO... $end"
echo -e "$vr======================================== $end"
echo -e "${y}Retornando para o menu principal.
⌛Por favor aguarde ⌛${endc}"
sleep 5
fi
}
# --------------
# (5) Teste de ping PDVs
ping_test () {
  logoNPDVs
echo -e " ${bu}🌐 TESTE DE CONEXÕES (NPDVs) 🌐
---------------------------------------------------${end}
  ${br}Faça o teste de conexão de um determinado IP
  com faixa + final de seu endereçamento...${end}
${bu}--------------------------------------------------- ${end}"
echo -e "DIGITE A ${a}FAIXA${end} ${bu}DO IP QUE DESEJA FAZER O TESTE DE CONEXÃO: ${end}"
read -p "$IPSERV." $read FX
##########
clear
logoNPDVs
echo -e " ${bu}🌐 TESTE DE CONEXÕES (NPDVs) 🌐
---------------------------------------------------${end}
  ${br}Faça o teste de conexão de um determinado IP
  com faixa + final de seu endereçamento...${end}
${bu}--------------------------------------------------- ${end}"
echo -e "DIGITE O ${a}FINAL DO IP${end} ${bu}QUE DESEJA FAZER O TESTE DE CONEXÃO: ${end}"
read -p "$IPSERV.$FX." $read IP
echo -e "${bu}---------------------------------------------------${end}"
echo -e "${y}⌛Aguarde enquanto testamos conexão com o terminal ⌛${end}"
sleep 2
if ! ping -c 1 $IPSERV.$FX.$IP >> /dev/null ; then
clear
echo -e "$v======================================= $end"
echo -e "$v       TERMINAL DESCONECTADO.           $end"
echo -e "$v======================================= $end"
echo -e "$v      _____ ____  ____   ___    _       $end"
echo -e "$v     | ____|  _ \|  _ \ / _ \  | |      $end"
echo -e "$v     |  _| | |_) | |_) | | | | | |      $end"
echo -e "$v     | |___|  _ <|  _ <| |_| | |_|      $end"
echo -e "$v     |_____|_| \_\_| \_\\____/  (_)     $end"
echo && echo -e "$v======================================= $end"
echo -e "$v======[ $br Status da requisição $ec $v]======= $end"
echo -e "$a IP $end-$bu $IPSERV.$FX.$IP $end- $v Sem conexão ✗$end" 
echo -e "$v======================================= $end"
echo -en "${y}Precione enter para retornar para o manu.${endc}"
read input
echo -e "$v=======================================$end" 
else
clear
echo -e "$vr======================================= $end"  
echo -e "$vr         TERMINAL CONECTADO.  $end "
echo -e "$vr======================================= $end"  
echo -e "$vr======[ $br Status da requisição $ec $vr]======     $end"
echo -e "$a IP $end - $bu $IPSERV.$FX.$IP $end - $vr Conectado ✔$end"      
echo -e "$vr======================================= $end"
ping -c 5 $IPSERV.$FX.$IP
echo && echo -en "${y}Precione enter para retornar para o manu.${endc}"
read input
fi
}
# --------------
# (5) Teste de ping link ou IP
ping_test_ip_link () {
  logoNPDVs
echo -e " ${bu}🌐 TESTE DE CONEXÕES (NPDVs) 🌐
---------------------------------------------------${end}
${br}Faça o teste de conexão de um determinado IP...${end}
${bu}--------------------------------------------------- ${end}"
echo -e "DIGITE O ${y}IP${end} ${bu}OU LINK QUE DESEJA FAZER O TESTE DE CONEXÃO: ${end}"
read -p "http://"$read IP_LINK
echo -e "${y}⌛Aguarde enquanto testamos conexão com o servidor ⌛${end}"
##########
if ! ping -c 1 $IP_LINK >> /dev/null ; then
clear
echo -e "$v======================================= $end"
echo -e "$v       TERMINAL DESCONECTADO.           $end"
echo -e "$v======================================= $end"
echo -e "$v      _____ ____  ____   ___    _       $end"
echo -e "$v     | ____|  _ \|  _ \ / _ \  | |      $end"
echo -e "$v     |  _| | |_) | |_) | | | | | |      $end"
echo -e "$v     | |___|  _ <|  _ <| |_| | |_|      $end"
echo -e "$v     |_____|_| \_\_| \_\\____/  (_)     $end"
echo && echo -e "$v======================================= $end"
echo -e "$v======[ $br Status da requisição $ec $v]======= $end"
echo -e "$a IP $end-$bu $IP_LINK $end- $v Sem conexão ✗$end" 
echo -e "$v======================================= $end"
echo -en "${y}Precione enter para retornar para o manu.${endc}"
read input
echo -e "$v=======================================$end" 
else
clear
echo -e "$vr======================================= $end"  
echo -e "$vr         SERVIDOR CONECTADO.  $end "
echo -e "$vr======================================= $end"  
echo -e "$vr======[ $br Status da requisição $ec $vr]======     $end"
echo -e "$a IP $end - $bu $IP_LINK $end - $vr Conectado ✔$end"      
echo -e "$vr======================================= $end"
ping -c 5 $IP_LINK
echo && echo -en "${y}Precione enter para retornar para o manu.${endc}"
read input
fi
}
# (1) GMCORE
gmcore () {
  logoNPDVs
echo -e " ${vr}ACESSO GMCORE (NPDVs)
---------------------------------------------------${end}
  ${br}Acesso ao gmcore por faixa.${end}
${vr}--------------------------------------------------- ${end}"
echo -e "${y}⌛Aguarde enquanto testamos conexão com o servidor ⌛${end}"
sleep 1
if ! ping -c 1 ${IPSERV}.${GMCORE} >> /dev/null ; then
clear
echo -e "$v======================================= $end"
echo -e "$v       SERVIDOR DESCONECTADO.           $end"
echo -e "$v======================================= $end"
echo -e "$v      _____ ____  ____   ___    _       $end"
echo -e "$v     | ____|  _ \|  _ \ / _ \  | |      $end"
echo -e "$v     |  _| | |_) | |_) | | | | | |      $end"
echo -e "$v     | |___|  _ <|  _ <| |_| | |_|      $end"
echo -e "$v     |_____|_| \_\_| \_\\____/  (_)     $end"
echo && echo -e "$v======================================= $end"
echo -e "$v======[ $br Status da requisição $ec $v]======= $end"
echo -e "$a IP $end-$bu ${IPSERV}.${GMCORE} $end- $v Sem conexão ✗$end" 
echo -e "$v======================================= $end"
echo -en "${y}Precione enter para retornar para o manu.${endc}"
read input
echo -e "$v=======================================$end" 
else
clear
echo -e "$vr======================================== $end"
echo -e "$vr         SERVIDOR CONECTADO.  $end "
echo -e "$vr======================================== $end"
rdesktop -g ${RES} ${IPSERV}.${GMCORE}
echo -e "$vr=======[ $br Status da requisição $ec $vr]=======$end"
echo -e "$a IP $end -$bu ${IPSERV}.${GMCORE} $end- $vr Conectado ✔$end"
echo -e "$vr======================================== $end"
echo -e "$vr    COMANDO EFETUADO COM SUCESSO... $end"
echo -e "$vr======================================== $end"
echo -e "${y}Retornando para o menu principal.
⌛Por favor aguarde ⌛${endc}"
sleep 5
fi
}
# --------------
###################################  (10) DELETAR PASTA /TMP #/mpos/maxipos/tmp ######################################
del_past_temp () {
  logoNPDVs
echo -e " ${r}APAGAR ARQUIVOS TEMPORÁRIOS MAXIPOS (NPDVs)
---------------------------------------------------${end}
  ${br}Deletar arquivos da pasta /tmp 
  por faixa (IP). Digite a faixa de sua filial, 
  depois dê enter para digitar o IP final 
  do terminal${end}
${r}--------------------------------------------------- ${end}"
echo -e "DIGITE A ${y}FAIXA${end} ${r}REFERÊNTE A SUA FILIAL: ${end}"
read -p "$IPSERV." $read FX
clear
##########
  clear
logoNPDVs
echo -e " ${r}APAGAR ARQUIVOS TEMPORÁRIOS MAXIPOS (NPDVs)
---------------------------------------------------${end}
  ${br}Deletar arquivos da pasta /tmp 
  por faixa (IP). Digite a faixa de sua filial, 
  depois dê enter para digitar o IP final 
  do terminal${end}
${r}--------------------------------------------------- ${end}"
echo -e "DIGITE O ${y}FINAL DO IP${end} ${r}QUE DESEJA APAGAR A PASTA TEMPORÁRIA: ${end}"
read -p "$IPSERV.$FX." $read IP
echo -e "${r}---------------------------------------------------${end}"
echo -e "${y}⌛Aguarde enquanto testamos conexão com o terminal ⌛${end}"
sleep 1
if ! ping -c 1 $IPSERV.$FX.$IP >> /dev/null ; then
clear
echo -e "$v======================================= $end"
echo -e "$v       TERMINAL DESCONECTADO.           $end"
echo -e "$v======================================= $end"
echo -e "$v      _____ ____  ____   ___    _       $end"
echo -e "$v     | ____|  _ \|  _ \ / _ \  | |      $end"
echo -e "$v     |  _| | |_) | |_) | | | | | |      $end"
echo -e "$v     | |___|  _ <|  _ <| |_| | |_|      $end"
echo -e "$v     |_____|_| \_\_| \_\\____/  (_)     $end"
echo && echo -e "$v======================================= $end"
echo -e "$v======[ $br Status da requisição $ec $v]======= $end"
echo -e "$a IP $end-$bu $IPSERV.$FX.$IP $end- $v Sem conexão ✗$end" 
echo -e "$v======================================= $end"
echo -en "${y}Precione enter para retornar para o manu.${endc}"
read input
echo -e "$v=======================================$end" 
else
clear
echo -e "$vr======================================== $end"
echo -e "$vr         TERMINAL CONECTADO.  $end "
echo -e "$vr======================================== $end"
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.$FX.$IP "rm -rf /mpos/maxipos/tmp/*";
echo -e "$vr=======[ $br Status da requisição $ec $vr]=======$end"
echo -e "$a IP $end -$bu $IPSERV.$FX.$IP $end- $vr Conectado ✔$end"
echo -e "$vr======================================== $end"
echo -e "$vr    COMANDO EXECUTADO COM SUCESSO... $end"
echo -e "$vr======================================== $end"
echo -e "${y}Retornando para o menu principal.
⌛Por favor aguarde ⌛${endc}"
sleep 5
fi
}
# New Version Check & Update
##################
npdvs_admin_start () {
./npdvs/npdvs.sh
}
# Show About
sobre () {
  clear
  echo -e "
    ###########################################################
    #                  Sobre o NPDVs                        #
    #     Script para automatização de tarefas CPDs Regional. #
    ###########################################################
    #    -- Op-System  :   Linux / Termux                     #
    #    -- Codename   :   NPDVs                            #
    #    -- Version    :   V-build ($version)                      #
    #    -- Coder      :   GitHub                             #
    ###########################################################
     ${b}Descrição${end}
    Este script visa proporcionar um fácil acesso
    para automatização de tarefas interna
    dos CPDs da regional.
     ${b}Nota${end}
    Você precisa está conectado na rede interna 
    de sua filial, para o funcionamento.
    Se tentar utilizar o script sem conexão, você
    não terá acesso.
     ${b}Reports${end}
    Você pode está acompanhando o desenvolvimento
    através de nossa página no GitHub:
    ${u}${blue}https://github.com/nilsonlinux/NPDVs${end}.
    Correção de bugs, implemento de código, e
    caso você pretenda utilizar e precisar mexer no código,
    favor manter os créditos."
  echo && echo -en " ${yellow}Precione enter para retornar ao Menu.${endc}"
  read input
}
# links úteis
links () {
  logoNPDVs
  echo -e "
     ${vr}Links úteis.${end}"
  echo -e " ${g}  -----------------------------------------${end}
    ${bu}http://pdv.mateus/maxipos_backoffice/app
    ${bu}http://armateus.com.br
    ${bu}http://b2b.crednosso.com.br/garantia/loginGarantia.jsf
    ${bu}https://sitefconciliacao.softwareexpress.com.br/sitefweb/pages/inicial.zeus
    ${bu}https://telegram.org/dl/desktop/linux
    ${bu}${blue}https://github.com/nilsonlinux/NPDVs${end}"
  echo -e " ${g}  -----------------------------------------${end}"
  echo && echo -en " ${yellow}Precione enter para retornar ao Menu.${endc}"
  read input
}
# Infinite Loop To Show Menu Untill Exit
while :
do
logoNPDVs
echo -e "${g}------[ MENU PRINCIPAL (NPDVS)]-------${end}
${g}[ ${y}1 ${end}${g}]${end} ${vr} Reiniciar PDVs${end}
${g}[ ${y}2 ${end}${g}]${end} ${vr} Atualizar PDVs${end}
${g}[ ${y}3 ${end}${g}]${end} ${vr} Desligar PDVs${end}
${g}[ ${y}4 ${end}${g}]${end} ${vr} Atualizar imagem MaxiPOS${end}
${g}[ ${y}5 ${end}${g}]${end} ${vr} Reiniciar MaxiPOS${end}
${g}[ ${y}6 ${end}${g}]${end} ${vr} Reiniciar PDVs${end} ${r}(Todos)${end}
${g}[ ${y}7 ${end}${g}]${end} ${vr} Atualizar PDVs${end} ${r}(Todos)${end}
${g}[ ${y}8 ${end}${g}]${end} ${vr} Desligar PDVs${end} ${r}(Todos)${end}
${g}[ ${y}9 ${end}${g}]${end} ${vr} Atualizar imagem PDVs${end} ${r}(Todos)${end}
${g}[ ${y}10${end}${g}]${end} ${vr} Deletar arquivos da pasta tmp${end}
${g}----------------------------------------- ${end}
${g}[ ${y}11${end}${g}]${end} ${vr} Gm core${end} ${y}(Desktop)${end}
${g}----------------------------------------- ${end}
${g}[ ${y}12${end}${g}]${end} ${vr} Teste de conexão${end} ${vr}(PING)${end}
${g}[ ${y}13${end}${g}]${end} ${vr} Teste de conexão${end} ${vr}(LINK-IP)${end}
${g}[ ${y}14${end}${g}]${end} ${vr} Links úteis${end}
${g}----------------------------------------- ${end}
${g}[ ${y}s ${end}${g}]${end} ${vr} Sobre${end}
${g}[ ${y}0 ${end}${g}]${end} ${vr} Sair${end}"
echo -e "${g}-----------------------------------------${end}"
  echo -en "  Selecione uma opção: ➤ "
read option
case $option in
1) reiniciar_pdvs ;;
2) atualizar_pdvs ;;
3) desligar_pdvs ;;
4) atualizar_imagem ;;
5) reiniciar_maxipos ;;
6) reiniciar_todos ;;
7) atualizar_todos ;;
8) desligar_todos ;;
9) atualizar_imagem_todos ;;
10) del_past_temp ;;
11) gmcore ;;
12) ping_test ;;
13) ping_test_ip_link ;;
14) links ;;
s) sobre ;;
0) npdvsexit ;;
*) echo " \"$option\" Opção inválida"; sleep 1 ;;
esac
done
# -------------------------------------------------------
# Script End
