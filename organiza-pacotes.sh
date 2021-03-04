#!/usr/bin/env bash

#SCRIPT DE LIMPEZA E ATUALIZAÇÃO DE PACOTES PARA UBUNTU

echo ""
echo "procurando por atualizações e atualizando o SO..."
sudo apt-get update && sudo apt-get upgrade -y

echo ""
echo "limpando a lixeira..."
sudo rm -rf /home/$USER/.local/share/Trash/files/*

echo ""
echo "limpando a pasta TMP..."
sudo rm -rf /var/tmp/*


echo ""
echo "limpando caches..."
sudo apt-get clean -y

echo ""
echo "removendo pacotes sem uso..."
sudo apt-get autoremove -y

echo ""
echo "removendo pacotes duplicados..."
sudo apt-get autoclean -y

echo ""
echo "reparando pacotes quebrados..."
sudo dpkg --configure -a

echo ""
echo "tudo nos trinques"
