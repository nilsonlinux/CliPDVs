#!/bin/bash
echo "##########################################################
TODOS OS TERMINAIS SENDO REINICIADOS...
################################################################";
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.191 "reboot";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.122 "reboot";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.124 "reboot";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.123 "reboot";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.25 "reboot";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.102 "reboot";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.103 "reboot";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.104 "reboot";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.139 "reboot";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.105 "reboot";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.107 "reboot";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.120 "reboot";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.106 "reboot";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.110 "reboot";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.11 "reboot";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.112 "reboot";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.113 "reboot";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.114 "reboot";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.115 "reboot";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.116 "reboot";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.119 "reboot";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.55 "reboot";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.117 "reboot";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.225 "reboot";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.59 "reboot";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.129 "reboot";
sleep 1
echo "Todos os terminais foram reiniciados.";
sleep 3
./CliPDVs/reiniciar_pdvs.sh;