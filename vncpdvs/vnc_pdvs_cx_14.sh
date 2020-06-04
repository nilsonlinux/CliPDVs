#!/bin/bash
echo "################################################################"
echo -e "Terminal [115] - Caixa 14 - IP -\033[0;34m 192.168.3.110 \033[0m"
vncviewer 192.168.3.110
sleep 2
./CliPDVs/vncpdvs.sh;
