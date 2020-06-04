#!/bin/bash
echo "################################################################"
echo -e "Terminal [106] - Caixa 05 - IP -\033[0;34m 192.168.3.25 \033[0m"
vncviewer 192.168.3.25
sleep 2
./CliPDVs/vncpdvs.sh;
