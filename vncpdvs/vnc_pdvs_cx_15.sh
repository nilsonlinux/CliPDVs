#!/bin/bash
echo "################################################################"
echo -e "Terminal [116] - Caixa 15 - IP -\033[0;34m 192.168.3.11 \033[0m"
vncviewer 192.168.3.11
sleep 2
./CliPDVs/vncpdvs.sh;
