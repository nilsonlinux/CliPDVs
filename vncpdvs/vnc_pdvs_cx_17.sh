#!/bin/bash
echo "################################################################"
echo -e "Terminal [118] - Caixa 17 - IP -\033[0;34m 192.168.3.113 \033[0m"
vncviewer 192.168.3.113
sleep 2
./CliPDVs/vncpdvs.sh;
