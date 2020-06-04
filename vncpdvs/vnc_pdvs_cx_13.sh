#!/bin/bash
echo "################################################################"
echo -e "Terminal [114] - Caixa 13 - IP -\033[0;34m 192.168.3.106 \033[0m"
vncviewer 192.168.3.106
sleep 2
./CliPDVs/vncpdvs.sh;
