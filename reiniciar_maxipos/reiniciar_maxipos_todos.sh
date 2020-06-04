#!/bin/bash
echo "##########################################################
MaxiPOS sendo reiniciado de todos os terminais.
################################################################";
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.131 "it-restart-application.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.122 "it-restart-application.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.123 "it-restart-application.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.124 "it-restart-application.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.25 "it-restart-application.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.102 "it-restart-application.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.103 "it-restart-application.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.104 "it-restart-application.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.139 "it-restart-application.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.105 "it-restart-application.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.107 "it-restart-application.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.120 "it-restart-application.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.106 "it-restart-application.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.110 "it-restart-application.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.11 "it-restart-application.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.112 "it-restart-application.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.113 "it-restart-application.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.114 "it-restart-application.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.115 "it-restart-application.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.116 "it-restart-application.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.119 "it-restart-application.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.55 "it-restart-application.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.117 "it-restart-application.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.225 "it-restart-application.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.59 "it-restart-application.sh";
sleep 1
sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.129 "it-restart-application.sh";
sleep 1
echo "MaxiPOS reiniciado de todos os terminais";
sleep 3
./CliPDVs/reiniciar_maxipos.sh;