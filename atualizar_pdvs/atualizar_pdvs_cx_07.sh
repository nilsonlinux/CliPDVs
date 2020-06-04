#!/bin/bash
echo "################################################################"
echo -e "Terminal [108] - Caixa 07 - IP -\033[0;34m 192.168.3.103 \033[0m"
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.103 "it-update-pdv.sh";
echo "Terminal atualizado... Por favor verifique.";
sleep 2
./CliPDVs/atualizar_pdvs.sh;