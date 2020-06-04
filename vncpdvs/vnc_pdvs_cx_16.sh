#!/bin/bash
echo "################################################################"
echo -e "Terminal [117] - Caixa 16 - IP -\033[0;34m 192.168.3.112 \033[0m"
vncviewer 192.168.3.112
sleep 2
./CliPDVs/vncpdvs.sh;
