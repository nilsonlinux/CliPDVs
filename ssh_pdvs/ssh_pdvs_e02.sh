#!/bin/bash
echo "################################################################"
echo -e "Terminal [126] - Caixa 21 - IP -\033[0;34m 192.168.3.225 \033[0m"
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.225;
sleep 2
./CliPDVs/ssh_pdvs.sh;
