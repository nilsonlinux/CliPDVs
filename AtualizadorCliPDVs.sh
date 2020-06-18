#!/bin/bash
# Variáveis
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
##########
  clear
  echo -e "${g} 
       ____ _ _ ____  ______     __
      / ___| (_)  _ \|  _ \ \   / /__
     | |   | | | |_) | | | \ \ / / __|  
     | |___| | |  __/| |_| |\ V /\__ \    
      \____|_|_|_|   |____/  \_/ |___/ © 2020
              ${c}Versão :${enda} ${y}${version}  ${enda}"
###########################################################
#!/bin/bash
#
# CliPDVs.sh
# Automatização sobre demanda
# Nilsonlinux 15/06/2020
# Colabore com o projeto
#
#Veriaveis
IPSERV=8.8.8.8
a='\033[1;33m'                 # Amarelo
end='\E[0m'
echo "====================================================="
echo "Aguarde enquanto testamos sua conexão com servidor de atualizações..."
if ! ping -c 5 $IPSERV >> /dev/null ; then
echo "=========================="
echo " Você está sem conexão com a internet. "
echo "=========================="
exit
else
echo "========================="
echo " Você está conectado !!! "
echo "========================="
fi
echo "====================================================="
################## PROGRESSO STATUS ##############################
BAR='Conexão bem sucedida ... Por favor aguarde... '   # MÁXIMO 100 CARACTERES
sleep 1
for i in {1..100}; do
    echo -ne "\r${BAR:0:$i}"
    sleep .1
done
sleep 1
echo
echo "====================================================="
echo -e "$t Conectado...-$a Atualizando CliPDVs $end.";
echo -e "${y}Atualizando (CliPDVs). Por favor aguarde . . .${enda}"
sleep 3
echo -e "${y}(CliPDVs) está sendo atualizado e será executado logo após . . .${enda}"
sleep 3
rm -rf CliPDVs && git clone https://github.com/nilsonlinux/CliPDVs.git && chmod -R 777 ./CliPDVs && clear && ./CliPDVs/CliPDVs.sh
sleep 2
clear
# © 2020 Nilsonlinux
