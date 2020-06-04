#!/bin/bash
echo "################################################################"
echo -e "Terminal [118] - Caixa 17 - IP -\033[0;34m 192.168.3.113 \033[0m"
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.113 "it-update-pdv.sh";
echo "Terminal atualizado... Por favor verifique.";
sleep 2
./CliPDVs/atualizar_pdvs.sh;