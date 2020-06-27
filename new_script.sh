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
a='\033[1;33m'       # Amarelo
p='\033[0;35m'       # Purple
v="\033[0;31m"       #vermelho
vr="\033[0;32m"      #Verde
br="\033[0;37m"      #Branco
# Variável com a lista de máquinas
hosts='(PDV)'
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
end='\033[0m'
version="2.5"
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
    echo -e " Checando conexão com a internet: ${g}CONECTADO${endc}"
    CLiCheck
  else
    echo -e " Checando conexão com a internet: ${r}DESCONECTADO${endc}
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
  sleep 1 && echo -e " ${b}CliPDVs${end} Atualização aplicada com sucesso"
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
    echo && echo -e " Versão em uso: ${y}$version${endc} Nova versão: ${y}$uversion${endc}"
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
# RETORNO PARA COMANDO QUE OBTEVE ERRO EM SUA REQUISIÇÃO
Comando_feito_ok () {
echo -e "$vr======================================= $end"  
echo -e "$vr         TERMINAL CONECTADO.  $end "
echo -e "$vr======================================= $end"  
echo -e "$vr       ___        _ _              $end"
echo -e "$vr      / _ \ _ __ | (_)_ __   ___   $end"
echo -e "$vr     | | | | '_ \| | | '_ \ / _ \  $end"
echo -e "$vr     | |_| | | | | | | | | |  __/  $end"
echo -e "$vr      \___/|_| |_|_|_|_| |_|\___|  $end"
echo -e "$vr======[ $br Status da requisição $ec $vr]======     $end"
echo -e "$a IP $end - $bu $IPSERV.$fx.$ip $end - $vr Conectado  $end"      
echo -e "$vr======================================= $end"  
}
# RETORNO PARA COMANDO QUE OBTEVE SUCESSO EM SUA REQUISIÇÃO
Comando_erro () {
echo -e "$v======================================= $end"
echo -e "$v       TERMINAL DESCONECTADO.           $end"
echo -e "$v======================================= $end"
echo -e "$v      _____ ____  ____   ___    _       $end"
echo -e "$v     | ____|  _ \|  _ \ / _ \  | |      $end"
echo -e "$v     |  _| | |_) | |_) | | | | | |      $end"
echo -e "$v     | |___|  _ <|  _ <| |_| | |_|      $end"
echo -e "$v     |_____|_| \_\_| \_\\____/  (_)     $end"
echo -e "$v======[ $br Status da requisição $ec $v]=======    $end"
echo -e "$a IP $end - $bu $IPSERV.$fx.$ip $end - $v Sem conexão $end" 
echo -e "$v======================================= $end"
  echo && echo -en " ${y}Precione enter para retornar para o manu.${endc}"
  read input
}
# Ping Check
pingtest_check () {
  if ping -c 3 $IPSERV.$fx.$ip &>/dev/null; then
    echo -e " Checando conexão: ${g}CONECTADO${endc}"
  echo && echo -en " ${y}Precione enter para retornar para o manu.${endc}"
  read input
  else
    echo -e " Checando conexão: ${r}DESCONECTADO${endc}
 ${y}Servidor desconectado...${endc}"
   echo && echo -en " ${y}Precione enter para retornar para o manu.${endc}"
  read input
  fi
}
##################
# INICIALIZAÇÃO DO SCRIPT
logoCliPDVs && echo -e " ${y}Inicializando CliPDVs . . .${endc}" && checkinternet
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
echo -e "${r}===================================================${end}"
clear
echo -e "${y}Aguarde enquanto testamos conexão com o terminal...${end}"
if ! sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.$fx.$ip "reboot" ; then
Comando_erro
echo -e "$v=======================================$end" 
else
Comando_feito_ok   
echo -e "$vr=======================================$end"  
fi
}
# --------------
# --------------
# (1) Atualizar PDVs
atualizar_pdvs () {
  logoCliPDVs
echo -e " ${bu}ATUALIZAÇÃO DOS TERMINAIS (CliPDVs)
---------------------------------------------------${end}
  ${br}Atualização dos terminais 
  por faixa (IP). Digite a faixa de sua filial, 
  depois dê enter para digitar o IP final 
  do terminal${end}
${bu}--------------------------------------------------- ${end}"
echo -e "DIGITE A ${y}FAIXA${end} ${bu}REFERÊNTE A SUA FILIAL: ${end}"
read -p "$IPSERV." $read fx
clear
##########
  clear
logoCliPDVs
echo -e " ${bu}ATUALIZAÇÃO DOS TERMINAIS (CliPDVs)
---------------------------------------------------${end}
  ${br}Atualização dos terminais 
  por faixa (IP). Digite a faixa de sua filial, 
  depois dê enter para digitar o IP final 
  do terminal${end}
${bu}--------------------------------------------------- ${end}"
echo -e "DIGITE O ${a}FINAL DO IP${end} ${bu}QUE DESEJA ATUALIZAR: ${end}"
read -p "$IPSERV.$fx." $read ip
echo -e "${bu}===================================================${end}"
echo -e "${y}Aguarde enquanto testamos conexão com o terminal...${end}"
if ! ping -c 2 $IPSERV.$fx.$ip >> /dev/null ; then
clear
Comando_erro
echo -e "$v=======================================$end" 
else
clear
Comando_feito_ok   
echo -e "$vr=======================================$end"  
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.$fx.$ip "reboot";
fi
}
# --------------

# (3) Reiniciar todos os PDVs
reiniciar_todos () {
  logoCliPDVs
  echo -e " Você está certo em reiniciar todos os terminais da loja?${end}" && echo
  echo -e " ${bu}Esta opção não pode ser desfeita.
 Confirme para prosseguir ${end}"
  echo && echo -e " ${b}${r}FAÇA ESSA OPERAÇÃO COM CONCIÊNCIA... ${end}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " Reiniciando ${b}Todos os Terminais${end}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@$hosts "reboot"; Comando_feito_ok "Reiniciando" ;;
    n) echo -e " ${y}OK. Retornando para o menu${endc}"; sleep 1;  ;;
    *) echo " \"$option\" Opção inválida"; sleep 1; reiniciar_todos ;;
  esac
}

# (3) Reiniciar todos os PDVs
# (4) Atualizar todos os PDVs
atualizar_todos () {
  logoCliPDVs
  echo -e " Você está certo em atualizar todos os terminais da loja?${end}" && echo
  echo -e " ${bu}Esta opção não pode ser desfeita.
 Confirme para prosseguir ${end}"
  echo && echo -e " ${b}${r}VOCÊ CONFIRMA A ATUALIZAÇÃO DE TODOS OS TERMINAIS?.. ${end}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " Atualizando ${b}Todos os Terminais${end}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@$hosts "it-update-pdv.sh"; Comando_feito_ok "Reiniciando" ;;
    n) echo -e " ${y}OK. Retornando para o menu${endc}"; sleep 1;  ;;
    *) echo " \"$option\" Opção inválida"; sleep 1; reiniciar_todos ;;
  esac
}
# (4) Atualizar todos os PDVs
# (1) Teste de ping PDVs
ping_test () {
  logoCliPDVs
echo -e " ${bu}TESTE DE CONEXÕES (CliPDVs)
---------------------------------------------------${end}
  ${br}Faça o teste de conexão de um determinado IP
  com faixa + final de seu endereçamento...${end}
${bu}--------------------------------------------------- ${end}"
echo -e "DIGITE A ${y}FAIXA${end} ${bu}DO IP QUE DESEJA FAZER O TESTE DE CONEXÃO: ${end}"
read -p "$IPSERV." $read fx
clear
##########
  clear
logoCliPDVs
echo -e " ${bu}TESTE DE CONEXÕES (CliPDVs)
---------------------------------------------------${end}
  ${br}Faça o teste de conexão de um determinado IP
  com faixa + final de seu endereçamento...${end}
${bu}--------------------------------------------------- ${end}"
echo -e "DIGITE O ${a}FINAL DO IP${end} ${bu}QUE DESEJA ATUALIZAR: ${end}"
read -p "$IPSERV.$fx." $read ip
echo -e "${bu}===================================================${end}"
echo -e "${y}Aguarde enquanto testamos conexão com o terminal...${end}"
if ! ping -c 2 $IPSERV.$fx.$ip >> /dev/null ; then
pingtest_check
echo -e "$v=======================================$end" 
else
pingtest_check
fi
}
# --------------
# Show About
sobre () {
  clear
  echo -e "
    ###########################################################
    #                  Sobre o CliPDVs                        #
    #     Script para automatização de tarefas regional.      #
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
     ${b}Notas${end}
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

# Infinite Loop To Show Menu Untill Exit
while :
do
logoCliPDVs
echo -e " ${b} =========== MENU =========== ${end}"
echo -e " 
      ${y}1)${end}    ${c}Reiniciar PDVs${end}
      ${y}2)${end}    ${c}Atualizar PDVs${end}
      ${y}3)${end}    ${c}Reiniciar PDVs${end} ${bu}(Todos)${end}
      ${y}4)${end}    ${c}Atualizar ${end} ${bu}(Todos)${end}
      ${y}5)${end}    ${c}Teste de conexão ${end} ${vr}(PING)${end}
      ------------------------
      s)    Sobre CliPDVs
      0)    Sair do CliPDVs"
echo
echo -e " ${b} ============================ ${end}"
echo
echo -en " Selecione uma opção: "
read option
case $option in
1) reiniciar_pdvs ;;
2) atualizar_pdvs ;;
3) reiniciar_todos ;;
4) atualizar_todos ;;
5) ping_test ;;
s) sobre ;;
0) CliExit ;;
*) echo " \"$option\" Opção inválida"; sleep 1 ;;
esac
done
# -------------------------------------------------------
# Script End
