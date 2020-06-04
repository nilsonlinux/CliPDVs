#!/bin/bash
echo "################################################################"
echo -e "Terminal [124] - Caixa 23 - IP -\033[0;34m 192.168.3.117 \033[0m"
vncviewer 192.168.3.117
sleep 2
./CliPDVs/vncpdvs.sh;
