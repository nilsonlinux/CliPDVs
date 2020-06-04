#!/bin/bash
echo "################################################################"
echo -e "Terminal [108] - Caixa 07 - IP -\033[0;34m 192.168.3.103 \033[0m"
vncviewer 192.168.3.103
sleep 2
./CliPDVs/vncpdvs.sh;
