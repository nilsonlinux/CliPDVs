#!/bin/bash
echo "################################################################"
echo -e "Terminal [102] - Lanchonete - IP -\033[0;34m 192.168.3.131 \033[0m"
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.131 "halt";
echo "PDV Desligado...";
sleep 2
./CliPDVs/desligar_pdvs.sh;
