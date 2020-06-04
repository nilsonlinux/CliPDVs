#!/bin/bash
echo "################################################################"
echo -e "Terminal [120] - Caixa 19 - IP -\033[0;34m 192.168.3.115 \033[0m"
vncviewer 192.168.3.115
sleep 2
./CliPDVs/vncpdvs.sh;
