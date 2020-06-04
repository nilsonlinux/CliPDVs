#!/bin/bash
echo "################################################################"
echo -e "Terminal [104] - Caixa rápido 4 - IP -\033[0;34m 192.168.3.123 \033[0m"
vncviewer 192.168.3.123
sleep 2
./CliPDVs/vncpdvs.sh;
