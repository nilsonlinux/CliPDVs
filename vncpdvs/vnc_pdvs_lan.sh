#!/bin/bash
echo "################################################################"
echo -e "Terminal [102] - Lanchonete - IP -\033[0;34m 192.168.3.131 \033[0m"
vncviewer 192.168.3.131
sleep 2
./CliPDVs/vncpdvs.sh;
