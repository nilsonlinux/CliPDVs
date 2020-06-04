#!/bin/bash
echo "################################################################"
echo -e "Terminal [111] - Caixa 10 - IP -\033[0;34m 192.168.3.105 \033[0m"
vncviewer 192.168.3.105
sleep 2
./CliPDVs/vncpdvs.sh;
