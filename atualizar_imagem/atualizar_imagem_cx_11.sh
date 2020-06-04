#!/bin/bash
echo "################################################################"
echo "Terminal [112] - Caixa 11 - IP -\033[0;34m 192.168.3.107 \033[0m"
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.107 "it-update-imagens.sh";
echo "Imagem atualizada... Por favor verifique.";
sleep 2
./CliPDVs/atualizar_imagem.sh;
