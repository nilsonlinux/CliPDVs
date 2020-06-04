#!/bin/bash
echo "################################################################"
echo -e "Terminal [109] - Caixa 08 - IP -\033[0;34m 192.168.3.104 \033[0m"
vncviewer 192.168.3.104
sleep 2
./CliPDVs/vncpdvs.sh;
