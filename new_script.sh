#!/bin/bash
#
# CliPDVs.sh
# Automatização sobre demanda
# Nilsonlinux 25/06/2020
# Colabore com o projeto
# -------------------------------------------------------
# Variables
# b=bold u=underline bl=black r=red g=green
# y=yellow bu=blue m=magenta c=cyan w=white
# endc=end-color end=end-argument
pdvs_ips='139 131 123 124 25 102 103 104 105 107 120 133 110 11 112 113 114 130 116 55 59 117 225 132 138 128' #FINAL dos IPS DOS PDVS...
gt="100"
version="2.6"
GMCORE='6.36'
IPSERV='192.168'
RES="1366x715"
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
# CliPDVs Logo
logoCliPDVs () {
  clear
  echo -e "${vr} 
     ____ _ _ ____  ______     __
    / ___| (_)  _ \|  _ \ \   / /__
   | |   | | | |_) | | | \ \ / / __|  
   | |___| | |  __/| |_| |\ V /\__ \    
    \____|_|_|_|   |____/  \_/ |___/ © 2020
          ${m}Versão :${end}${bu} ${version}${end}"
    echo
}
# CliPDVs
# Exit CliPDVs
CliExit () {
  logoCliPDVs 
  echo -e " Obrigado por utilizar o ${b}CliPDVs${end}
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
    CLiCheck
  else
    echo -e " Checando conexão com a internet: ${r}DESCONECTADO ❌${endc}
 ${y}Você precisa está conectado para a utilização do CliPDVs${endc}"
    echo -e " ${b}O Script está sendo${end} encerrado..."
    echo && sleep 5
    CliExit
  fi
}
##################
clirestart () {
  $spath/new_script.sh
  exit
}
# New Version Check & Update
cliupdate () {
  logoCliPDVs
  echo -e " Preparando atualização ${b}CliPDVs${end}"
  echo && echo -en " ${y}Precione ENTER para continuar${endc}"
  read input
  echo && echo -e " Atualizando ${b}CliPDVs${end}, Por favor aguarde..."
  wget https://raw.githubusercontent.com/nilsonlinux/CliPDVs/master/new_script.sh -O $spath/new_script.sh &>/dev/null
  sleep 1 && echo -e " ${b}CliPDVs${end} Atualização aplicada com sucesso "
  sleep 1 && echo -e " Restartando ${b}CliPDVs${end}..."
  sleep 2
  clirestart
}
# New Version Check & Update
CLiCheck () {
  changelog=$(curl --silent -q https://raw.githubusercontent.com/nilsonlinux/CliPDVs/master/changelog.txt)
  uversion=$(curl --silent -q https://raw.githubusercontent.com/nilsonlinux/CliPDVs/master/version.txt)
  if [[ $uversion > $version ]]; then
    echo -e " Checando atualização: ${r}Nova versão disponível"
    echo && echo -e " Versão em uso: ${y}$version${endc} ${g} ➤  Nova versão: ${endc}${y}$uversion${endc}"
    echo -e " ${bu}Changelog:${endc}\n$changelog"
    echo && echo -en " ${y}Continuar com a atualização? {s/n}${endc} "
    read option
    case $option in
      s) cliupdate ;;
      n) echo -e " ${y}Ok, Iniciando CliPDVs.${endc}"; sleep 1; aptgupd ;;
      *) echo " \"$option\" Opção inválida, tente outra opção."; sleep 1; CLiCheck ;;
    esac
  else
    echo -e " Checando novas atualizações: ${g}CliPDVs está atualizado${endc}"
    aptgupd
  fi
}
##################
# INICIALIZAÇÃO DO SCRIPT
logoCliPDVs && echo -e " ${y}Inicializando CliPDVs...${endc}" && checkinternet
# -------------------------------------------------------

# (7-2) Install Mozilla Firefox
installfirefox () {
  logoCliPDVs
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
  logoCliPDVs
echo -e " ${r}REINICIALIZAÇÃO DOS TERMINAIS (CliPDVs)
---------------------------------------------------${end}
  ${br}Reinicialização dos terminais 
  por faixa (IP). Digite a faixa de sua filial, 
  depois dê enter para digitar o IP final 
  do terminal${end}
${r}--------------------------------------------------- ${end}"
echo -e "DIGITE A ${y}FAIXA${end} ${r}REFERÊNTE A SUA FILIAL: ${end}"
read -p "$IPSERV." $read fx
clear
##########
  clear
logoCliPDVs
echo -e " ${r}REINICIALIZAÇÃO DOS TERMINAIS (CliPDVs)
---------------------------------------------------${end}
  ${br}Reinicialização dos terminais 
  por faixa (IP). Digite a faixa de sua filial, 
  depois dê enter para digitar o IP final 
  do terminal${end}
${r}--------------------------------------------------- ${end}"
echo -e "DIGITE O ${y}FINAL DO IP${end} ${r}QUE DESEJA REINICIAR: ${end}"
read -p "$IPSERV.$fx." $read ip
echo -e "${r}---------------------------------------------------${end}"
echo -e "${y}⌛Aguarde enquanto testamos conexão com o terminal ⌛${end}"
sleep 1
if ! ping -c 1 $IPSERV.$fx.$ip >> /dev/null ; then
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
echo -e "$a IP $end-$bu $IPSERV.$fx.$ip $end- $v Sem conexão ✗$end" 
echo -e "$v======================================= $end"
echo -en "${y}Precione enter para retornar para o manu.${endc}"
read input
echo -e "$v=======================================$end" 
else
clear
echo -e "$vr======================================== $end"
echo -e "$vr         TERMINAL CONECTADO.  $end "
echo -e "$vr======================================== $end"
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.$fx.$ip "reboot";
echo -e "$vr=======[ $br Status da requisição $ec $vr]=======$end"
echo -e "$a IP $end -$bu $IPSERV.$fx.$ip $end- $vr Conectado ✔$end"
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
  logoCliPDVs
echo -e " ${c}ATUALIZAÇÃO DOS TERMINAIS (CliPDVs)
---------------------------------------------------${end}
  ${br}Atualização dos terminais 
  por faixa (IP). Digite a faixa de sua filial, 
  depois dê enter para digitar o IP final 
  do terminal${end}
${c}--------------------------------------------------- ${end}"
echo -e "DIGITE A ${c}FAIXA${end} ${br}REFERÊNTE A SUA FILIAL: ${end}"
read -p "$IPSERV." $read fx
clear
##########
  clear
logoCliPDVs
echo -e " ${c}ATUALIZAÇÃO DOS TERMINAIS (CliPDVs)
---------------------------------------------------${end}
  ${br}Atualização dos terminais 
  por faixa (IP). Digite a faixa de sua filial, 
  depois dê enter para digitar o IP final 
  do terminal${end}
${c}--------------------------------------------------- ${end}"
echo -e "DIGITE O ${c}FINAL DO IP${end} ${br}QUE DESEJA ATUALIZAR: ${end}"
read -p "$IPSERV.$fx." $read ip
echo -e "${c}---------------------------------------------------${end}"
echo -e "${y}⌛Aguarde enquanto testamos conexão com o terminal ⌛ ${end}"
sleep 1
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
echo && echo -e "$v======================================= $end"
echo -e "$v======[ $br Status da requisição $ec $v]======= $end"
echo -e "$a IP $end-$bu $IPSERV.$fx.$ip $end- $v Sem conexão ✗$end" 
echo -e "$v======================================= $end"
echo -en "${y}Precione enter para retornar para o manu.${endc}"
read input
echo -e "$v=======================================$end" 
else
clear
echo -e "$vr======================================== $end"
echo -e "$vr         TERMINAL CONECTADO.  $end "
echo -e "$vr======================================== $end"
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.$fx.$ip "it-update-pdv.sh";
echo -e "$vr=======[ $br Status da requisição $ec $vr]=======$end"
echo -e "$a IP $end - $bu $IPSERV.$fx.$ip $end - $vr Conectado$end"
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
logoCliPDVs
echo -e " ${v}REINICIALIZAÇÃO DOS TERMINAIS (CliPDVs)"
echo -e "${v}---------------------------------------------------${end}
  ${br}Reinicialização dos terminais 
  por faixa.${end}
${v}--------------------------------------------------- ${end}"
echo -e " DIGITE A${y} FAIXA DA FILIAL${end} ${v}QUE DESEJA REINICIALIZAR OS TERMINAIS: ${end}"
echo -e " Caso queira desistir${y}, apenas deixe o campo em branco e dê enter... ${end}"
read -p " $IPSERV." $read faixa
clear
echo -e "${v}--------------------------------------------------- ${end}"
echo -e "${y}⌛Aguarde enquanto executo o comando 
${v}reboot${end} ${y}em todos os terminais ⌛ ${end}
${v}--------------------------------------------------- ${end}"
##############
${pdv_ips}
for pdvs_ips in ${pdvs_ips}
do
    echo -e "${v}Reiniciando terminal${end} ${g}IP${end} - ${vr}${IPSERV}.${faixa}.${pdvs_ips}${endc} ⌛"
    sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@${IPSERV}.${faixa}.${pdvs_ips} "reboot";
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
  logoCliPDVs
echo -e " ${r}🚨 DESLIGAMENTO DOS TERMINAIS (CliPDVs) 🚨
---------------------------------------------------${end}
  ${br}Desligamento dos terminais 
  por faixa (IP). Digite a faixa de sua filial, 
  depois dê enter para digitar o IP final 
  do terminal${end}
${r}--------------------------------------------------- ${end}"
echo -e "DIGITE A ${y}FAIXA${end} ${r}REFERÊNTE A SUA FILIAL: ${end}"
read -p "$IPSERV." $read fx
clear
##########
  clear
logoCliPDVs
echo -e " ${r}🚨 DESLIGAMENTO DOS TERMINAIS (CliPDVs) 🚨
---------------------------------------------------${end}
  ${br}Desligamento dos terminais 
  por faixa (IP). Digite a faixa de sua filial, 
  depois dê enter para digitar o IP final 
  do terminal${end}
${r}--------------------------------------------------- ${end}"
echo -e "DIGITE O ${y}FINAL DO IP${end} ${r}QUE DESEJA DESLIGAR: ${end}"
read -p "$IPSERV.$fx." $read ip
echo -e "${r}---------------------------------------------------${end}"
echo -e "${y}⌛Aguarde enquanto testamos conexão com o terminal ⌛${end}"
sleep 1
if ! ping -c 1 $IPSERV.$fx.$ip >> /dev/null ; then
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
echo -e "$a IP $end-$bu $IPSERV.$fx.$ip $end- $v Sem conexão ✗$end" 
echo -e "$v======================================= $end"
echo -en "${y}Precione enter para retornar para o manu.${endc}"
read input
echo -e "$v=======================================$end" 
else
clear
echo -e "$vr======================================== $end"
echo -e "$vr         TERMINAL CONECTADO.  $end "
echo -e "$vr======================================== $end"
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.$fx.$ip "halt";
echo -e "$vr=======[ $br Status da requisição $ec $vr]=======$end"
echo -e "$a IP $end -$bu $IPSERV.$fx.$ip $end- $vr Conectado ✔$end"
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
  logoCliPDVs
echo -e " ${bu}ATUALIZAÇÃO DOS TERMINAIS (CliPDVs)"
echo -e "${bu}---------------------------------------------------${end}
  ${br}Atualização dos terminais 
  por faixa de sua filial${end}
${bu}--------------------------------------------------- ${end}"
echo -e " DIGITE A${y} FAIXA DA FILIAL${end} ${bu}QUE DESEJA ATUALIZAR: ${end}"
echo -e " Caso queira desistir${y}, apenas deixe o campo em branco e dê enter... ${end}"
read -p " $IPSERV." $read faixa
clear
echo -e "${bu}--------------------------------------------------- ${end}"
echo -e "${y}⌛Aguarde enquanto executo o comando 
${bu}it-update-pdv.sh${end} ${y}em todos os terminais ⌛ ${end}
${bu}--------------------------------------------------- ${end}"
##############
${pdvs_ips}
for pdvs_ips in ${pdvs_ips}
do
    echo -e "${bu}Atualizando terminal${end} ${g}IP${end} - ${vr}${IPSERV}.${faixa}.${pdvs_ips}${endc} ⌛"
    sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@${IPSERV}.${faixa}.${pdvs_ips} "it-update-pdv.sh";
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
  logoCliPDVs
echo -e "${v}---------------------------------------------------${end}"
echo -e "${r}🚨 DESLIGAMENTO DOS TERMINAIS (CliPDVs) 🚨"
echo -e "${v}--------------------------------------------------- ${end}"
echo -e " DIGITE A${y} FAIXA DA FILIAL${end} ${v}QUE DESEJA DESLIGAR: ${end}"
echo -e " Caso queira desistir${y}, apenas deixe o campo em branco e dê enter... ${end}"
read -p " $IPSERV." $read faixa
clear
echo -e "${v}--------------------------------------------------- ${end}"
echo -e "${y}⌛Aguarde enquanto executo o comando 
${v}halt${end} ${y}em todos os terminais ⌛ ${end}
${v}--------------------------------------------------- ${end}"
##############
${pdv_ips}
for pdvs_ips in ${pdvs_ips}
do
    echo -e "${bu}Desligando terminal${end} ${g}IP${end} - ${vr}${IPSERV}.${faixa}.${pdvs_ips}${endc} ⌛"
    sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@${IPSERV}.${faixa}.${pdvs_ips} "halt";
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
  logoCliPDVs
echo -e " ${c}ATUALIZAÇÃO DE IMAGEM DOS TERMINAIS (CliPDVs)
---------------------------------------------------${end}
  ${br}Atualização de imagem dos terminais 
  por faixa (IP). Digite a faixa de sua filial, 
  depois dê enter para digitar o IP final 
  do terminal${end}
${c}--------------------------------------------------- ${end}"
echo -e "DIGITE A ${c}FAIXA${end} ${br}REFERÊNTE A SUA FILIAL: ${end}"
read -p "$IPSERV." $read fx
clear
##########
  clear
  logoCliPDVs
echo -e " ${c}ATUALIZAÇÃO DE IMAGEM DOS TERMINAIS (CliPDVs)
---------------------------------------------------${end}
  ${br}Atualização de imagem dos terminais 
  por faixa (IP). Digite a faixa de sua filial, 
  depois dê enter para digitar o IP final 
  do terminal${end}
${c}--------------------------------------------------- ${end}"
echo -e "DIGITE O ${c}FINAL DO IP${end} ${br}QUE DESEJA ATUALIZAR IMAGEM: ${end}"
read -p "$IPSERV.$fx." $read ip
echo -e "${bu}---------------------------------------------------${end}"
echo -e "${y}⌛Aguarde enquanto testamos conexão com o terminal ⌛ ${end}"
sleep 1
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
echo && echo -e "$v======================================= $end"
echo -e "$v======[ $br Status da requisição $ec $v]======= $end"
echo -e "$a IP $end-$bu $IPSERV.$fx.$ip $end- $v Sem conexão ✗$end" 
echo -e "$v======================================= $end"
echo -en "${y}Precione enter para retornar para o manu.${endc}"
read input
echo -e "$v=======================================$end" 
else
clear
echo -e "$vr======================================== $end"
echo -e "$vr         TERMINAL CONECTADO.  $end "
echo -e "$vr======================================== $end"
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.$fx.$ip "it-update-imagens.sh";
echo -e "$vr=======[ $br Status da requisição $ec $vr]=======$end"
echo -e "$a IP $end - $bu $IPSERV.$fx.$ip $end - $vr Conectado$end"
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
  logoCliPDVs
echo -e " ${bu}ATUALIZAÇÃO DE IMAGEM DOS TERMINAIS (CliPDVs)"
echo -e "${bu}---------------------------------------------------${end}
  ${br}Atualização dos terminais 
  por faixa de sua filial${end}
${bu}--------------------------------------------------- ${end}"
echo -e " DIGITE A${y} FAIXA DA FILIAL${end} ${bu}QUE DESEJA ATUALIZAR: ${end}"
echo -e " Caso queira desistir${y}, apenas deixe o campo em branco e dê enter... ${end}"
read -p " $IPSERV." $read faixa
clear
echo -e "${bu}--------------------------------------------------- ${end}"
echo -e "${y}⌛Aguarde enquanto executo o comando 
${bu}it-update-imagens.sh${end} ${y}em todos os terminais ⌛ ${end}
${bu}--------------------------------------------------- ${end}"
##############
${pdv_ips}
for pdvs_ips in ${pdvs_ips}
do
    echo -e "${bu}Atualizando imagem do terminal${end} ${g}IP${end} - ${vr}${IPSERV}.${faixa}.${pdvs_ips}${endc} ⌛"
    sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@${IPSERV}.${faixa}.${pdvs_ips} "it-update-imagens.sh";
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
  logoCliPDVs
echo -e " ${r}REINICIALIZAÇÃO DO MAXIPOS (CliPDVs)
---------------------------------------------------${end}
  ${br}Reinicialização do MaxiPOS 
  por faixa (IP). Digite a faixa de sua filial, 
  depois dê enter para digitar o IP final 
  do terminal${end}
${r}--------------------------------------------------- ${end}"
echo -e "DIGITE A ${y}FAIXA${end} ${r}REFERÊNTE A SUA FILIAL: ${end}"
read -p "$IPSERV." $read fx
clear
##########
  clear
logoCliPDVs
echo -e " ${r}REINICIALIZAÇÃO DO MAXIPOS (CliPDVs)
---------------------------------------------------${end}
  ${br}Reinicialização do MaxiPOS 
  por faixa (IP). Digite a faixa de sua filial, 
  depois dê enter para digitar o IP final 
  do terminal${end}
${r}--------------------------------------------------- ${end}"
echo -e "DIGITE O ${y}FINAL DO IP${end} ${r}QUE DESEJA REINICIAR O MAXIPOS: ${end}"
read -p "$IPSERV.$fx." $read ip
echo -e "${r}---------------------------------------------------${end}"
echo -e "${y}⌛Aguarde enquanto testamos conexão com o terminal ⌛${end}"
sleep 1
if ! ping -c 1 $IPSERV.$fx.$ip >> /dev/null ; then
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
echo -e "$a IP $end-$bu $IPSERV.$fx.$ip $end- $v Sem conexão ✗$end" 
echo -e "$v======================================= $end"
echo -en "${y}Precione enter para retornar para o manu.${endc}"
read input
echo -e "$v=======================================$end" 
else
clear
echo -e "$vr======================================== $end"
echo -e "$vr         TERMINAL CONECTADO.  $end "
echo -e "$vr======================================== $end"
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.$fx.$ip "it-restart-application.sh";
echo -e "$vr=======[ $br Status da requisição $ec $vr]=======$end"
echo -e "$a IP $end -$bu $IPSERV.$fx.$ip $end- $vr Conectado ✔$end"
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
  logoCliPDVs
echo -e " ${bu}🌐 TESTE DE CONEXÕES (CliPDVs) 🌐
---------------------------------------------------${end}
  ${br}Faça o teste de conexão de um determinado IP
  com faixa + final de seu endereçamento...${end}
${bu}--------------------------------------------------- ${end}"
echo -e "DIGITE A ${y}FAIXA${end} ${bu}DO IP QUE DESEJA FAZER O TESTE DE CONEXÃO: ${end}"
read -p "$IPSERV." $read fx
##########
clear
logoCliPDVs
echo -e " ${bu}🌐 TESTE DE CONEXÕES (CliPDVs) 🌐
---------------------------------------------------${end}
  ${br}Faça o teste de conexão de um determinado IP
  com faixa + final de seu endereçamento...${end}
${bu}--------------------------------------------------- ${end}"
echo -e "DIGITE O ${a}FINAL DO IP${end} ${bu}QUE DESEJA FAZER O TESTE DE CONEXÃO: ${end}"
read -p "$IPSERV.$fx." $read ip
echo -e "${bu}---------------------------------------------------${end}"
echo -e "${y}⌛Aguarde enquanto testamos conexão com o terminal ⌛${end}"
sleep 2
if ! ping -c 1 $IPSERV.$fx.$ip >> /dev/null ; then
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
echo -e "$a IP $end-$bu $IPSERV.$fx.$ip $end- $v Sem conexão ✗$end" 
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
echo -e "$a IP $end - $bu $IPSERV.$fx.$ip $end - $vr Conectado ✔$end"      
echo -e "$vr======================================= $end"
ping -c 5 $IPSERV.$fx.$ip
echo && echo -en "${y}Precione enter para retornar para o manu.${endc}"
read input
fi
}
# --------------
# (5) Teste de ping link ou IP
ping_test_ip_link () {
  logoCliPDVs
echo -e " ${bu}🌐 TESTE DE CONEXÕES (CliPDVs) 🌐
---------------------------------------------------${end}
${br}Faça o teste de conexão de um determinado IP...${end}
${bu}--------------------------------------------------- ${end}"
echo -e "DIGITE O ${y}IP${end} ${bu}OU LINK QUE DESEJA FAZER O TESTE DE CONEXÃO: ${end}"
read -p "http://"$read ip_link
echo -e "${y}⌛Aguarde enquanto testamos conexão com o servidor ⌛${end}"
##########
if ! ping -c 1 $ip_link >> /dev/null ; then
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
echo -e "$a IP $end-$bu $ip_link $end- $v Sem conexão ✗$end" 
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
echo -e "$a IP $end - $bu $ip_link $end - $vr Conectado ✔$end"      
echo -e "$vr======================================= $end"
ping -c 5 $ip_link
echo && echo -en "${y}Precione enter para retornar para o manu.${endc}"
read input
fi
}
# (1) GMCORE
gmcore () {
  logoCliPDVs
echo -e " ${vr}ACESSO GMCORE (CliPDVs)
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
# (14) MGV-SERVER
mgv_server () {
  logoCliPDVs
echo -e " ${vr}ACESSO GMCORE (CliPDVs)
---------------------------------------------------${end}
  ${br}Acesso ao gmcore por faixa.${end}
${vr}--------------------------------------------------- ${end}"
echo -e "${y}⌛Aguarde enquanto testamos conexão com o servidor ⌛${end}"
sleep 1
if ! ping -c 1 ${IPSERV}.${MGVSERV} >> /dev/null ; then
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
echo -e "$a IP $end-$bu ${IPSERV}.${MGVSERV} $end- $v Sem conexão ✗$end" 
echo -e "$v======================================= $end"
echo -en "${y}Precione enter para retornar para o manu.${endc}"
read input
echo -e "$v=======================================$end" 
else
clear
echo -e "$vr======================================== $end"
echo -e "$vr         SERVIDOR CONECTADO.  $end "
echo -e "$vr======================================== $end"
rdesktop -g ${RES} -u ${MGVUSER} -p ${MGVPASS} ${IPSERV}.${MGVSERV}
echo -e "$vr=======[ $br Status da requisição $ec $vr]=======$end"
echo -e "$a IP $end -$bu ${IPSERV}.${MGVSERV} $end- $vr Conectado ✔$end"
echo -e "$vr======================================== $end"
echo -e "$vr    COMANDO EFETUADO COM SUCESSO... $end"
echo -e "$vr======================================== $end"
echo -e "${y}Retornando para o menu principal.
⌛Por favor aguarde ⌛${endc}"
sleep 3
fi
}
# --------------
# (15) MGV-SERVER
gateway_filiais () {
  logoCliPDVs
echo -e " ${c}ACESSO AO SERVIDOR ECD FILIAIS (CliPDVs)
---------------------------------------------------${end}
=${y}LOJA${end}======${bu}CIDADE${endc}============${vr}FAIXA${endc}===
  3 - SUPER SANTA INES        3
  32 - MIX TIMON              46
  39 - MIX CHAPADINHA         114
  41 - MIX CAXIAS             11
  47 - MIX BACABAL            115
  48 - MIX PEDREIRAS          93
  91 - MIX SANTA INES         91
  99 - MIX PINHEIRO           117
  55 - PRESIDENTE DULTRA      55
  65 - ELETRO SANTA INES      65
  68 - ELETRO SANTA LUZIA     68
  69 - ELETRO PEDREIRAS       69
  79 - ELETRO LAGO DA PEDRA   79
  131 - ELETRO BACABAL        131
  163 - ELETRO COROATÁ        37
  164 - ELETRO TIMON          166
  165 - ELETRO VIANA          167
  170 - ELETRO SÃO MATEUS     168
  173 - ELETRO COROTA 2       191
  176 - ELETRO CODÓ 2         185
  202 - SUPER CODÓ		
  251 - MIX PARNAIBA          118
  252 - MIX TERESINA          161
  431 - CAMINO LAGO DA PEDRA  144
  433 - CAMINO VIANA          136
  434 - CAMINO BARREIRINHAS		
  435 - CAMINO COROATÁ        41
  436 - CAMINO SANTA INES     169
  439 - CAMINO MIRANDA        170

${c}--------------------------------------------------- ${end}"
echo -e "DIGITE A ${c}FAIXA DA FILIAL${end} ${br}QUE DESEJA O ACESSO AO GATEWAY: ${end}"
read -p "$IPSERV." $read FAIXA
echo -e "${bu}---------------------------------------------------${end}"
echo -e "${y}⌛Aguarde enquanto testamos conexão com o terminal ⌛ ${end}"
sleep 1
if ! ping -c 2 ${IPSERV}.${FAIXA}.${gt} >> /dev/null ; then
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
echo -e "$a IP $end-$bu ${IPSERV}.${FAIXA}.$gt $end- $v Sem conexão ✗$end" 
echo -e "$v======================================= $end"
echo -en "${y}Precione enter para retornar para o manu.${endc}"
read input
echo -e "$v=======================================$end" 
else
clear
echo -e "$vr======================================== $end"
echo -e "$vr         SERVIDOR CONECTADO.  $end "
echo -e "$vr======================================== $end"
rdesktop -g ${RES} -u ${GUSER} -p ${GPASS} ${IPSERV}.${FAIXA}.${gt}         
echo -e "$vr=======[ $br Status da requisição $ec $vr]=======$end"
echo -e "$a IP $end - $bu ${IPSERV}.${FAIXA}.$gt $end - $vr Conectado$end"
echo -e "$vr======================================== $end"
echo -e "$vr    COMANDO EXECUTADO COM SUCESSO... $end"
echo -e "$vr======================================== $end"
echo -e "${y}Retornando para o menu principal.
⌛Por favor aguarde ⌛${endc}"
sleep 3
fi
}
###TEST
# (16) IMPORTA
importa_pdvs () {
  logoCliPDVs
echo -e " ${vr}ACESSO SERVIDOR IMPORTA (CliPDVs)
---------------------------------------------------${end}
  ${br}Script externa.${end}
${vr}--------------------------------------------------- ${end}"
echo -e "${y}⌛Aguarde enquanto testamos conexão com o servidor ⌛${end}"
sleep 1
if ! ping -c 1 ${IMPORTA} >> /dev/null ; then
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
echo -e "$a IP $end-$bu ${IMPORTA} $end- $v Sem conexão ✗$end" 
echo -e "$v======================================= $end"
echo -en "${y}Precione enter para retornar para o manu.${endc}"
read input
echo -e "$v=======================================$end" 
else
clear
echo -e "$vr======================================== $end"
echo -e "$vr         IMPORTA CONECTADO.  $end "
echo -e "$vr         ${IMPORTA}  $end "
echo -e "$vr======================================== $end"
sshpass -p importa ssh -o "StrictHostKeyChecking no" importa@pdvmaxipos.mateus "";
echo -e "$vr=======[ $br Status da requisição $ec $vr]=======$end"
echo -e "$a IP $end -$bu ${IMPORTA} $end- $vr Conectado ✔$end"
echo -e "$vr======================================== $end"
echo -e "$vr    COMANDO EFETUADO COM SUCESSO... $end"
echo -e "$vr======================================== $end"
echo -e "${y}Retornando para o menu principal.
⌛Por favor aguarde ⌛${endc}"
sleep 3
fi
}
# --------------
# Show About
sobre () {
  clear
  echo -e "
    ###########################################################
    #                  Sobre o CliPDVs                        #
    #     Script para automatização de tarefas CPDs Regional. #
    ###########################################################
    #    -- Op-System  :   Linux / Termux                     #
    #    -- Codename   :   CliPDVs                            #
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
    ${u}${blue}https://github.com/nilsonlinux/CliPDVs${end}.
    Correção de bugs, implemento de código, e
    caso você pretenda utilizar e precisar mexer no código,
    favor manter os créditos."
  echo && echo -en " ${yellow}Precione enter para retornar ao Menu.${endc}"
  read input
}
# links úteis
links () {
  logoCliPDVs
  echo -e "
     ${vr}Links úteis.${end}"
  echo -e " ${g}  -----------------------------------------${end}
    ${bu}http://pdv.mateus/maxipos_backoffice/app
    ${bu}http://armateus.com.br
    ${bu}http://b2b.crednosso.com.br/garantia/loginGarantia.jsf
    ${bu}https://sitefconciliacao.softwareexpress.com.br/sitefweb/pages/inicial.zeus
    ${bu}https://telegram.org/dl/desktop/linux
    ${bu}${blue}https://github.com/nilsonlinux/CliPDVs${end}"
  echo -e " ${g}  -----------------------------------------${end}"
  echo && echo -en " ${yellow}Precione enter para retornar ao Menu.${endc}"
  read input
}
# Infinite Loop To Show Menu Untill Exit
while :
do
logoCliPDVs
echo -e "${g}------[ MENU PRINCIPAL (CLIPDVS)]-------${end}
${g}[ ${y}1 ${end}${g}]${end} ${vr} Reiniciar PDVs${end}
${g}[ ${y}2 ${end}${g}]${end} ${vr} Atualizar PDVs${end}
${g}[ ${y}3 ${end}${g}]${end} ${vr} Desligar PDVs${end}
${g}[ ${y}4 ${end}${g}]${end} ${vr} Atualizar imagem MaxiPOS${end}
${g}[ ${y}5 ${end}${g}]${end} ${vr} Reiniciar MaxiPOS${end}
${g}[ ${y}6 ${end}${g}]${end} ${vr} Reiniciar PDVs${end} ${r}(Todos)${end}
${g}[ ${y}7 ${end}${g}]${end} ${vr} Atualizar PDVs${end} ${r}(Todos)${end}
${g}[ ${y}8 ${end}${g}]${end} ${vr} Desligar PDVs${end} ${r}(Todos)${end}
${g}[ ${y}9 ${end}${g}]${end} ${vr} Atualizar imagem PDVs${end} ${r}(Todos)${end}
${g}----------------------------------------- ${end}
${g}[ ${y}10${end}${g}]${end} ${vr} Gm core${end} ${y}(Desktop)${end}
${g}----------------------------------------- ${end}
${g}[ ${y}11${end}${g}]${end} ${vr} Teste de conexão${end} ${vr}(PING)${end}
${g}[ ${y}12${end}${g}]${end} ${vr} Teste de conexão${end} ${vr}(LINK-IP)${end}
${g}[ ${y}13${end}${g}]${end} ${vr} Links úteis${end}
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
10) gmcore ;;
11) ping_test ;;
12) ping_test_ip_link ;;
13) links ;;
s) sobre ;;
0) CliExit ;;
*) echo " \"$option\" Opção inválida"; sleep 1 ;;
esac
done
# -------------------------------------------------------
# Script End
