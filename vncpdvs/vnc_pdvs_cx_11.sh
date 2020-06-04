#!/bin/bash
echo "################################################################"
echo "Terminal [112] - Caixa 11 - IP -\033[0;34m 192.168.3.107 \033[0m"
vncviewer 192.168.3.107
sleep 2
./CliPDVs/vncpdvs.sh;
