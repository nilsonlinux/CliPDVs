#!/bin/bash
echo "################################################################"
echo -e "Terminal [107] - Caixa 06 - IP -\033[0;34m 192.168.3.102 \033[0m"
vncviewer 192.168.3.102
sleep 2
./CliPDVs/vncpdvs.sh;
