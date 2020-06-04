#!/bin/bash
echo "################################################################"
echo -e "Terminal [115] - Caixa 14 - IP -\033[0;34m 192.168.3.110 \033[0m"
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.110 "it-update-imagens.sh";
echo "Imagem atualizada... Por favor verifique.";
sleep 2
./CliPDVs/atualizar_imagem.sh;
