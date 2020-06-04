#!/bin/bash
echo "################################################################"
echo -e "Terminal [126] - Caixa 21 - IP -\033[0;34m 192.168.3.225 \033[0m"
vncviewer 192.168.3.225
sleep 2
./CliPDVs/vncpdvs.sh;
