#!/bin/bash
echo "################################################################"
echo -e "Terminal [107] - Caixa 06 - IP -\033[0;34m 192.168.3.102 \033[0m"
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.102 "it-restart-application.sh";
echo "MaxiPOS reiniciado...";
sleep 2
./CliPDVs/reiniciar_maxipos.sh;