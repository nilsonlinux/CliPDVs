#!/bin/bash
echo "################################################################"
echo -e "Terminal [119] - Caixa 18 - IP -\033[0;34m 192.168.3.114 \033[0m"
vncviewer 192.168.3.114
sleep 2
./CliPDVs/vncpdvs.sh;
