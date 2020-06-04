#!/bin/bash
echo "################################################################"
echo -e "Terminal [123] - Caixa rápido 01 - IP -\033[0;34m 192.168.3.59 \033[0m"
vncviewer 192.168.3.59
sleep 2
./CliPDVs/vncpdvs.sh;
