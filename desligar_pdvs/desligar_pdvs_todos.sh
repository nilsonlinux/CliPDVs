#!/bin/bash
echo "##########################################################
Desligando todos os terminais.
################################################################";
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.59 "halt";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.122 "halt";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.123 "halt";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.124 "halt";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.25 "halt";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.102 "halt";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.103 "halt";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.104 "halt";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.139 "halt";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.105 "halt";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.107 "halt";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.120 "halt";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.106 "halt";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.110 "halt";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.11 "halt";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.112 "halt";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.113 "halt";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.114 "halt";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.115 "halt";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.116 "halt";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.119 "halt";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.55 "halt";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.117 "halt";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.225 "halt";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.131 "halt";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.129 "halt";
sleep 1
echo "Todos os terminais desligados";
sleep 3
./CliPDVs/desligar_pdvs.sh;
