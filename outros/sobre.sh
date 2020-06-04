#!/bin/bash
clear
echo -e "\033[0;32m                                                                               \033[0m"
echo -e "\033[0;32m         ____ _ _ ____  ______     __                                          \033[0m"
echo -e "\033[0;32m        / ___| (_)  _ \|  _ \ \   / /__                                        \033[0m"
echo -e "\033[0;32m       | |   | | | |_) | | | \ \ / / __|                                       \033[0m"
echo -e "\033[0;32m       | |___| | |  __/| |_| |\ V /\__ \                                       \033[0m"
echo -e "\033[0;32m        \____|_|_|_|   |____/  \_/ |___/ © 2020                                \033[0m"
echo -e "\033[0;32m    BETA                                                                       \033[0m"
echo -e "\033[0;32m .-----------------[ Sobre ]---------------                                    \033[0m"
echo -e "\033[0;32m |\033[0m \033[0;35m Sistema PDV cli para profissionais                        \033[0m"
echo -e "\033[0;32m |\033[0m \033[0;35m da área de T.I. Desenvolvido por :\033[0;36m Nilsonlinux  \033[0m"
echo -e "\033[0;32m |\033[0m \033[0;35m GitHub : \033[0;36mhttps://github.com/nilsonlinux/CliPDVs \033[0m"
echo -e "\033[0;32m |\033[0m \033[0;35m Este sistema visa automatizar os processos                \033[0m"
echo -e "\033[0;32m |\033[0m \033[0;35m logisticos. As informações contidas nestes                \033[0m"
echo -e "\033[0;32m |\033[0m \033[0;35m scripts, são de uso exclusivo...                          \033[0m"
echo -e "\033[0;32m '---------------------------------------                                      \033[0m"
echo -e "\033[0;33m Digite\033[0;32m 0\033[0;33m para voltar pro menu principal.                  \033[0m"
read -p " ⇢ " opcao
case $opcao in
0) ./CliPDVs/CliPDVs.sh;;
sair) echo -e "\033[1;33m Você saiu do (CliPDV's). Até a próxima!!!                               \033[0m" 
exit;;
*) echo "Opção inexistente. Verifique se você digitou corretamente."
sleep 2
./CliPDVs/outros/sobre.sh;
esac
#© 2020 Nilsonlinux
