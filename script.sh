#!/bin/bash

resp="s"

mkdir ~/projetos
cd ~/projetos

echo "########## script do ambiente px4 ##############"
echo "Equipe carcará drones. UVA/RJ"
sleep 1
echo  .
sleep 1
echo  .
sleep 1
echo  .

touch log.txt
echo "inicia log.............." >> log.txt
echo "atualizando repositorios..." >> log.txt

apt update

echo "##################"
echo "##################"
echo "##################"

echo "atualizando pacotes..."

apt -y upgrade

echo "instalando pacotes essenciais..." >> ./log.txt

apt -y install htop tree git net-tools rsync tcpdump netcat locate sudo terminator openssh-client openssh-server

echo "##################"
echo "##################"
echo "##################"

echo "clonando repositorio px4..." >> ./log.txt
git clone https://github.com/PX4/Firmware.git
echo "executando script do repo...(vai demorar uns minutos...)" >> ./log.txt
chmod a+x ~/projetos/Firmware/Tools/setup/ubuntu.sh
~/projetos/Firmware/Tools/setup/ubuntu.sh
echo "########################################"
echo "instalacao finalizada! CarcaDrones!" >> ./log.txt

