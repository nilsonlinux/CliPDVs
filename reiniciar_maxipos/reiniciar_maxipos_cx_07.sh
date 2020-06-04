#!/bin/bash
echo "################################################################"
echo -e "Terminal [108] - Caixa 07 - IP -\033[0;34m 192.168.3.103 \033[0m"
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.103 "it-restart-application.sh";
echo "MaxiPOS reiniciado...";
sleep 2
./CliPDVs/reiniciar_maxipos.sh;