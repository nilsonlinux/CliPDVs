#!/bin/bash
echo "################################################################"
echo -e "Terminal [110] - Caixa 09 - IP -\033[0;34m 192.168.3.139 \033[0m"
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.139 "it-update-pdv.sh";
echo "Terminal atualizado... Por favor verifique.";
sleep 2
./CliPDVs/atualizar_pdvs.sh;