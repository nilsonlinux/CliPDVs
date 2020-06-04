#!/bin/bash
echo "################################################################"
echo -e "Terminal [103] - Caixa rápido 2 - IP -\033[0;34m 192.168.3.122 \033[0m"
vncviewer 192.168.3.122
sleep 2
./CliPDVs/vncpdvs.sh;
