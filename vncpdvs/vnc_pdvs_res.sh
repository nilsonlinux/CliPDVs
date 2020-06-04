#!/bin/bash
echo "################################################################"
echo -e "Terminal [127] - PDV Reserva - IP -\033[0;34m 192.168.3.138 \033[0m"
vncviewer 192.168.3.138
sleep 2
./CliPDVs/vncpdvs.sh;
