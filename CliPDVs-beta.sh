#!/bin/bash
# NPDVs.sh
# Automatização sobre demanda
# Nilsonlinux 23/07/2020
# Colabore com o projeto
# -------------------------------------------------------
# Variables
# b=bold u=underline bl=black r=red g=green
# y=yellow bu=blue m=magenta c=cyan w=white
# endc=end-color end=end-argument
pdvs_ips='101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133'  #FINAL dos IPS DOS PDVS...
GW="254"
version="4.4"
GUSER="maxpos_gw"
GPASS="terminal"
IMPORTA="pdvmaxipos.mateus"
spath="$( cd "$( dirname $0 )" && pwd )"
export DIR="$(dirname "$(readlink -f "$0")")"
a='\033[1;33m'    #Amarelo
p='\033[0;35m'    #roxo
b="\033[0;37m"    #Branco
vr="\033[0;31m"   #vermelho
v1="\033[0;32m"   #Verde escuro
v2="\033[1;32m"   #verde claro
a="\E[33m"        #amarelo
############################################################################
logoNPDVs () {
  clear
echo -e "${v1}  _______________________________________________ ${f}"
echo -e "${v1} |       ____ _ _ ____  ______     __            |${f}"
echo -e "${v1} |      / ___| (_)  _ \|  _ \ \   / /__          |${f}"
echo -e "${v1} |     | |   | | | |_) | | | \ \ / / __|         |${f}"
echo -e "${v1} |     | |___| | |  __/| |_| |\ V /\__ \         |${f}"
echo -e "${v1} |      \____|_|_|_|   |____/  \_/ |___/ © 2020  |${f}"
echo -e "${v1} | BETA                                          |${f}"
}
# NPDVs
# Exit CliPDVs
NPDVsExit () {
  logoNPDVs 
  echo -e " Obrigado por utilizar o ${b}NPDVs                   ${f}
 Desenvolvido por: Nilsonlinux
 ${b}Telegram -➤ ${a}https://t.me/nilsonlinux                   ${f}"
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
    echo -e "${v1} |-----------------------------------------------| ${f}"
    echo -e "${v1} | ${a}Checando conexão com a internet: ${v2}CONECTADO ✅ ${v1}| ${f}"
    echo -e "${v1} |_______________________________________________| ${f}"
    NPDVsCheck
  else
    echo -e "${a}Checando conexão com a internet: ${vr}DESCONECTADO ❌         | ${f}
 ${v1} precisa está conectado para a utilização do NPDVs${f}           |  "
    echo -e " ${b}O Script está sendo ${f} encerrado...            |  "
    echo && sleep 5
    NPDVsExit
  fi
}
##################
NPDVsStart () {
  bash /CliPDVS.sh
  exit
}
# New Version Check & Update
NPDVsUpdate () {
  logoNPDVs
  echo -e " Preparando atualização ${b}NPDVs${f}"
  echo && echo -en " ${a}Precione ENTER para continuar${f}"
  read input
  echo && echo -e " Atualizando ${b}NPDVs${f}, Por favor aguarde..."
  rm -rf npdvs_admin && git clone https://github.com/sistemanpdvs/npdvs_admin.git && chmod +x ./npdvs_admin/npdvs.sh
  sleep 1 && echo -e " ${b}NPDVs${f} Atualização aplicada com sucesso "
  sleep 1 && echo -e " Restartando ${b}NPDVs${f}..."
  sleep 2
  NPDVsStart
}
# New Version Check & Update
NPDVsCheck () {
  changelog=$(curl --silent -q https://raw.githubusercontent.com/sistemanpdvs/npdvs/master/changelog.txt)
  uversion=$(curl --silent -q https://raw.githubusercontent.com/sistemanpdvs/npdvs/master/version.txt)
  if [[ $uversion > $version ]]; then
    echo -e " Checando atualização: ${v1}Nova versão disponível ${f}"
    echo && echo -e " Versão em uso: ${a}$version${f} ${v1} ➤  Nova versão: ${a}$uversion ${f}"
    echo -e " ${a}Changelog:${f}\n$changelog"
    echo && echo -en " ${a}Continuar com a atualização? {s/n} ${f} "
    read option
    case $option in
      s) NPDVsUpdate ;;
      n) echo -e " ${a}Ok, Iniciando NPDVs.${f}"; sleep 1;  ;;
      *) echo " \"$option\" Opção inválida, tente outra opção."; sleep 1; NPDVsCheck ;;
    esac
  else
    echo -e " Checando novas atualizações: ${v2}NPDVs está atualizado ${f}"
    
  fi
}
##################

# INICIALIZAÇÃO DO SCRIPT
logoNPDVs &&
    echo -e "${v1} |-----------------------------------------------|                  ${f}"
    echo -e "${v1} |${f} ${a} Inicializando CliPDVs...     ${v1}                | ${f}"  && checkinternet
# -------------------------------------------------------
################################### (01) COMANDOS MAXIPOS #############################
comando_maxipos=(it-update-pdv.sh it-update-imagens.sh it-restart-application.sh reboot halt)
#######################################################################################
comandos_maxipos () {
  logoNPDVs
echo -e "${v1} |          COMANDOS MAXIPOS (NPDVs)             |   ${f}"
echo -e "${v1} |     ${vr}Qual IP deseja executar um comando ?${v1}      |   ${f}"
echo -e "${v1} |-----------------------------------------------|${f}"
echo -e "${v1} | ${f}${b}DIGITE O IP ${f}${v1}__________________by:Nilsonlinux__| ${f} ${b}"
read -p "  IP : " $read IP
##########
  logoNPDVs
echo -e "${v1} |          COMANDOS MAXIPOS (NPDVs)             |   ${f}"
echo -e "${v1} |${vr}Escolha uma das opções para executar o comando${f} ${v1}|   ${f}"
echo -e "${v1} |-----------------------------------------------|${f}"
echo -e "${v1}   IP : ${v2}${IP}                                        ${f}"
echo -e "${v1} |-----------------------------------------------|${f}"
echo -e "${v1} |0) ${f}${v2}it-update-pdv.sh${f} ${vr}ATUALIZAR MAXIPOS          ${v1}|  ${f}"
echo -e "${v1} |1) ${f}${v2}it-update-imagens.sh${f} ${vr}ATUALIZAR IMAGEM       ${v1}|  ${f}"
echo -e "${v1} |2) ${f}${v2}it-restart-application.sh${f} ${vr}REINICIAR MAXIPOS ${v1}|  ${f}"
echo -e "${v1} |3) ${f}${v2}reboot${f} ${vr}REINICIAR TERMINAL                   ${v1}|  ${f}"
echo -e "${v1} |4) ${f}${v2}halt${f} ${vr}DESLIGAR TERMINAL                      ${v1}|  ${f}"
echo -e "${v1} |-----------------------------------------------|${f}"
echo -e "${v1} | ${f}${b}DIGITE A OPÇÃO ${f}${v1}_______________by:Nilsonlinux__| ${f} ${b}"
read -p " ➤  " $read COMANDO
###########
  logoNPDVs
echo -e "${v1} |          COMANDOS MAXIPOS (NPDVs)             |${f}"
echo -e "${v1} |${vr}     Digite ENTER para executar o comando.    ${f} ${v1}|   ${f}"
echo -e "${v1} | ${vr}IP${f} : ${v2}${IP}${f}                                     ${f}"
echo -e "${v1} | ${vr}COMANDO${f} : ${v2}${comando_maxipos[$COMANDO]}${f}"
echo -e "${v1} |-----------------------------------------------|${f}"
echo -e "${v1} | ${f}${b}DIGITE ENTER ${f}${v1}_________________by:Nilsonlinux__| ${f} ${b}"
read -p " ➤  "
echo -e "${v1} Por favor aguarde... ${f}"
sleep 1
if ! ping -c 1 $IP >> /dev/null ; then
  logoNPDVs
echo -e "${v1} |${vr} Digite enter, para retornar ao menu principal.${v1}|${f}"
echo -e "${v1} |-----------------------------------------------|${f}"
echo -e "${v1} |        ${vr}   _____ ____  ____   ___             ${v1} |${f}"
echo -e "${v1} |        ${vr}  | ____|  _ \|  _ \ / _ \              ${f}"
echo -e "${v1} |        ${vr}  |  _| | |_) | |_) | | | |             ${f}"
echo -e "${v1} |        ${vr}  | |___|  _ <|  _ <| |_| |             ${f}"
echo -e "${v1} |        ${vr}  |_____|_| \_\_| \_\\____/             ${f}"
echo -e "${v1} |        ${vr}  ${a}IP${f} : ${vr}$IP                      ${f}"
echo -e "${v1} |        ${vr}   TERMINAL DESCONECTADO.             ${v1} |${f}"
echo -e "${v1} | ${f}${b}DIGITE ENTER ${f}${v1}_________________by:Nilsonlinux__| ${f} ${b}"
read input
echo -e "${vr} |=======================================${f}" 
else
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@${IP} "${comando_maxipos[$COMANDO]}";
  logoNPDVs
echo -e "${v1} |          COMANDOS MAXIPOS (NPDVs)             |${f}"
echo -e "${v1} |       ${v2}Comando executado com sucesso...       ${v1} |   ${f}"
echo -e "${v1} |-----------------------------------------------|${f}"
echo -e "${v1} |IP : ${v2}${IP}                                        ${f}"
echo -e "${v1} |COMANDO : ${v2}${comando_maxipos[$COMANDO]}            ${f}"
echo -e "${v1} |-----------------------------------------------|${f}"
echo -e "${v1} |${f}${b}DIGITE ENTER PARA RETORNAR ${f}${v1}____by:Nilsonlinux__| ${f} ${b}"
read -p " ➤  "
fi
}
######################################## (06) TROCA DE IMAGEM PDVS ##################################
padrao=(MATEUS_SUPERTROCO MIX_SUPERTROCO CAMIÑO_SUPERTROCO SUPER_MATEUS_MAIS MIX_MATEUS_MAIS CAMIÑO ELETRO DIADASMÃES)
#####################################################################################################
trocaimg () {
  logoNPDVs
echo -e "${v1} |       TROCA DE IMAGEM PADRÃO PDVS             |   ${f}"
echo -e "${v1} |      ${vr}Qual IP deseja executar o comando ?${v1}      |   ${f}"
echo -e "${v1} |-----------------------------------------------|${f}"
echo -e "${v1} | ${f}${b}DIGITE O IP ${f}${v1}__________________by:Nilsonlinux__| ${f} ${b}"
read -p "  IP : " $read IP
##########
  logoNPDVs
echo -e "${v1} |       TROCA DE IMAGEM PADRÃO PDVS             |   ${f}"
echo -e "${v1} | ${vr}Digite o numero da filial EX: (003, 048, 447)${v1} |   ${f}"
echo -e "${v1} |-----------------------------------------------|${f}"
echo -e "${v1} | ${f}${b}DIGITE A LOJA ${f}${v1}________________by:Nilsonlinux__| ${f} ${b}"
echo -e "${v1}  IP : ${v2}${IP}                                         ${f} ${b}"
read -p "  LOJA : " $read LOJA
  logoNPDVs
echo -e "${v1} |       TROCA DE IMAGEM PADRÃO PDVS             |   ${f}"
echo -e "${v1} | ${f} ${vr}Digite o numero do terminal. EX: 125, 059...${f} ${v1}| ${f}"
echo -e "${v1} |-----------------------------------------------|${f}"
echo -e "${v1} | ${f}${b}DIGITE O TERMINAL ${f}${v1}____________by:Nilsonlinux__| ${f} ${b}"
echo -e "${v1}  IP : ${v2}${IP}                                        ${f}"
echo -e "${v1}  LOJA : ${v2}${LOJA}                                    ${f} ${b}" 
read -p "  TERMINAL : " $read TERMINAL
  logoNPDVs
echo -e "${v1} |       TROCA DE IMAGEM PADRÃO PDVS             |   ${f}"
echo -e "${v1} | ${vr}Escolha a imagem padrão a ser colocada. ${v1}      |   ${f}"
echo -e "${v1} |-----------------------------------------------|${f}"
echo -e "${v1}  IP : ${v2}${IP}                                        ${f}"
echo -e "${v1}  LOJA : ${v2}${LOJA}                                    ${f}"
echo -e "${v1}  TERMINAL : ${v2}${TERMINAL}                            ${f}"
echo -e "${v1} |-----------------------------------------------|${f}"
echo -e "${v1} |${v2}0) ${f}${a}MATEUS SUPER TROCO ${f}                       ${v1}  |   ${f}"
echo -e "${v1} |${v2}1) ${f}${a}MIX SUPER TROCO ${f}                          ${v1}  |   ${f}"
echo -e "${v1} |${v2}2) ${f}${a}CAMIÑO SUPER TROCO ${f}                       ${v1}  |   ${f}"
echo -e "${v1} |${v2}3) ${f}${a}SUPER MATEUS MAIS ${f}                        ${v1}  |   ${f}"
echo -e "${v1} |${v2}4) ${f}${a}MIX MATEUS MAIS ${f}                          ${v1}  |   ${f}"
echo -e "${v1} |${v2}5) ${f}${a}CAMIÑO ${f}                                   ${v1}  |   ${f}"
echo -e "${v1} |${v2}6) ${f}${a}ELETRO ${f}                                   ${v1}  |   ${f}"
echo -e "${v1} |${v2}7) ${f}${a}DIA DAS MÃES ${f}                             ${v1}  |   ${f}"
echo -e "${v1} |${v2}DIGITE A OPÇÃO|_______________by:Nilsonlinux___|                    ${f} ${b}"
read -p "  ➤ " $read IMAGEM
###########
  logoNPDVs
echo -e "${v1} |       TROCA DE IMAGEM PADRÃO PDVS             |   ${f}"
echo -e "${v1} |${vr}     Digite ENTER para executar o comando.    ${f} ${v1}|   ${f}"
echo -e "${v1} |-----------------------------------------------|${f}"
echo -e "${v1} |IP : ${v2}${IP}                                        ${f}"
echo -e "${v1} |LOJA : ${v2}${LOJA}                                    ${f}"
echo -e "${v1} |TERMINAL : ${v2}${TERMINAL}                            ${f}"
echo -e "${v1} |IMAGEM : ${v2}${padrao[$IMAGEM]}                       ${f}"
echo -e "${v1} |Caminho da atualização:                           ${f}"
echo -e "${v1} |/mpos/maxipos/pos/l0000${vr}${LOJA}${v1}/t0000${vr}${TERMINAL}${v1}/imagens/      ${f}"
echo -e "${v1} |-----------------------------------------------|${f}"
echo -e "${v1} |${f}${b}DIGITE ENTER ${f}${v1}__________________by:Nilsonlinux__| ${f} ${b}"
read -p " ➤  "
echo -e "${v1} Por favor aguarde... ${f}"
sleep 1
if ! ping -c 1 $IP >> /dev/null ; then
  logoNPDVs
echo -e "${vr} |-----------------------------------------------|${f}"
echo -e "${vr} |           TERMINAL DESCONECTADO.              |${f}"
echo -e "${vr} |           _____ ____  ____   ___              |${f}"
echo -e "${vr} |          | ____|  _ \|  _ \ / _ \              ${f}"
echo -e "${vr} |          |  _| | |_) | |_) | | | |             ${f}"
echo -e "${vr} |          | |___|  _ <|  _ <| |_| |             ${f}"
echo -e "${vr} |          |_____|_| \_\_| \_\\____/             ${f}"
echo -e "${vr} |          IP${end} : ${r}$IP                    ${f}"
echo -e "${vr} |              Sem conexão ✗                    |${f}"
echo -e "${vr} |_______________________________________________|${f}"
echo -e " ${y}DIGITE${endc} ${vr}ENTER${endc} ${y}PARA ATUALIZAR A IMAGEM AGORA:${end}"
read input
echo -e "${v1} Por favor aguarde... ${f}"
echo -e "${vr} |=======================================${f}" 
else
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@${IP} "wget -q --tries=02 -T 02 -O /tmp/${padrao[$IMAGEM]}.zip http://192.168.3.251/suporteregional/${padrao[$IMAGEM]}.zip && unzip -o /tmp/${padrao[$IMAGEM]}.zip -d /mpos/maxipos/pos/l0000$LOJA/t0000$TERMINAL/imagens ";
  logoNPDVs
echo -e "${v1} |       TROCA DE IMAGEM PADRÃO PDVS             |   ${f}"
echo -e "${v1} |       ${v2}Comando executado com sucesso...       ${v1} |   ${f}"
echo -e "${v1} |-----------------------------------------------|${f}"
echo -e "${v1} |IP : ${v2}${IP}                                        ${f}"
echo -e "${v1} |LOJA : ${v2}${LOJA}                                    ${f}"
echo -e "${v1} |TERMINAL : ${v2}${TERMINAL}                            ${f}"
echo -e "${v1} |IMAGEM : ${v2}${padrao[$IMAGEM]}                       ${f}"
echo -e "${v1} |Caminho da atualização:                           ${f}"
echo -e "${v1} |/mpos/maxipos/pos/l0000${vr}${LOJA}${v1}/t0000${vr}${TERMINAL}${v1}/imagens/      ${f}"
echo -e "${v1} |-----------------------------------------------|${f}"
echo -e "${v1} |${f}${b}DIGITE ENTER PARA RETORNAR ${f}${v1}____by:Nilsonlinux__| ${f} ${b}"
read -p " ➤  "
fi
}
################################################ TROCA DE IMAGEM TERMINAL
###############################################################################################################
while :
do
clear
echo -e "${v1}  _______________________________________________     ${f}"
echo -e "${v1} |       ____ _ _ ____  ______     __            |    ${f}"
echo -e "${v1} |      / ___| (_)  _ \|  _ \ \   / /__          |    ${f}"
echo -e "${v1} |     | |   | | | |_) | | | \ \ / / __|         |    ${f}"
echo -e "${v1} |     | |___| | |  __/| |_| |\ V /\__ \         |    ${f}"
echo -e "${v1} |      \____|_|_|_|   |____/  \_/ |___/ © 2020  |    ${f}"
echo -e "${v1} | BETA                                          |    ${f}"
echo -e "${v1} |         [ MENU PRINCIPAL  (CliPDVs) ]         |    ${f}"
echo -e "${v1} | [ 1 ] ${v2} Comandos MaxiPOS Executar            ${v1}  |   ${f}"
echo -e "${v1} | [ 2 ] ${v2} Troca IMG PDVs                       ${v1}  |   ${f}"
echo -e "${v1} | [ 3 ] ${v2} Reiniciar o MaxiPOS                  ${v1}  |   ${f}"
echo -e "${v1} | [ 4 ] ${v2} Atualizar imagens                    ${v1}  |   ${f}"
echo -e "${v1} | [ 4 ] ${v2} IDs Balanças                         ${v1}  |   ${f}"
echo -e "${v1} | [ 4 ] ${v2} IDs Ramais T.I                       ${v1}  |   ${f}"
echo -e "${v1} |-----------------------------------------------|          ${f}"
echo -e "${v1} | [ 5 ] ${v2}Atualizar CliPDVs                       |${f}"               
echo -e "${v1} |-----------------------------------------------|${f}"
echo -e "${v1} | [ 0 / Sair ] ${v2} Fechar o Script  ${f}  ${v1}             |   ${f}"
echo -e "${v1} |-----------------------------------------------|${f}"
echo -e "${v1} | ${f}${b}DIGITE A OPÇÃO ${f}${v1}_______________by:Nilsonlinux__| ${f} ${b}"
echo -en " ➤ "
read option
case $option in
1) comandos_maxipos ;;
2) trocaimg ;;
s) sobre ;;
0) NPDVsExit ;;
*) echo -e " \"$option\" ${vr} OPÇÃO INVÁLIDA ${f}"; sleep 1 ;;
esac
done
clear
# Script End
#© 2021 Nilsonlinux
