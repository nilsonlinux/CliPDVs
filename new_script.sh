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
# endc=end-color enda=end-argument
a='\033[1;33m'       # Amarelo
p='\033[0;35m'       # Purple
v="\033[0;31m"       #vermelho
vr="\033[0;32m"      #Verde
br="\033[0;37m"      #Branco
IPSERV='192.168'
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
version="2020626"
spath="$( cd "$( dirname $0 )" && pwd )"

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
# Exit CliPDVs
CliExit () {
  logoCliPDVs 
  echo -e " Obrigado por utilizar o ${b}CliPDVs${enda}
 Para mais informações:
 ${b}==>> ${bu}http://t.me/Nilsonlinux/${enda}
 ${b}==>> ${bu}https://clipdvs.org/${enda}"
  echo && sleep 1
  exit
}

# APT Update
aptgupd () {
  echo && echo -e " ${y}Preparing To Perform APT Update${endc}"
  echo " It Is Recommended To Perform APT Update"
  echo " Before You Install Any Application."
  echo -en " ${y}Would You Like To Perform APT Update Now ? {y/n}${endc} "
  read option
  case $option in
    y) ;;
    n) echo " Skiping APT Update"; sleep 1; return 1 ;;
    *) echo " \"$option\" Is Not A Valid Option"; sleep 1; aptgupd ;;
  esac
  echo && echo -e " Performing ${b}APT Update${enda}"
  apt -y update &>/dev/null
  echo -e " ${b}APT Update${enda} Completed"
  echo && echo -en " ${y}Press Enter To Continue"
  read input
}

# New Version Check & Update
krestart () {
  $spath/CliPDVs.sh
  exit
}
kupdate () {
  logoCliPDVs
  echo -e " Preparing To Update ${b}CliPDVs${enda}"
  echo && echo -en " ${y}Press ENTER To Continue${endc}"
  read input
  echo && echo -e " Updating ${b}CliPDVs${enda}, Please Wait..."
  wget wget http://sourceforge.net/projects/kaais/files/CliPDVs.sh -O $spath/CliPDVs.sh &>/dev/null
  sleep 1 && echo -e " ${b}CliPDVs${enda} Was Successfully Updated"
  sleep 1 && echo -e " Restarting ${b}CliPDVs${enda}..."
  sleep 2
  krestart
}
CLiCheck () {
  changelog=$(curl --silent -q https://raw.githubusercontent.com/nilsonlinux/CliPDVs/master/changelog.txt)
  uversion=$(curl --silent -q https://raw.githubusercontent.com/nilsonlinux/CliPDVs/master/version.txt)
  if [[ $uversion > $version ]]; then
    echo -e " Checando atualização: ${r}Nova versão disponível"
    echo && echo -e " Current Version: ${y}$version${endc} Nova versão: ${y}$uversion${endc}"
    echo -e " ${bu}Changelog:${endc}\n$changelog"
    echo && echo -en " ${y}Do You Want To Update? {y/n}${endc} "
    read option
    case $option in
      y) kupdate ;;
      n) echo -e " ${y}Ok, Not Updating.${endc}"; sleep 1; aptgupd ;;
      *) echo " \"$option\" Is Not A Valid Option"; sleep 1; CLiCheck ;;
    esac
  else
    echo -e " Checking Update: ${g}CliPDVs Is Up To Date${endc}"
    aptgupd
  fi
}

# Internet Check
checkinternet () {
  if ping -c 1 google.com &>/dev/null; then
    echo -e " Checking For Internet: ${g}PASSED${endc}"
    CLiCheck
  else
    echo -e " Checking For Internet: ${r}FAILED${endc}
 ${y}This Script Needs An Active Internet Connection${endc}"
    echo -e " ${b}CliPDVs${enda} Will Now Exit"
    echo && sleep 3
    CliExit
  fi
}

# Check Kali
checkkali () {
  forcheck=$(grep -m 1 "ID" /etc/os-release | awk '{print substr($0,4)}')
  if [ "$forcheck" = "deepin" ]; then
    echo -e " Checking Kali Distro: ${g}PASSED${endc}"
    checkinternet
  else
    echo -e " Checking Kali Distro: ${r}FAILED${endc}"
    echo && echo -e " ${y}This Script Is Intended For Kali Linux${endc}"
    echo -en " ${r}Do You Want To Continue At Your Own Risk? {y/n}${endc} "
    read option
    case $option in
      y) echo && checkinternet ;;
      n) echo -e " ${y}Ok.${endc}"; sleep 3; CliExit ;;
      *) echo " \"$option\" Is Not A Valid Option"; sleep 1; checkkali ;;
    esac
  fi
}

# Installation Completed Function
Comando_feito_ok () {
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
  echo && echo -en " ${yellow}Precione enter para retornar para o manu.${endc}"
  read input
}

# Installation Completed Function
Comando_feito_erro () {
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
  echo && echo -en " ${yellow}Precione enter para retornar para o manu.${endc}"
  read input
}

# Script Initiation
logoCliPDVs && echo -e " ${y}Inicializando CliPDVs . . .${endc}" && sleep 1
sleep 1 && CLiCheck

# -------------------------------------------------------

# (7-2) Install Mozilla Firefox
installfirefox () {
  logoCliPDVs
  echo -e " Preparing To Install ${b}Mozilla Firefox${enda}" && echo
  echo -e " ${bu}From Mozilla: Mozilla Firefox is a fast, full-featured Web browser.
 Firefox includes pop-up blocking, tab-browsing,
 integrated Google search, simplified privacy controls,
 a streamlined browser window that shows you more of
 the page than any other browser and a number of additional
 features that work with you to help you get the most out of
 your time online.
 Read more about it here: ${b}https://www.mozilla.org/${enda}"
  echo && echo -e " ${b}${r}CLOSE ALL YOUR FIREFOX WINDOWS BEFORE UPDATING ${enda}"
  echo && echo -en " ${y}Do You Want To Continue? {y/n}${endc} "
  read option
  case $option in
    y) echo && echo -e " Installing ${b}Firefox${enda}"; apt -y install firefox-esr &>/dev/null; Comando_feito "Firefox" ;;
    n) echo -e " ${y}OK. Returning To Menu${endc}"; sleep 1; showwebapps ;;
    *) echo " \"$option\" Is Not A Valid Option"; sleep 1; installfirefox ;;
  esac
}

# -------------------------------------------------------
# Script Menus

# (1) Reiniciar PDVs
reiniciar_pdvs () {
  logoCliPDVs
echo -e "[ ${p}ATUALIZAÇÃO DOS TERMINAIS (CliPDVs)${end} ]
---------------------------------------------------
  ${y}Atualização dos terminais 
  por faixa (IP). Digite a faixa de sua filial, 
  depois dê enter para digitar o IP final 
  do terminal${end}
--------------------------------------------------- ${end}"     
echo -e "DIGITE A ${a}FAIXA${end} REFERÊNTE A SUA FILIAL: "
read -p "$IPSERV." $read fx
clear
##########
  clear
logoCliPDVs
echo -e "[ ${p}ATUALIZAÇÃO DOS TERMINAIS (CliPDVs)${end} ]
---------------------------------------------------
  ${y}Atualização dos terminais 
  por faixa (IP). Digite a faixa de sua filial, 
  depois dê enter para digitar o IP final 
  do terminal${end}
--------------------------------------------------- ${end}"     
echo -e "DIGITE O ${a}FINAL DO IP${end} QUE DESEJA ATUALIZAR: "
read -p "$IPSERV.$fx." $read ip
echo "==================================================="
echo -e "${y}Aguarde enquanto testamos conexão com o terminal...${end}"
if ! ping -c 2 $IPSERV.$fx.$ip >> /dev/null ; then
clear
Comando_feito_erro
echo -e "$v=======================================$end" 
else
clear
Comando_feito_ok   
echo -e "$vr=======================================$end"  
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.$fx.$ip "it-update-pdv.sh";
fi
}
# --------------
# --------------
# (1) Atualizar PDVs
atualizar_pdvs () {
  logoCliPDVs
echo -e "[ ${p}REINICIALIZAÇÃO DOS TERMINAIS (CliPDVs)${end} ]
---------------------------------------------------
  ${y}Reinicialização dos terminais 
  por faixa (IP). Digite a faixa de sua filial, 
  depois dê enter para digitar o IP final 
  do terminal${end}
--------------------------------------------------- ${end}"     
echo -e "DIGITE A ${a}FAIXA${end} REFERÊNTE A SUA FILIAL: "
read -p "$IPSERV." $read fx
clear
##########
  clear
logoCliPDVs
echo -e "[ ${p}ATUALIZAÇÃO DOS TERMINAIS (CliPDVs)${end} ]
---------------------------------------------------
  ${y}Atualização dos terminais 
  por faixa (IP). Digite a faixa de sua filial, 
  depois dê enter para digitar o IP final 
  do terminal${end}
--------------------------------------------------- ${end}"     
echo -e "DIGITE O ${a}FINAL DO IP${end} QUE DESEJA REINICIAR: "
read -p "$IPSERV.$fx." $read ip
echo "==================================================="
echo -e "${y}Aguarde enquanto testamos conexão com o terminal...${end}"
if ! ping -c 2 $IPSERV.$fx.$ip >> /dev/null ; then
clear
Comando_feito_erro
echo -e "$v=======================================$end" 
else
clear
Comando_feito_ok   
echo -e "$vr=======================================$end"  
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.$fx.$ip "reboot";
fi
}
# --------------
# Show About
showabout () {
  clear
  echo -e "
    ###########################################################
    #                  en0xCr3w  CliPDVs                      #
    #    Kali Applications Automatic Installation Script      #
    ###########################################################
    #    -- Op-System  :   Kali Linux 2                       #
    #    -- Codename   :   'Sloth Install'                    #
    #    -- Version    :   v4 build($version)                 #
    #    -- Coder      :   rawstring                          #
    ###########################################################

     ${b}Description${enda}
    This Script Is Meant To Help Users Install
    Their Favourite Applications On A Fresh Install
    Or Live Kali System, Saving Time To Use It.

     ${b}Notes${enda}
    You Need To Be In An Active Internet Connection
    And Be Running As ROOT In Order For This Script
    To Function. Any Other Use Given To It Resulting
    In A Script Mal-Functioning Is Not Our Responsibility.

     ${b}Reports${enda}
    You Can Report Your Findings, Are They Bugs Or
    Suggestions, On KAAIS SourceForge Page:
    ${u}${blue}https://sourceforge.net/p/kaais/discussion/${enda}.
    Bug Reports Will Be Taken In Consideration, And
    Proper Credits Will Be Added To The Script Description."
  echo && echo -en " ${yellow}Press Enter To Return To Main Menu${endc}"
  read input
}

# Infinite Loop To Show Menu Untill Exit
while :
do
logoCliPDVs
echo -e " ${b} =========== MENU =========== ${enda}"
echo -e " 
      ${y}1)${enda}    ${r}Reiniciar PDVs${enda}
      ${y}2)${enda}    ${c}Atualizar PDVs${enda}

      ------------------------
      a)    Sobre CliPDVs
      q)    Sair do CliPDVs"
echo
echo -en " Selecione uma opção: "
read option
case $option in
1) reiniciar_pdvs ;;
2) atualizar_pdvs ;;
a) showabout ;;
q) CliExit ;;
*) echo " \"$option\" Opção inválida"; sleep 1 ;;
esac
done
# -------------------------------------------------------
# Script End