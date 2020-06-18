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
version='20200617'
##########
  clear
  echo -e "${g} 
       ____ _ _ ____  ______     __
      / ___| (_)  _ \|  _ \ \   / /__
     | |   | | | |_) | | | \ \ / / __|  
     | |___| | |  __/| |_| |\ V /\__ \    
      \____|_|_|_|   |____/  \_/ |___/ © 2020
              ${c}Versão :${enda} ${y}${version}  ${enda}
---------[ ${y}COMANDOS LOJAS POR FAIXAS (CliPDVs)${enda} ]---------
 [ ${y}1${enda} ] ${bu}Reiniciar PDVs${enda}
 [ ${y}2${enda} ] ${bu}Atualizar Terminais${enda}
 [ ${y}3${enda} ] ${bu}Reiniciar o MaxiPOS${enda}
 [ ${y}4${enda} ] ${bu}Atualizar imagens${enda}
 [ ${y}5${enda} ] ${bu}Desligar PDVs${enda}
 [ ${y}6${enda} ] ${bu}VNC PDVs${enda} (${v}Para PCs${enda})
 [ ${y}7${enda} ] ${bu}SSH PDVs${enda}
 [ ${y}8${enda} ] ${bu}Testar conexão (Faixa) ${enda}
 [ ${y}9${enda} ] ${bu}Testar conexão (Link ou Faixa)${enda}
----------------------------------------------
 [ ${y}16${enda} ] ${g}Atualizar CliPDVs${enda}
-----------------------------------------------
 [ ${y}0${enda} ] ${r}Fechar o Script${enda}
----------------------------------------------- ${enda}"
read -p " DIGITE A OPÇÃO " opcao
case $opcao in
1) ./CliPDVs/global/reiniciar_pdvs.sh;;
2) ./CliPDVs/global/atualizar_pdvs.sh;;
3) ./CliPDVs/global/reiniciar_maxipos.sh;;
4) ./CliPDVs/global/atualizar_imagem.sh;;
5) ./CliPDVs/global/desligar_pdvs.sh;;
6) ./CliPDVs/global/vncpdvs.sh;;
7) ./CliPDVs/global/ssh_pdvs.sh;;
8) ./CliPDVs/global/test_ping.sh;;
9) ./CliPDVs/global/test_ping1.sh;;
16) ./CliPDVs/AtualizadorCliPDVs.sh;;
0)
./CliPDVs/CliPDVs.sh;;
*) echo -e "${r}Opção inexistente. Verifique se você digitou corretamente${enda}."
sleep 1
./CliPDVs/global/menu_global.sh;
esac
#© 2020 Nilsonlinux
