#!/bin/bash
echo "################################################################"
echo -e "Terminal [113] - Caixa 12 - IP -\033[0;34m 192.168.3.120 \033[0m"
vncviewer 192.168.3.120
sleep 2
./CliPDVs/vncpdvs.sh;
