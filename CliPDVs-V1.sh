#!/bin/bash
#########################################################
#       Sistema Cli para gerenciamento de PDVs          #
#           Desenvolvido por:  Nilsonlinux              #
#########################################################
# Variáveis
## Colors
C='\033[1;36m'
G='\033[1;32m'
R='\033[1;31m'
Y='\033[1;33m'
B='\033[1;34m'
P='\033[1;35m'
RE='\033[0m'
a='\033[1;33m' # Amarelo
p='\033[0;35m' # Purple
v='\033[0;32m' #Verde
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
version='20200408'
spath="$( cd "$( dirname $0 )" && pwd )"
############################################################
# clipdvs Logo
logo () {
  clear
  echo -e "${b}${g}                                                                                                     
     ____ _ _ ____  ______     __
    / ___| (_)  _ \|  _ \ \   / /__
   | |   | | | |_) | | | \ \ / / __|  
   | |___| | |  __/| |_| |\ V /\__ \    
    \____|_|_|_|   |____/  \_/ |___/ © 2020${enda}
 ${c}Automação  Facilidade  Rapidez${endc}
        ${r}Dev: Nilsonlinux${endc}"
    echo
}

# Exit Codig
clipdvsexit () {
  logo
  echo -e " Obrigado por utilizar o ${b}CliPDVs${enda}
 Para mais informações visite o repositório oficial:
 ${b}==>> ${bu}https://github.com/nilsonlinux/CliPDVs${enda}
 Grupo no Telegram:
 ${b}==>> ${bu}https://t.me/clipdvs${enda}"
  echo && sleep 1
  exit
}
#######################
# APT Update
clipdvsatualizar () {
  echo && echo -e " ${y}Deseja verificar por atualizações ?${endc}"
  echo " É altamente recomendável a atualização."
  echo " Manter seu dispositivo atualizado, você terá na ultima versão do CliPDVs."
  echo -en " ${g}Deseja continuar ? {s/n}${endc} "
  read option
  case $option in
    s) ;;
    n) echo " Iniciando clipdvs..."; sleep 1; return 1 ;;
    *) echo " \"$option\" Opção inválida"; sleep 1; clipdvsatualizar ;;
  esac
  echo && echo -e " Preparando ${b}atualizações.${enda}"
rm -rf CliPDVs-V1.sh && wget https://raw.githubusercontent.com/nilsonlinux/CliPDVs/master/CliPDVs-V1.sh && chmod +x ./CliPDVs-V1.sh
  echo -e " ${g}Atualização concluída${enda} ..."
  echo && echo -en " ${g}Sistema atualizado${enda}
  ${y}Digite Enter para ir para o menu principal${enda}"
  read input
}
# Script Initiation
logo && echo -e " ${y}Verificando atualizações...${endc}"
sleep 1 && clipdvsatualizar

# Voltar clipdvs
voltarrpdv () {
  logo 
  echo -e " Obrigado por utilizar o ${b}clipdvs${enda}
 Para mais informações visite o repositório oficial:
 ${b}==>> ${bu}https://github.com/nilsonlinux/clipdvs${enda}
 Grupo no Telegram:
 ${b}==>> ${bu}https://t.me/clipdvs${enda}"
  echo && sleep 1
  exit
}
#######################
# Reiniciar PDVs ///////////////////////// MENU /////////////////////////////////////////////////
reiniciarpdvs () {
  logo
  echo -e " ${b}[ REINICIAR PDVs ]${enda}"
  echo -e "${b}Comando a ser executado${enda} : ${r}reboot${enda}"
  echo -e " ${b}[${enda} Opção ${b}]${enda} ${b}[${enda} Detalhes ${b}]${enda}"
  echo -e "      1)    ${p}Terminal 102${enda} - ${a}Caixa rápido 01${enda} - ${v}192.168.3.131${enda}
      2)    ${p}Terminal 103${enda} - ${a}Caixa rápido 02${enda} - ${v}192.168.3.122${enda}
      3)    ${p}Terminal 104${enda} - ${a}Caixa rápido 03${enda} - ${v}192.168.3.124${enda}
      4)    ${p}Terminal 105${enda} - ${a}Caixa rápido 04${enda} - ${v}192.168.3.123${enda}
      5)    ${p}Terminal 106${enda} - ${a}Caixa 05${enda} ${v}192.168.3.25${enda}
      6)    ${p}Terminal 107${enda} - ${a}Caixa 06${enda} - ${v}192.168.3.102${enda}
      7)    ${p}Terminal 108${enda} - ${a}Caixa 07${enda} - ${v}192.168.3.103${enda}
      8)    ${p}Terminal 109${enda} - ${a}Caixa 08${enda} - ${v}192.168.3.104${enda}
      9)    ${p}Terminal 110${enda} - ${a}Caixa 09${enda} - ${v}192.168.3.139${enda}
     10)    ${p}Terminal 111${enda} - ${a}Caixa 10${enda} - ${v}192.168.3.105${enda}
     11)    ${p}Terminal 112${enda} - ${a}Caixa 11${enda} - ${v}192.168.3.107${enda}
     12)    ${p}Terminal 113${enda} - ${a}Caixa 12${enda} - ${v}192.168.3.120${enda}
     13)    ${p}Terminal 114${enda} - ${a}Caixa 13${enda} - ${v}192.168.3.106${enda}
     14)    ${p}Terminal 115${enda} - ${a}Caixa 14${enda} - ${v}192.168.3.110${enda}
     15)    ${p}Terminal 116${enda} - ${a}Caixa 15${enda} - ${v}192.168.3.11${enda}
     16)    ${p}Terminal 117${enda} - ${a}Caixa 16${enda} - ${v}192.168.3.112${enda}
     17)    ${p}Terminal 118${enda} - ${a}Caixa 17${enda} - ${v}192.168.3.113${enda}
     18)    ${p}Terminal 119${enda} - ${a}Caixa 18${enda} - ${v}192.168.3.114${enda}
     19)    ${p}Terminal 120${enda} - ${a}Caixa 19${enda} - ${v}192.168.3.115${enda}
     20)    ${p}Terminal 121${enda} - ${a}Caixa 20${enda} - ${v}192.168.3.116${enda}
     21)    ${p}Terminal 122${enda} - ${a}Caixa 22${enda} - ${v}192.168.3.55${enda}
     22)    ${p}Terminal 123${enda} - ${a}Lanchonete${enda} - ${v}192.168.3.59${enda}
     23)    ${p}Terminal 124${enda} - ${a}Eletro 01${enda} - ${v}192.168.3.117${enda}
     24)    ${p}Terminal 125${enda} - ${a}Eletro 02${enda} - ${v}192.168.3.225${enda}
     25)    ${p}Terminal 126${enda} - ${a}Caixa 21${enda} - ${v}192.168.3.119 ${enda}
     26)    ${p}Terminal 127${enda} - ${a}PDV - Reserva${enda} - ${v}192.168.3.138${enda}
     27)    ${p}Terminal 128${enda} - ${a}Boteco${enda} - ${v}192.168.3.129${enda}
     ----------------------------------------------
      0)    ${p}Voltar para o menu anterior${enda}"
########################### COMANDOS ##########################################################
  echo
  echo -en " Escolha a opção: "
  read option
  case $option in
  1) rcx01 ;;
  2) rcx02 ;;
  3) rcx03 ;;
  4) rcx04 ;;
  5) rcx05 ;;
  6) rcx06 ;;
  7) rcx07 ;;
  8) rcx08 ;;
  9) rcx09 ;;
  10) rcx10 ;;
  11) rcx11 ;;
  12) rcx12 ;;
  13) rcx13 ;;
  14) rcx14 ;;
  15) rcx15 ;;
  16) rcx16 ;;
  17) rcx17 ;;
  18) rcx18 ;;
  19) rcx19 ;;
  20) rcx20 ;;
  21) rcx21 ;;
  22) rcx22 ;;
  23) rcx23 ;;
  24) rcx24 ;;
  25) rcx25 ;;
  26) rcx26 ;;
  27) rcx27 ;;

  0) comandos sleep 1 ;;
  *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; reiniciarpdvs ;;
  esac
}
##################################  FUNÇÕES ######################################
rcx01 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa rápido 01${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa rápido 01${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.59 "reboot"; saidarpdv " ${c}Caixa rápido 01${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx01 ;;
  esac
}
###############################################################################
rcx02 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa rápido 02${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa rápido 02${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.122 "reboot"; saidarpdv " ${c}Caixa rápido 02${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx02 ;;
  esac
}
##############################*Nilsonlinux*################################
rcx03 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa rápido 03${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa rápido 03${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.124 "reboot"; saidarpdv " ${c}Caixa rápido 03${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx03 ;;
  esac
}
##############################*Nilsonlinux*################################
rcx04 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa rápido 04${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa rápido 04${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.123 "reboot"; saidarpdv " ${c}Caixa rápido 04${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx04 ;;
  esac
}
##############################*Nilsonlinux*################################
rcx05 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 05${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 05${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.25 "reboot"; saidarpdv " ${c}Caixa 05${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx05 ;;
  esac
}
##############################*Nilsonlinux*################################
rcx06 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 06${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 06${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.102 "reboot"; saidarpdv " ${c}Caixa 06${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx06 ;;
  esac
}
###############################################################################
###############################################################################
rcx07 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa rápido 07${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa rápido 07${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.103 "reboot"; saidarpdv " ${c}Caixa 07${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx07 ;;
  esac
}
###############################################################################
###############################################################################
rcx08 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 08${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 08${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.104 "reboot"; saidarpdv " ${c}Caixa 08${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx08 ;;
  esac
}
###############################################################################
###############################################################################
rcx09 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 09${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 09${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.139 "reboot"; saidarpdv " ${c}Caixa rápido 09${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx09 ;;
  esac
}
###############################################################################
###############################################################################
rcx10 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 10${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 10${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.105 "reboot"; saidarpdv " ${c}Caixa 10${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx10 ;;
  esac
}
###############################################################################
###############################################################################
rcx11 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 11${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 11${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.107 "reboot"; saidarpdv " ${c}Caixa 11${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx11 ;;
  esac
}
###############################################################################
###############################################################################
rcx12 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 12${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 12${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.120 "reboot"; saidarpdv " ${c}Caixa 12${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx12 ;;
  esac
}
###############################################################################
###############################################################################
rcx13 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 13${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 13${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.106 "reboot"; saidarpdv " ${c}Caixa 13${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx13 ;;
  esac
}
###############################################################################
###############################################################################
rcx14 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 14${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 14${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.110 "reboot"; saidarpdv " ${c}Caixa 14${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx14 ;;
  esac
}
###############################################################################
###############################################################################
rcx15 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 15${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 15${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.11 "reboot"; saidarpdv " ${c}Caixa 15${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx15 ;;
  esac
}
###############################################################################
###############################################################################
rcx16 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 16${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa rápido 01${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.112 "reboot"; saidarpdv " ${c}Caixa 16${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx16 ;;
  esac
}
###############################################################################
###############################################################################
rcx17 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 17${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 17${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.113 "reboot"; saidarpdv " ${c}Caixa 17${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx17 ;;
  esac
}
###############################################################################
###############################################################################
rcx18 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa rápido 18${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 18${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.114 "reboot"; saidarpdv " ${c}Caixa 18${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx18 ;;
  esac
}
###############################################################################
###############################################################################
rcx19 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 19${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 19${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.115 "reboot"; saidarpdv " ${c}Caixa 19${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx19 ;;
  esac
}
###############################################################################
###############################################################################
rcx20 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 20${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 20${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.116 "reboot"; saidarpdv " ${c}Caixa 20${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx20 ;;
  esac
}
###############################################################################
###############################################################################
rcx21 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 22${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 22${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.55 "reboot"; saidarpdv " ${c}Caixa 22${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx21 ;;
  esac
}
###############################################################################
###############################################################################
rcx22 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Terminal 123 Lanchonete${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Terminal 123 Lanchonete${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.59 "reboot"; saidarpdv " ${c}Terminal 123 Lanchonete${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx22 ;;
  esac
}
###############################################################################
###############################################################################
rcx23 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Eletro 01${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Eletro 01${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.117 "reboot"; saidarpdv " ${c} da Lanchonete${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx23 ;;
  esac
}
###############################################################################
###############################################################################
rcx24 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa Eletro 02${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa Eletro 02${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.225 "reboot"; saidarpdv " ${c}Eletro 02${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx24 ;;
  esac
}
###############################################################################
###############################################################################
rcx25 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 21${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 21${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.119 "reboot"; saidarpdv " ${c}Caixa 21${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx25 ;;
  esac
}
###############################################################################
###############################################################################
rcx26 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa reserva${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa reserva${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.138 "reboot"; saidarpdv " ${c}Caixa reserva${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx26 ;;
  esac
}
###############################################################################
###############################################################################
rcx27 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 27${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 27${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.129 "reboot"; saidarpdv " ${c}Caixa 27${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx27 ;;
  esac
}
###############################################################################
rcxtodos () {
  logo
  echo -e " ${y}Confirme a reinicialização de todos os Caixas? ${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Todos os Caixas${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.131 "reboot"; saidarpdv " ${c}Caixa rápido 01${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcxtodos ;;
  esac
}
###############################################################################
# Comando executado para reinicialização dos PDV,s
saidarpdv () {
    echo && echo -e "Você executou o comando no${b}$1${enda}."
    echo -e "Comando disparado ${r}reboot${endc} no${b}$1${endc}. Volte para o menu anterior."
    echo && echo -e " ${y}Digite Enter para retornar.${endc}"
    read input ; reiniciarpdvs ;
}
####################### LISTA DE PDVS PARA O MENU ATUALIZAR PDVS ###################################
atualizarpdvs () {
  logo
  echo -e " ${b}[ ATUALIZAR PDVs ]${enda}"
  echo -e " ${b}[${enda} Opção ${b}]${enda} ${b}[${enda} Detalhes ${b}]${enda}"
  echo -e "${b}Comando a ser executado${enda} : ${r}it-update-pdv.sh${enda}"
  echo -e "      1)    ${p}Terminal 102${enda} - ${a}Caixa rápido 01${enda} - ${v}192.168.3.59${enda}
      2)    ${p}Terminal 103${enda} - ${a}Caixa rápido 02${enda} - ${v}192.168.3.122${enda}
      3)    ${p}Terminal 104${enda} - ${a}Caixa rápido 03${enda} - ${v}192.168.3.124${enda}
      4)    ${p}Terminal 105${enda} - ${a}Caixa rápido 04${enda} - ${v}192.168.3.123${enda}
      5)    ${p}Terminal 106${enda} - ${a}Caixa 05${enda} ${v}192.168.3.25${enda}
      6)    ${p}Terminal 107${enda} - ${a}Caixa 06${enda} - ${v}192.168.3.102${enda}
      7)    ${p}Terminal 108${enda} - ${a}Caixa 07${enda} - ${v}192.168.3.103${enda}
      8)    ${p}Terminal 109${enda} - ${a}Caixa 08${enda} - ${v}192.168.3.104${enda}
      9)    ${p}Terminal 110${enda} - ${a}Caixa 09${enda} - ${v}192.168.3.139${enda}
     10)    ${p}Terminal 111${enda} - ${a}Caixa 10${enda} - ${v}192.168.3.105${enda}
     11)    ${p}Terminal 112${enda} - ${a}Caixa 11${enda} - ${v}192.168.3.107${enda}
     12)    ${p}Terminal 113${enda} - ${a}Caixa 12${enda} - ${v}192.168.3.120${enda}
     13)    ${p}Terminal 114${enda} - ${a}Caixa 13${enda} - ${v}192.168.3.106${enda}
     14)    ${p}Terminal 115${enda} - ${a}Caixa 14${enda} - ${v}192.168.3.110${enda}
     15)    ${p}Terminal 116${enda} - ${a}Caixa 15${enda} - ${v}192.168.3.11${enda}
     16)    ${p}Terminal 117${enda} - ${a}Caixa 16${enda} - ${v}192.168.3.112${enda}
     17)    ${p}Terminal 118${enda} - ${a}Caixa 17${enda} - ${v}192.168.3.113${enda}
     18)    ${p}Terminal 119${enda} - ${a}Caixa 18${enda} - ${v}192.168.3.114${enda}
     19)    ${p}Terminal 120${enda} - ${a}Caixa 19${enda} - ${v}192.168.3.115${enda}
     20)    ${p}Terminal 121${enda} - ${a}Caixa 20${enda} - ${v}192.168.3.116${enda}
     21)    ${p}Terminal 122${enda} - ${a}Caixa 22${enda} - ${v}192.168.3.55${enda}
     22)    ${p}Terminal 123${enda} - ${a}Lanchonete${enda} - ${v}192.168.3.59${enda}
     23)    ${p}Terminal 124${enda} - ${a}Eletro 01${enda} - ${v}192.168.3.117${enda}
     24)    ${p}Terminal 125${enda} - ${a}Eletro 02${enda} - ${v}192.168.3.225${enda}
     25)    ${p}Terminal 126${enda} - ${a}Caixa 21${enda} - ${v}192.168.3.119 ${enda}
     26)    ${p}Terminal 127${enda} - ${a}PDV - Reserva${enda} - ${v}192.168.3.138${enda}
     27)    ${p}Terminal 128${enda} - ${a}Boteco${enda} - ${v}192.168.3.129${enda}
     atodos)    ${p}TODOS${enda} - ${a}Atualizar todos${enda} - ${v}FULL${enda}
     ----------------------------------------------
      0)    ${p}Voltar para o menu anterior${enda}"

  echo
  echo -en " Escolha a opção: "
  read option
  case $option in
  1) acx01 ;;
  2) acx02 ;;
  3) acx03 ;;
  4) acx04 ;;
  5) acx05 ;;
  6) acx06 ;;
  7) acx07 ;;
  8) acx08 ;;
  9) acx09 ;;
  10) cx10 ;;
  11) acx11 ;;
  12) acx12 ;;
  13) acx13 ;;
  14) acx14 ;;
  15) acx15 ;;
  16) acx16 ;;
  17) acx17 ;;
  18) acx18 ;;
  19) acx19 ;;
  20) acx20 ;;
  21) acx21 ;;
  22) acx22 ;;
  23) acx23 ;;
  24) acx24 ;;
  25) acx25 ;;
  26) acx26 ;;
  27) acx27 ;;
  todos) atodos ;;
  0) comandos sleep 1 ;;
  *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; atualizarpdvs ;;
  esac
}

#######################
acx01 () {
  logo
  echo -e " ${y}Confirme a atualização do Caixa rápido 01${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa rápido 01${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.59 "it-update-pdv.sh"; saidaapdv " ${c}Caixa rápido 01${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; acx01 ;;
  esac
}
###############################################################################
###############################################################################
acx02 () {
  logo
  echo -e " ${y}Confirme a atualização do Caixa rápido 02${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa rápido 02${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.122 "it-update-pdv.sh"; saidaapdv " ${c}Caixa rápido 02${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; acx02 ;;
  esac
}
###############################################################################
###############################################################################
acx03 () {
  logo
  echo -e " ${y}Confirme a atualização do Caixa rápido 03${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa rápido 03${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.124 "it-update-pdv.sh"; saidaapdv " ${c}Caixa rápido 03${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; acx03 ;;
  esac
}
###############################################################################
###############################################################################
acx04 () {
  logo
  echo -e " ${y}Confirme a atualização do Caixa rápido 04${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa rápido 04${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.123 "it-update-pdv.sh"; saidaapdv " ${c}Caixa rápido 04${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; acx04 ;;
  esac
}
###############################################################################
###############################################################################
acx05 () {
  logo
  echo -e " ${y}Confirme a atualização do Caixa 05${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa 05${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.25 "it-update-pdv.sh"; saidaapdv " ${c}Caixa 05${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; acx05 ;;
  esac
}
###############################################################################
###############################################################################
acx06 () {
  logo
  echo -e " ${y}Confirme a atualização do Caixa 06${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa 06${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.102 "it-update-pdv.sh"; saidaapdv " ${c}Caixa 06${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; acx06 ;;
  esac
}
###############################################################################
###############################################################################
acx07 () {
  logo
  echo -e " ${y}Confirme a atualização do Caixa rápido 07${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa rápido 07${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.103 "it-update-pdv.sh"; saidaaipdv " ${c}Caixa 07${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; acx07 ;;
  esac
}
###############################################################################
###############################################################################
acx08 () {
  logo
  echo -e " ${y}Confirme a atualização do Caixa 08${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa 08${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.104 "it-update-pdv.sh"; saidaapdv " ${c}Caixa 08${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; acx08 ;;
  esac
}
###############################################################################
###############################################################################
acx09 () {
  logo
  echo -e " ${y}Confirme a de imagem do caixa do Caixa 09${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa 09${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.139 "it-update-pdv.sh"; saidaapdv " ${c}Caixa rápido 09${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; acx09 ;;
  esac
}
###############################################################################
###############################################################################
acx10 () {
  logo
  echo -e " ${y}Confirme a atualização do Caixa 10${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa 10${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.105 "it-update-pdv.sh"; saidaapdv " ${c}Caixa 10${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; acx10 ;;
  esac
}
###############################################################################
###############################################################################
acx11 () {
  logo
  echo -e " ${y}Confirme a atualização do Caixa 11${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa 11${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.107 "it-update-pdv.sh"; saidaapdv " ${c}Caixa 11${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; acx11 ;;
  esac
}
###############################################################################
###############################################################################
acx12 () {
  logo
  echo -e " ${y}Confirme a atualização do Caixa 12${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa 12${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.120 "it-update-pdv.sh"; saidaapdv " ${c}Caixa 12${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; acx12 ;;
  esac
}
###############################################################################
###############################################################################
acx13 () {
  logo
  echo -e " ${y}Confirme a atualização de imagem do Caixa 13${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa 13${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.106 "it-update-pdv.sh"; saidaapdv " ${c}Caixa 13${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; acx13 ;;
  esac
}
###############################################################################
###############################################################################
acx14 () {
  logo
  echo -e " ${y}Confirme a atualização do Caixa 14${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa 14${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.110 "it-update-pdv.sh"; saidaapdv " ${c}Caixa 14${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; acx14 ;;
  esac
}
###############################################################################
###############################################################################
acx15 () {
  logo
  echo -e " ${y}Confirme a atualização de imagem do Caixa 15${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa 15${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.11 "it-update-imagens.sh"; saidaaipdv " ${c}Caixa 15${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizaripdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; aicx15 ;;
  esac
}
###############################################################################
###############################################################################
acx16 () {
  logo
  echo -e " ${y}Confirme a atualização do Caixa 16${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa rápido 01${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.112 "it-update-pdv.sh"; saidaapdv " ${c}Caixa 16${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; acx16 ;;
  esac
}
###############################################################################
###############################################################################
acx17 () {
  logo
  echo -e " ${y}Confirme a atualização do Caixa 17${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa 17${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.113 "it-update-pdv.sh"; saidaapdv " ${c}Caixa 17${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; acx17 ;;
  esac
}
###############################################################################
###############################################################################
acx18 () {
  logo
  echo -e " ${y}Confirme a atualização do Caixa rápido 18${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa 18${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.114 "it-update-pdv.sh"; saidaapdv " ${c}Caixa 18${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; acx18 ;;
  esac
}
###############################################################################
###############################################################################
aicx19 () {
  logo
  echo -e " ${y}Confirme a atualização do Caixa 19${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa 19${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.115 "it-update-pdv.sh"; saidaapdv " ${c}Caixa 19${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; acx19 ;;
  esac
}
###############################################################################
###############################################################################
acx20 () {
  logo
  echo -e " ${y}Confirme a atualização do Caixa 20${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa 20${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.116 "it-update-pdv.sh"; saidaapdv " ${c}Caixa 20${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; acx20 ;;
  esac
}
###############################################################################
###############################################################################
acx21 () {
  logo
  echo -e " ${y}Confirme a atualização de imagem do Caixa 22${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa 22${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.55 "it-update-pdv.sh"; saidaapdv " ${c}Caixa 22${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizaripdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; aicx21 ;;
  esac
}
###############################################################################
###############################################################################
acx22 () {
  logo
  echo -e " ${y}Confirme a atualização de imagem do Terminal 123 Lanchonete${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Terminal 123 Lanchonete${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.59 "it-update-pdv.sh"; saidaapdv " ${c}Terminal 123 Lanchonete${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; aicx22 ;;
  esac
}
###############################################################################
###############################################################################
acx23 () {
  logo
  echo -e " ${y}Confirme a atualização do Eletro 01${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Eletro 01${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.117 "it-update-imagens.sh"; saidaapdv " ${c} da Lanchonete${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; acx23 ;;
  esac
}
###############################################################################
###############################################################################
aicx24 () {
  logo
  echo -e " ${y}Confirme a atualização do Caixa Eletro 02${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa Eletro 02${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.225 "it-update-pdv.sh"; saidaapdv " ${c}Eletro 02${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; acx24 ;;
  esac
}
###############################################################################
###############################################################################
acx25 () {
  logo
  echo -e " ${y}Confirme a atualização do Caixa 21${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa 21${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.119 "it-update-pdv.sh"; saidaapdv " ${c}Caixa 21${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; acx25 ;;
  esac
}
###############################################################################
###############################################################################
aicx26 () {
  logo
  echo -e " ${y}Confirme a atualização do Caixa reserva${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa reserva${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.138 "it-update-imagens.sh"; saidaaipdv " ${c}Caixa reserva${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizaripdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; aicx26 ;;
  esac
}
###############################################################################
###############################################################################
aicx27 () {
  logo
  echo -e " ${y}Confirme a atualização de imagem do Caixa 27${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa 27${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.129 "it-update-imagens.sh"; saidaapdv " ${c}Caixa 27${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; acx27 ;;
  esac
}
###############################################################################
###############################################################################
###############################################################################
atodos () {
  logo
  echo -e " ${y}Confirme a atualização de todos os Caixas? ${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando imagem de ${endc} ${y}Todos os Caixas${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.25 "it-update-imagens.sh"; saidaapdv " ${c}Caixa rápido 01${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; acxtodos ;;
  esac
}
###############################################################################
# Atualizar PDVs
desligarpdvs () {
  logo
  echo -e " ${b}[ DESLIGAR PDVs ]${enda}"
  echo -e " ${b}[${enda} Opção ${b}]${enda} ${b}[${enda} Detalhes ${b}]${enda}"
  echo -e "${b}Comando a ser executado${enda} : ${r}it-update-pdv.sh${enda}"
  echo -e "      1)    ${p}Terminal 102${enda} - ${a}Caixa rápido 01${enda} - ${v}192.168.3.131${enda}
      2)    ${p}Terminal 103${enda} - ${a}Caixa rápido 02${enda} - ${v}192.168.3.122${enda}
      3)    ${p}Terminal 104${enda} - ${a}Caixa rápido 03${enda} - ${v}192.168.3.124${enda}
      4)    ${p}Terminal 105${enda} - ${a}Caixa rápido 04${enda} - ${v}192.168.3.123${enda}
      5)    ${p}Terminal 106${enda} - ${a}Caixa 05${enda} ${v}192.168.3.25${enda}
      6)    ${p}Terminal 107${enda} - ${a}Caixa 06${enda} - ${v}192.168.3.102${enda}
      7)    ${p}Terminal 108${enda} - ${a}Caixa 07${enda} - ${v}192.168.3.103${enda}
      8)    ${p}Terminal 109${enda} - ${a}Caixa 08${enda} - ${v}192.168.3.104${enda}
      9)    ${p}Terminal 110${enda} - ${a}Caixa 09${enda} - ${v}192.168.3.139${enda}
     10)    ${p}Terminal 111${enda} - ${a}Caixa 10${enda} - ${v}192.168.3.105${enda}
     11)    ${p}Terminal 112${enda} - ${a}Caixa 11${enda} - ${v}192.168.3.107${enda}
     12)    ${p}Terminal 113${enda} - ${a}Caixa 12${enda} - ${v}192.168.3.120${enda}
     13)    ${p}Terminal 114${enda} - ${a}Caixa 13${enda} - ${v}192.168.3.106${enda}
     14)    ${p}Terminal 115${enda} - ${a}Caixa 14${enda} - ${v}192.168.3.110${enda}
     15)    ${p}Terminal 116${enda} - ${a}Caixa 15${enda} - ${v}192.168.3.11${enda}
     16)    ${p}Terminal 117${enda} - ${a}Caixa 16${enda} - ${v}192.168.3.112${enda}
     17)    ${p}Terminal 118${enda} - ${a}Caixa 17${enda} - ${v}192.168.3.113${enda}
     18)    ${p}Terminal 119${enda} - ${a}Caixa 18${enda} - ${v}192.168.3.114${enda}
     19)    ${p}Terminal 120${enda} - ${a}Caixa 19${enda} - ${v}192.168.3.115${enda}
     20)    ${p}Terminal 121${enda} - ${a}Caixa 20${enda} - ${v}192.168.3.116${enda}
     21)    ${p}Terminal 122${enda} - ${a}Caixa 22${enda} - ${v}192.168.3.55${enda}
     22)    ${p}Terminal 123${enda} - ${a}Lanchonete${enda} - ${v}192.168.3.59${enda}
     23)    ${p}Terminal 124${enda} - ${a}Eletro 01${enda} - ${v}192.168.3.117${enda}
     24)    ${p}Terminal 125${enda} - ${a}Eletro 02${enda} - ${v}192.168.3.225${enda}
     25)    ${p}Terminal 126${enda} - ${a}Caixa 21${enda} - ${v}192.168.3.119 ${enda}
     26)    ${p}Terminal 127${enda} - ${a}PDV - Reserva${enda} - ${v}192.168.3.138${enda}
     27)    ${p}Terminal 128${enda} - ${a}Boteco${enda} - ${v}192.168.3.129${enda}
     dtodos)    ${p}Todos${enda} - ${a}Desligar todos os terminas${enda} - ${v}FULL${enda}
     ----------------------------------------------
      0)    ${p}Voltar para o menu anterior${enda}"

  echo
  echo -en " Escolha a opção: "
  read option
  case $option in
  1) descx01 ;;
  2) descx02 ;;
  3) descx03 ;;
  4) descx04 ;;
  5) descx05 ;;
  6) descx06 ;;
  7) descx07 ;;
  8) descx08 ;;
  9) descx09 ;;
  10) descx10 ;;
  11) descx11 ;;
  12) descx12 ;;
  13) descx13 ;;
  14) descx14 ;;
  15) descx15 ;;
  16) descx16 ;;
  17) descx17 ;;
  18) descx18 ;;
  19) descx19 ;;
  20) descx20 ;;
  21) descx21 ;;
  22) descx22 ;;
  23) descx23 ;;
  24) descx24 ;;
  25) descx25 ;;
  26) descx26 ;;
  27) descx27 ;;
  0) comandos sleep 1 ;;
  *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; desligarpdvs ;;
  esac
}
#######################
deligarpdvs
descx01 () {
  logo
  echo -e " ${y}Confirme o desligamento do Caixa rápido 01${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Desligando${endc} ${y}Caixa rápido 01${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.59 "halt"; saidadpdv " ${c}Caixa rápido 01${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; deligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descx01 ;;
  esac
}
###############################################################################
###############################################################################
descx02 () {
  logo
  echo -e " ${y}Confirme o desligamento do Caixa rápido 02${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Desligando${endc} ${y}Caixa rápido 02${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.122 "halt"; saidadpdv " ${c}Caixa rápido 02${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; deligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descx02 ;;
  esac
}
###############################################################################
###############################################################################
descx03 () {
  logo
  echo -e " ${y}Confirme o desligamento do Caixa rápido 03${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Desligando${endc} ${y}Caixa rápido 03${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.124 "halt"; saidaaipdv " ${c}Caixa rápido 03${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; deligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descx03 ;;
  esac
}
###############################################################################
###############################################################################
descx04 () {
  logo
  echo -e " ${y}Confirme o desligamento do Caixa rápido 04${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Desligando${endc} ${y}Caixa rápido 04${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.123 "halt"; saidadpdv " ${c}Caixa rápido 04${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; deligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descx04 ;;
  esac
}
###############################################################################
###############################################################################
descx05 () {
  logo
  echo -e " ${y}Confirme o desligamento do Caixa rápido 05${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Desligando${endc} ${y}Caixa 05${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.25 "halt"; saidadpdv " ${c}Caixa 05${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; deligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descx05 ;;
  esac
}
###############################################################################
###############################################################################
descx06 () {
  logo
  echo -e " ${y}Confirme o desligamento do Caixa rápido 06${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Desligando${endc} ${y}Caixa 06${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.102 "halt"; saidadpdv " ${c}Caixa 06${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; desligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descx06 ;;
  esac
}
###############################################################################
###############################################################################
descx07 () {
  logo
  echo -e " ${y}Confirme o desligamento do Caixa rápido 07${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa rápido 07${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.103 "halt"; saidaaipdv " ${c}Caixa 07${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; desligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descx07 ;;
  esac
}
###############################################################################
###############################################################################
descx08 () {
  logo
  echo -e " ${y}Confirme o desligamento do Caixa rápido 08${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Desligando${endc} ${y}Caixa 08${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.104 "halt"; saidadpdv " ${c}Caixa 08${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; desligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descx08 ;;
  esac
}
###############################################################################
###############################################################################
descx09 () {
  logo
  echo -e " ${y}Confirme o desligamento do Caixa rápido 09${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Desligando${endc} ${y}Caixa 09${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.139 "halt"; saidadpdv " ${c}Caixa rápido 09${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; desligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descx09 ;;
  esac
}
###############################################################################
###############################################################################
aicx10 () {
  logo
  echo -e " ${y}Confirme o desligamento do Caixa rápido 10${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Desligando${endc} ${y}Caixa 10${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.105 "halt"; saidadpdv " ${c}Caixa 10${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; deligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descx10 ;;
  esac
}
###############################################################################
###############################################################################
descx11 () {
  logo
  echo -e " ${y}Confirme o desligamento do Caixa rápido 11${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa 11${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.107 "halt"; saidadpdv " ${c}Caixa 11${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; desligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descx11 ;;
  esac
}
###############################################################################
###############################################################################
descx12 () {
  logo
  echo -e " ${y}Confirme o desligamento do Caixa rápido 12${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Desligando${endc} ${y}Caixa 12${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.120 "halt"; saidadpdv " ${c}Caixa 12${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; desligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descx12 ;;
  esac
}
###############################################################################
###############################################################################
descx13 () {
  logo
  echo -e " ${y}Confirme o desligamento do Caixa rápido 13${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Desligando${endc} ${y}Caixa 13${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.106 "halt"; saidaaipdv " ${c}Caixa 13${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; desligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descx13 ;;
  esac
}
###############################################################################
###############################################################################
descx14 () {
  logo
  echo -e " ${y}Confirme o desligamento do Caixa rápido 14${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Desligando${endc} ${y}Caixa 14${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.110 "halt"; saidadpdv " ${c}Caixa 14${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; desligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descx14 ;;
  esac
}
###############################################################################
###############################################################################
descx15 () {
  logo
  echo -e " ${y}Confirme o desligamento do Caixa rápido 15${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa 15${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.11 "halt"; saidadpdv " ${c}Caixa 15${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; desligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descx15 ;;
  esac
}
###############################################################################
###############################################################################
descx16 () {
  logo
  echo -e " ${y}Confirme o desligamento do Caixa rápido 16${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Desligando${endc} ${y}Caixa 16${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.112 "halt"; saidaaipdv " ${c}Caixa 16${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; desligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descx16 ;;
  esac
}
###############################################################################
###############################################################################
descx17 () {
  logo
  echo -e " ${y}Confirme o desligamento do Caixa rápido 17${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Desligando${endc} ${y}Caixa 17${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.113 "halt"; saidadpdv " ${c}Caixa 17${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; desligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descx17 ;;
  esac
}
###############################################################################
###############################################################################
descx18 () {
  logo
  echo -e " ${y}Confirme o desligamento do Caixa rápido 18${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Desligando${endc} ${y}Caixa 18${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.114 "halt"; saidadpdv " ${c}Caixa 18${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; desligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descx18 ;;
  esac
}
###############################################################################
###############################################################################
descx19 () {
  logo
  echo -e " ${y}Confirme o desligamento do Caixa rápido 19${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa 19${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.115 "halt"; saidaaipdv " ${c}Caixa 19${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; desligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descx19 ;;
  esac
}
###############################################################################
###############################################################################
descx20 () {
  logo
  echo -e " ${y}Confirme o desligamento do Caixa rápido 20${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Desligando${endc} ${y}Caixa 20${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.116 "halt"; saidadpdv " ${c}Caixa 20${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; desligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descx20 ;;
  esac
}
###############################################################################
###############################################################################
descx21 () {
  logo
  echo -e " ${y}Confirme o desligamento do Caixa rápido 21${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Desligando${endc} ${y}Caixa 22${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.55 "halt"; saidadpdv " ${c}Caixa 22${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; desligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descx21 ;;
  esac
}
###############################################################################
###############################################################################
descx22 () {
  logo
  echo -e " ${y}Confirme o desligamento do PDV da lanchonete${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Desligando${endc} ${y}Terminal 123 Lanchonete${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.59 "halt"; saidadpdv " ${c}Terminal 123 Lanchonete${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; desligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descx22 ;;
  esac
}
###############################################################################
###############################################################################
descx23 () {
  logo
  echo -e " ${y}Confirme o desligamento do PDV do Eletro 01${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Desligando${endc} ${y}Eletro 01${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.117 "halt"; saidadpdv " ${c} do eletro${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; desligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descx23 ;;
  esac
}
###############################################################################
###############################################################################
descx24 () {
  logo
  echo -e " ${y}Confirme o desligamento do Caixa Eletro 02${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Desligando${endc} ${y}Caixa Eletro 02${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.225 "halt"; saidadpdv " ${c}Eletro 02${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; desligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descx24 ;;
  esac
}
###############################################################################
###############################################################################
descx25 () {
  logo
  echo -e " ${y}Confirme o desligamento do caixa 21${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Desligando${endc} ${y}Caixa 21${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.119 "halt"; saidadpdv " ${c}Caixa 21${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; desligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descx25 ;;
  esac
}
###############################################################################
###############################################################################
descx26 () {
  logo
  echo -e " ${y}Confirme o desligamento do Caixa reserva${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa reserva${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.138 "halt"; saidadpdv " ${c}Caixa reserva${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; desligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descx26 ;;
  esac
}
###############################################################################
###############################################################################
descx27 () {
  logo
  echo -e " ${y}Confirme o desligamento do Caixa 27${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa 27${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.129 "halt"; saidadpdv " ${c}Caixa 27${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; desligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descx27 ;;
  esac
}
###############################################################################
###############################################################################
###############################################################################
descxtodos () {
  logo
  echo -e " ${y}Confirme o desligamento de todos os Caixas? ${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Desligando ${endc} ${y}Todos os Caixas${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.131 "halt"; saidaaipdv " ${c}Caixa rápido 01${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; desligarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; descxtodos ;;
  esac
}
#################################SAIDA DESLIGAR PDVS##################################
saidadpdv () {
    echo && echo -e "Você executou o comando no${b}$1${enda}."
    echo -e "Comando disparado ${r}reboot${endc} no${b}$1${endc}. Volte para o menu anterior."
    echo && echo -e " ${y}Digite Enter para retornar.${endc}"
    read input ; atualizaripdvs ;
}
#################################SAIDA DESLIGAR PDVS##################################
# Atualizar IMAGEM
atualizaripdvs () {
  logo
  echo -e " ${b}[ ATUALIZAR IMAGENS ]${enda}"
  echo -e "${b}Comando a ser executado${enda} : ${r}it-update-imagens.sh${enda}"
  echo -e " ${b}[${enda} Opção ${b}]${enda} ${b}[${enda} Detalhes ${b}]${enda}"
  echo -e "      1)    ${p}Terminal 102${enda} - ${a}Caixa rápido 01${enda} - ${v}192.168.3.131${enda}
      2)    ${p}Terminal 103${enda} - ${a}Caixa rápido 02${enda} - ${v}192.168.3.122${enda}
      3)    ${p}Terminal 104${enda} - ${a}Caixa rápido 03${enda} - ${v}192.168.3.124${enda}
      4)    ${p}Terminal 105${enda} - ${a}Caixa rápido 04${enda} - ${v}192.168.3.123${enda}
      5)    ${p}Terminal 106${enda} - ${a}Caixa 05${enda} ${v}192.168.3.25${enda}
      6)    ${p}Terminal 107${enda} - ${a}Caixa 06${enda} - ${v}192.168.3.102${enda}
      7)    ${p}Terminal 108${enda} - ${a}Caixa 07${enda} - ${v}192.168.3.103${enda}
      8)    ${p}Terminal 109${enda} - ${a}Caixa 08${enda} - ${v}192.168.3.104${enda}
      9)    ${p}Terminal 110${enda} - ${a}Caixa 09${enda} - ${v}192.168.3.139${enda}
     10)    ${p}Terminal 111${enda} - ${a}Caixa 10${enda} - ${v}192.168.3.105${enda}
     11)    ${p}Terminal 112${enda} - ${a}Caixa 11${enda} - ${v}192.168.3.107${enda}
     12)    ${p}Terminal 113${enda} - ${a}Caixa 12${enda} - ${v}192.168.3.120${enda}
     13)    ${p}Terminal 114${enda} - ${a}Caixa 13${enda} - ${v}192.168.3.106${enda}
     14)    ${p}Terminal 115${enda} - ${a}Caixa 14${enda} - ${v}192.168.3.110${enda}
     15)    ${p}Terminal 116${enda} - ${a}Caixa 15${enda} - ${v}192.168.3.11${enda}
     16)    ${p}Terminal 117${enda} - ${a}Caixa 16${enda} - ${v}192.168.3.112${enda}
     17)    ${p}Terminal 118${enda} - ${a}Caixa 17${enda} - ${v}192.168.3.113${enda}
     18)    ${p}Terminal 119${enda} - ${a}Caixa 18${enda} - ${v}192.168.3.114${enda}
     19)    ${p}Terminal 120${enda} - ${a}Caixa 19${enda} - ${v}192.168.3.115${enda}
     20)    ${p}Terminal 121${enda} - ${a}Caixa 20${enda} - ${v}192.168.3.116${enda}
     21)    ${p}Terminal 122${enda} - ${a}Caixa 22${enda} - ${v}192.168.3.55${enda}
     22)    ${p}Terminal 123${enda} - ${a}Lanchonete${enda} - ${v}192.168.3.59${enda}
     23)    ${p}Terminal 124${enda} - ${a}Eletro 01${enda} - ${v}192.168.3.117${enda}
     24)    ${p}Terminal 125${enda} - ${a}Eletro 02${enda} - ${v}192.168.3.225${enda}
     25)    ${p}Terminal 126${enda} - ${a}Caixa 21${enda} - ${v}192.168.3.119 ${enda}
     26)    ${p}Terminal 127${enda} - ${a}PDV - Reserva${enda} - ${v}192.168.3.138${enda}
     27)    ${p}Terminal 128${enda} - ${a}Boteco${enda} - ${v}192.168.3.129${enda}
     aitodos)    ${p}Atualizar imagem de todos os terminais${enda}
     ----------------------------------------------
      0)    ${p}Voltar para o menu anterior${enda}"

  echo
  echo -en " Escolha a opção: "
  read option
  case $option in
  1) aicx01 ;;
  2) aicx02 ;;
  3) aicx03 ;;
  4) aicx04 ;;
  5) aicx05 ;;
  6) aicx06 ;;
  7) aicx07 ;;
  8) aicx08 ;;
  9) aicx09 ;;
  10) aicx10 ;;
  11) aicx11 ;;
  12) aicx12 ;;
  13) aicx13 ;;
  14) aicx14 ;;
  15) aicx15 ;;
  16) aicx16 ;;
  17) aicx17 ;;
  18) aicx18 ;;
  19) aicx19 ;;
  20) aicx20 ;;
  21) aicx21 ;;
  22) aicx22 ;;
  23) aicx23 ;;
  24) aicx24 ;;
  25) aicx25 ;;
  26) aicx26 ;;
  27) aicx27 ;;
  0) comandos sleep 1 ;;
  *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; atualizaripdvs ;;
  esac
}
#######################
#######################
#Reiniciar MAXIPOS
rmxpos01 () {
  logo
  echo -e " ${y}Confirme a rainicialização do MaxiPOS do Caixa rápido 01${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS${endc} ${y}Caixa rápido 01${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.131 "it-update-imagens.sh"; saidarmxpos " ${c}Caixa rápido 01${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpos01 ;;
  esac
}
###############################################################################
###############################################################################
rmxpos02 () {
  logo
  echo -e " ${y}Confirme a rainicialização do MaxiPOS do Caixa rápido 02${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS${endc} ${y}Caixa rápido 02${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.122 "it-update-imagens.sh"; saidarmxpos " ${c}Caixa rápido 02${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpos02 ;;
  esac
}
###############################################################################
###############################################################################
rmxpos03 () {
  logo
  echo -e " ${y}Confirme a rainicialização do MaxiPOS do Caixa rápido 03${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS${endc} ${y}Caixa rápido 03${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.124 "it-update-imagens.sh"; saidarmxpos " ${c}Caixa rápido 03${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpos03 ;;
  esac
}
###############################################################################
###############################################################################
rmxpos04 () {
  logo
  echo -e " ${y}Confirme a rainicialização do MaxiPOS do Caixa rápido 04${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS${endc} ${y}Caixa rápido 04${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.123 "it-update-imagens.sh"; saidarmxpos " ${c}Caixa rápido 04${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpos04 ;;
  esac
}
###############################################################################
###############################################################################
rmxpos05 () {
  logo
  echo -e " ${y}Confirme a rainicialização do MaxiPOS do Caixa 05${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS${endc} ${y}Caixa 05${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.25 "it-update-imagens.sh"; saidarmxpos " ${c}Caixa 05${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpos05 ;;
  esac
}
###############################################################################
###############################################################################
rmxpos06 () {
  logo
  echo -e " ${y}Confirme a rainicialização do MaxiPOS do Caixa 06${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS${endc} ${y}Caixa 06${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.102 "it-update-imagens.sh"; saidarmxpos " ${c}Caixa 06${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpos06 ;;
  esac
}
###############################################################################
###############################################################################
rmxpos07 () {
  logo
  echo -e " ${y}Confirme a rainicialização do MaxiPOS do Caixa rápido 07${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS${endc} ${y}Caixa rápido 07${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.103 "it-update-imagens.sh"; saidarmxpos " ${c}Caixa 07${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpos07 ;;
  esac
}
###############################################################################
###############################################################################
rmxpos08 () {
  logo
  echo -e " ${y}Confirme a rainicialização do MaxiPOS do Caixa 08${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS${endc} ${y}Caixa 08${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.104 "it-update-imagens.sh"; saidarmxpos " ${c}Caixa 08${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpos08 ;;
  esac
}
###############################################################################
###############################################################################
rmxpos09 () {
  logo
  echo -e " ${y}Confirme a de imagem do caixa do Caixa 09${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS${endc} ${y}Caixa 09${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.139 "it-update-imagens.sh"; saidarmxpos " ${c}Caixa rápido 09${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpos09 ;;
  esac
}
###############################################################################
###############################################################################
rmxpos10 () {
  logo
  echo -e " ${y}Confirme a rainicialização do MaxiPOS do Caixa 10${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS${endc} ${y}Caixa 10${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.105 "it-update-imagens.sh"; saidarmxpos " ${c}Caixa 10${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpos10 ;;
  esac
}
###############################################################################
###############################################################################
rmxpos11 () {
  logo
  echo -e " ${y}Confirme a rainicialização do MaxiPOS do Caixa 11${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS${endc} ${y}Caixa 11${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.107 "it-update-imagens.sh"; saidarmxpos " ${c}Caixa 11${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpos11 ;;
  esac
}
###############################################################################
###############################################################################
rmxpos12 () {
  logo
  echo -e " ${y}Confirme a rainicialização do MaxiPOS do Caixa 12${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS${endc} ${y}Caixa 12${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.120 "it-update-imagens.sh"; saidarmxpos " ${c}Caixa 12${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpos12 ;;
  esac
}
###############################################################################
###############################################################################
rmxpos13 () {
  logo
  echo -e " ${y}Confirme a rainicialização do MaxiPOS do Caixa 13${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS${endc} ${y}Caixa 13${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.106 "it-update-imagens.sh"; saidarmxpos " ${c}Caixa 13${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpos13 ;;
  esac
}
###############################################################################
###############################################################################
rmxpos14 () {
  logo
  echo -e " ${y}Confirme a rainicialização do MaxiPOS do Caixa 14${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS${endc} ${y}Caixa 14${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.110 "it-update-imagens.sh"; saidarmxpos " ${c}Caixa 14${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpos14 ;;
  esac
}
###############################################################################
###############################################################################
rmxpos15 () {
  logo
  echo -e " ${y}Confirme a rainicialização do MaxiPOS do Caixa 15${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS${endc} ${y}Caixa 15${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.11 "it-update-imagens.sh"; saidarmxpos " ${c}Caixa 15${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpos15 ;;
  esac
}
###############################################################################
###############################################################################
rmxpos16 () {
  logo
  echo -e " ${y}Confirme a rainicialização do MaxiPOS do Caixa 16${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS${endc} ${y}Caixa rápido 01${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.112 "it-update-imagens.sh"; saidarmxpos " ${c}Caixa 16${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpos16 ;;
  esac
}
###############################################################################
###############################################################################
rmxpos17 () {
  logo
  echo -e " ${y}Confirme a rainicialização do MaxiPOS do Caixa 17${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS${endc} ${y}Caixa 17${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.113 "it-update-imagens.sh"; saidarmxpos " ${c}Caixa 17${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpos17 ;;
  esac
}
###############################################################################
###############################################################################
rmxpos18 () {
  logo
  echo -e " ${y}Confirme a rainicialização do MaxiPOS do Caixa rápido 18${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS${endc} ${y}Caixa 18${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.114 "it-update-imagens.sh"; saidarmxpos " ${c}Caixa 18${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpos18 ;;
  esac
}
###############################################################################
###############################################################################
rmxpos19 () {
  logo
  echo -e " ${y}Confirme a rainicialização do MaxiPOS do Caixa 19${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS${endc} ${y}Caixa 19${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.115 "it-update-imagens.sh"; saidarmxpos " ${c}Caixa 19${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpos19 ;;
  esac
}
###############################################################################
###############################################################################
rmxpos20 () {
  logo
  echo -e " ${y}Confirme a rainicialização do MaxiPOS do Caixa 20${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS${endc} ${y}Caixa 20${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.116 "it-update-imagens.sh"; saidarmxpos " ${c}Caixa 20${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpos20 ;;
  esac
}
###############################################################################
###############################################################################
rmxpos21 () {
  logo
  echo -e " ${y}Confirme a rainicialização do MaxiPOS do Caixa 22${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS${endc} ${y}Caixa 22${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.55 "it-update-imagens.sh"; saidarmxpos " ${c}Caixa 22${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpos21 ;;
  esac
}
###############################################################################
###############################################################################
rmxpos22 () {
  logo
  echo -e " ${y}Confirme a rainicialização do MaxiPOS do Terminal 123 Lanchonete${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS${endc} ${y}Terminal 123 Lanchonete${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.59 "it-update-imagens.sh"; saidarmxpos " ${c}Terminal 123 Lanchonete${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpos22 ;;
  esac
}
###############################################################################
###############################################################################
rmxpos23 () {
  logo
  echo -e " ${y}Confirme a rainicialização do MaxiPOS do Eletro 01${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS${endc} ${y}Eletro 01${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.117 "it-update-imagens.sh"; saidarmxpos " ${c} da Lanchonete${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpos23 ;;
  esac
}
###############################################################################
###############################################################################
rmxpos24 () {
  logo
  echo -e " ${y}Confirme a rainicialização do MaxiPOS do Caixa Eletro 02${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS${endc} ${y}Caixa Eletro 02${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.225 "it-update-imagens.sh"; saidarmxpos " ${c}Eletro 02${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpos24 ;;
  esac
}
###############################################################################
###############################################################################
rmxpos25 () {
  logo
  echo -e " ${y}Confirme a rainicialização do MaxiPOS do Caixa 21${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS${endc} ${y}Caixa 21${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.119 "it-update-imagens.sh"; saidarmxpos " ${c}Caixa 21${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpos25 ;;
  esac
}
###############################################################################
###############################################################################
rmxpos26 () {
  logo
  echo -e " ${y}Confirme a rainicialização do MaxiPOS do Caixa reserva${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS${endc} ${y}Caixa reserva${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.138 "it-update-imagens.sh"; saidarmxpos " ${c}Caixa reserva${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpos26 ;;
  esac
}
###############################################################################
###############################################################################
rmxpos27 () {
  logo
  echo -e " ${y}Confirme a rainicialização do MaxiPOS do Caixa 27${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS${endc} ${y}Caixa 27${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.129 "it-update-imagens.sh"; saidarmxpos " ${c}Caixa 27${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpos27 ;;
  esac
}
###############################################################################
###############################################################################
###############################################################################
rmxpostodos () {
  logo
  echo -e " ${y}Confirme a atualização de imagens de todos os Caixas? ${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando MaxiPOS MaxiPOSimagem de ${endc} ${y}Todos os Caixas${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.131 "it-update-imagens.sh"; saidarmxpos " ${c}Caixa rápido 01${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarmxpos ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rmxpostodos ;;
  esac
}
###############################################################################
# Comando executado
saidarmxpos () {
    echo && echo -e "Você executou o comando no${b}$1${enda}."
    echo -e "Comando disparado ${r}reboot${endc} no${b}$1${endc}. Volte para o menu anterior."
    echo && echo -e " ${y}Digite Enter para retornar.${endc}"
    read input ; reiniciarmxpos ;
}
# Atualizar IMAGEM
reiniciarmxpos () {
  logo
  echo -e " ${b}[ REINICIAR MAXIPOS ]${enda}"
  echo -e "${b}Comando a ser executado${enda} : ${r} it-restart-application.sh${enda}"
  echo -e " ${b}[${enda} Opção ${b}]${enda} ${b}[${enda} Detalhes ${b}]${enda}"
  echo -e "      1)    ${p}Terminal 102${enda} - ${a}Caixa rápido 01${enda} - ${v}192.168.3.131${enda}
      2)    ${p}Terminal 103${enda} - ${a}Caixa rápido 02${enda} - ${v}192.168.3.122${enda}
      3)    ${p}Terminal 104${enda} - ${a}Caixa rápido 03${enda} - ${v}192.168.3.124${enda}
      4)    ${p}Terminal 105${enda} - ${a}Caixa rápido 04${enda} - ${v}192.168.3.123${enda}
      5)    ${p}Terminal 106${enda} - ${a}Caixa 05${enda} ${v}192.168.3.25${enda}
      6)    ${p}Terminal 107${enda} - ${a}Caixa 06${enda} - ${v}192.168.3.102${enda}
      7)    ${p}Terminal 108${enda} - ${a}Caixa 07${enda} - ${v}192.168.3.103${enda}
      8)    ${p}Terminal 109${enda} - ${a}Caixa 08${enda} - ${v}192.168.3.104${enda}
      9)    ${p}Terminal 110${enda} - ${a}Caixa 09${enda} - ${v}192.168.3.139${enda}
     10)    ${p}Terminal 111${enda} - ${a}Caixa 10${enda} - ${v}192.168.3.105${enda}
     11)    ${p}Terminal 112${enda} - ${a}Caixa 11${enda} - ${v}192.168.3.107${enda}
     12)    ${p}Terminal 113${enda} - ${a}Caixa 12${enda} - ${v}192.168.3.120${enda}
     13)    ${p}Terminal 114${enda} - ${a}Caixa 13${enda} - ${v}192.168.3.106${enda}
     14)    ${p}Terminal 115${enda} - ${a}Caixa 14${enda} - ${v}192.168.3.110${enda}
     15)    ${p}Terminal 116${enda} - ${a}Caixa 15${enda} - ${v}192.168.3.11${enda}
     16)    ${p}Terminal 117${enda} - ${a}Caixa 16${enda} - ${v}192.168.3.112${enda}
     17)    ${p}Terminal 118${enda} - ${a}Caixa 17${enda} - ${v}192.168.3.113${enda}
     18)    ${p}Terminal 119${enda} - ${a}Caixa 18${enda} - ${v}192.168.3.114${enda}
     19)    ${p}Terminal 120${enda} - ${a}Caixa 19${enda} - ${v}192.168.3.115${enda}
     20)    ${p}Terminal 121${enda} - ${a}Caixa 20${enda} - ${v}192.168.3.116${enda}
     21)    ${p}Terminal 122${enda} - ${a}Caixa 22${enda} - ${v}192.168.3.55${enda}
     22)    ${p}Terminal 123${enda} - ${a}Lanchonete${enda} - ${v}192.168.3.59${enda}
     23)    ${p}Terminal 124${enda} - ${a}Eletro 01${enda} - ${v}192.168.3.117${enda}
     24)    ${p}Terminal 125${enda} - ${a}Eletro 02${enda} - ${v}192.168.3.225${enda}
     25)    ${p}Terminal 126${enda} - ${a}Caixa 21${enda} - ${v}192.168.3.119 ${enda}
     26)    ${p}Terminal 127${enda} - ${a}PDV - Reserva${enda} - ${v}192.168.3.138${enda}
     27)    ${p}Terminal 128${enda} - ${a}Boteco${enda} - ${v}192.168.3.129${enda}
     ----------------------------------------------
      0)    ${p}Voltar para o menu anterior${enda}"

  echo
  echo -en " Escolha a opção: "
  read option
  case $option in
  1) rmxpos01 ;;
  2) rmxpos02 ;;
  3) rmxpos03 ;;
  4) rmxpos04 ;;
  5) rmxpos05 ;;
  6) rmxpos06 ;;
  7) rmxpos07 ;;
  8) rmxpos08 ;;
  9) rmxpos09 ;;
  10) rmxpos10 ;;
  11) rmxpos11 ;;
  12) rmxpos12 ;;
  13) rmxpos13 ;;
  14) rmxpos14 ;;
  15) rmxpos15 ;;
  16) rmxpos16 ;;
  17) rmxpos17 ;;
  18) rmxpos18 ;;
  19) rmxpos19 ;;
  20) rmxpos20 ;;
  21) rmxpos21 ;;
  22) rmxpos22 ;;
  23) rmxpos23 ;;
  24) rmxpos24 ;;
  25) rmxpos25 ;;
  26) rmxpos26 ;;
  27) rmxpos27 ;;
  0) comandos sleep 1 ;;
  *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; reiniciarmxpos ;;
  esac
}

#########################################################
#########################################################
# Show About
sobre () {
  clear
  echo -e "

     ${b}SOBRE${enda}
    ${y}Este script foi desenvolvido para facilitar
    a manutenção dos PDVs da Loja SM-03 Super Santa Inês.
    E também para facilitar a checagem de informações
    referêntes a loja. As informações contidas aqui
    são de nível empresarial. Você pode adaptar para 
    o funcionamento de acordo com as informações
    de sua filial.${enda}

     ${b}Reporte${enda}
    Se observar algum bug, favor informar: ${g}Nilsonlinux${enda}
    ${u}${blue}https://t.me/nilsonlinux/${enda}.
    Se estiver executando em um computador Segure a tecla
    Ctrl e clique no link para ir."

  echo && echo -en " ${yellow}Digite Enter, para retornar.${endc}"
  read input
}
# Ramais T.I
ramaisti () {
   logo
  echo -e "
    ☎️  RAMAIS T.I
---------------------------------------
    [ ${g}HARDWARE${enda} ] - ${y}3495 / 3579${enda}
    email - hardware@armateus.com.br
    Responsável pela manutenção de todo o equipamento
    de informática do grupo 
    ( computador, coletores, impressoras fiscais, 
    impressoras matricial, impressoras real jat, artcom , leitores etc...
---------------------------------------
    [ ${g}AUTOMAÇÃO${enda} ] - ${y}6929 / 9849 / 6927${enda}
    email - automacao@armateus.com.br
    Responsável pelo sistema de frente de loja [ PDVs] 
    fechamento de tesouraria , etc...
---------------------------------------
    [ ${g}PLANTÃO${enda} ] - ${y}3451 / 3505 / 3450 / 3696 / 9886 / 9885${enda}
    email - suporte.plantao@armateus.com.br
    Atualização de preço e validade de balanças , Etiqueta eletrônica  etc ... 
    O setor de plantão da suporte a todos o setores de T.I.
---------------------------------------
    [ ${g}SISTEMAS${enda} ] - ${y}6930 / 6931 / 6945${enda}
    email - sistemas@armateus.com.br
    Suporte as filias relacionados a sistema de lançamento de notas  fiscal 
    ( SUPORTWARE E GMCORE ), inclusão de usuários e rotinas etc...
---------------------------------------
    [ ${g}TELECOM / REDES${enda} ] - ${y}9846 / 9814 / 6935${enda}
    email - telecom@armateus.com.br
    Responsável pela comunicação das filiais  do grupo, sistema de cartão, 
    criação de e-mail para colaboradores, gerenciamento de impressoras no cups, 
    criação e suporte em ticket,s etc...
---------------------------------------
    [ ${g}GERENCIA${enda} ] - ${y}3524${enda}
    email - jorge.ricardo@armateus.com.br
    Responsável geral por todos os sub setores de T.I
---------------------------------------"
  echo && echo -en " ${yellow}Digite Enter, para retornar.${endc}"
  read input
}
########################## SERVIDOR ECD ##############################
###############################################################################
acx04 () {
  logo
  echo -e " ${y}Confirme a atualização do Caixa rápido 04${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Atualizando${endc} ${y}Caixa rápido 04${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.123 "it-update-pdv.sh"; saidaapdv " ${c}Caixa rápido 04${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; atualizarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; acx04 ;;
  esac
}
###############################################################################
# Menu principal
while :
do
logo
echo -e "${b} ---------[ MENU PRINCIPAL ]---------${enda}"
echo -e ""
echo -e $B" [$R"01"$B]$G Reiniciar PDVs$P"
echo -e $B" [$R"02"$B]$G Atualizar PDVs$P"
echo -e $B" [$R"03"$B]$G Atualizar imagem$P"
echo -e $B" [$R"04"$B]$G Reiniciar MaxiPOS$P"
echo -e $B" [$R"05"$B]$G Desligar terminais$P"
echo -e $B" [$R"06"$B]$G ServidorECD$P"
echo -e $B" [$R"07"$B]$G Ramais T.I"
echo -e "${b} -----------------------------------${enda}"
echo -e $B" [$R"s"$B]$G Sobre"
echo -e "${b} -----------------------------------${enda}"
echo -e $B" [$R"0"$B]$G Sair"
echo
echo -en " Digite a opção: "
read option
case $option in
1) reiniciarpdvs ;;
01) reiniciarpdvs ;;
2) atualizarpdvs ;;
02) atualizarpdvs ;;
3) atualizaripdvs ;;
03) atualizaripdvs ;;
4) reiniciarmxpos ;;
04) reiniciarmxpos ;;
5) desligarpdvs ;;
05) servidorecd ;;
05) servidorecd ;;
6) ramaisti ;;
06) ramaisti ;;
s) sobre ;;
0) clipdvsexit ;;
*) echo -e " \"$option\" ${r}Opção inválida!${endc}"; sleep 1 ;;
esac
done
#© 2020 Nilsonlinux
