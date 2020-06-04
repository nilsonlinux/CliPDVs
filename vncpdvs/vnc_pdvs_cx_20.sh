#!/bin/bash
echo "################################################################"
echo -e "Terminal [121] - Caixa 20 - IP -\033[0;34m 192.168.3.116 \033[0m"
vncviewer 192.168.3.116
sleep 2
./CliPDVs/vncpdvs.sh;
