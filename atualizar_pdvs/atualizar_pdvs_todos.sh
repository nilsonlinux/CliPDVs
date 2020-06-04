#!/bin/bash
echo "##########################################################
TODOS OS TERMINAIS SENDO ATUALIZADOS...
################################################################";
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.131 "it-update-pdv.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.122 "it-update-pdv.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.124 "it-update-pdv.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.123 "it-update-pdv.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.25 "it-update-pdv.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.102 "it-update-pdv.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.103 "it-update-pdv.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.104 "it-update-pdv.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.139 "it-update-pdv.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.105 "it-update-pdv.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.107 "it-update-pdv.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.120 "it-update-pdv.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.106 "it-update-pdv.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.110 "it-update-pdv.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.11 "it-update-pdv.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.112 "it-update-pdv.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.113 "it-update-pdv.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.114 "it-update-pdv.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.115 "it-update-pdv.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.116 "it-update-pdv.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.119 "it-update-pdv.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.55 "it-update-pdv.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.117 "it-update-pdv.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.225 "it-update-pdv.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.59 "it-update-pdv.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.129 "it-update-pdv.sh";
sleep 1
echo "TODOS OS TERMINAIS ATUALIZADOS COM SUCESSO";
sleep 3
./CliPDVs/atualizar_pdvs.sh;