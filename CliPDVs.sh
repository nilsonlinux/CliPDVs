#!/bin/bash
clear
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
              ${c}Versão :${enda} ${y}${version}  ${enda}
---------[ ${y}MENU PRINCIPAL  (CliPDVs)${enda} ]---------
 [ ${y}1${enda} ] ${bu}Reiniciar PDVs${enda}
 [ ${y}2${enda} ] ${bu}Atualizar Terminais${enda}
 [ ${y}3${enda} ] ${bu}Reiniciar o MaxiPOS${enda}
 [ ${y}4${enda} ] ${bu}Atualizar imagens${enda}
 [ ${y}5${enda} ] ${bu}Desligar PDVs${enda}
 [ ${y}6${enda} ] ${bu}VNC PDVs${enda} (${v}Para PCs${enda})
 [ ${y}7${enda} ] ${bu}SSH PDVs${enda}
 [ ${y}8${enda} ] ${bu}MaxiPOS e Email${enda} (${v}Para PCs${enda})
 [ ${y}09${enda} ] ${bu}Ramais T.I${enda}
 [ ${y}10${enda} ] ${bu}IDs Balanças${enda}
 [ ${y}11${enda} ] ${bu}Sobre${enda}
----------------------------------------------
 [ ${y}12${enda} ] ${g}Atualizar CliPDVs${enda}
-----------------------------------------------
 [ ${y}0${enda} ] ${r}Fechar o Script${enda}
----------------------------------------------- ${enda}"
read -p " DIGITE A OPÇÃO " opcao
case $opcao in
1) ./CliPDVs/reiniciar_pdvs.sh;;
2) ./CliPDVs/atualizar_pdvs.sh;;
3) ./CliPDVs/reiniciar_maxipos.sh;;
4) ./CliPDVs/atualizar_imagem.sh;;
5) ./CliPDVs/desligar_pdvs.sh;;
6) ./CliPDVs/vncpdvs.sh;;
7) ./CliPDVs/ssh_pdvs.sh;;
8) ./CliPDVs/outros/paginas.sh;;
9) ./CliPDVs/outros/ramais_ti.sh;;
10) ./CliPDVs/outros/ids_balanca.sh;;
11) ./CliPDVs/outros/sobre.sh;;
12) ./CliPDVs/AtualizadorCliPDVs.sh;;
0) echo -e "\033[1;32m Você fechou o script. Até a próxima!!!\033[0m" 
exit;;
*) echo -e "${r}Opção inexistente. Verifique se você digitou corretamente${enda}."
sleep 1
./CliPDVs/CliPDVs.sh;
esac
#© 2020 Nilsonlinux
