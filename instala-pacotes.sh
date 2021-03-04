#!/bin/bash

#SCRIPT DE PÓS INSTALAÇÃO PARA DISTROS UBUNTU

echo ""
echo "atualizando o sistema..."
echo ""
sudo apt update -y
sudo apt upgrade -y
sudo apt dist-upgrade -y

echo ""
echo "instalando o Vivaldi"
echo ""
sudo sh -c 'echo "deb http://repo.vivaldi.com/stable/deb/ stable main" >> /etc/apt/sources.list'
wget -q -O - http://repo.vivaldi.com/stable/linux_signing_key.pub | sudo apt-key add -
sudo apt update
echo ""
sudo apt install vivaldi-stable

echo ""
echo "instalando neofetch..."
echo ""
sudo apt install neofetch -y

echo ""
echo "instalando Discord..."
echo ""   
wget -cO discord.deb https://discordapp.com/api/download?platform=linux&format=deb
sudo apt install -y ./discord.deb

echo ""
echo "ativando suporte para Flatpak e Snap..."
echo ""
sudo apt install flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo apt install snapd -y

echo ""
echo "instalando Telegram..."
echo ""
flatpak install flathub org.telegram.desktop

echo ""
echo "instalando gráficos..."
sudo snap install pixelorama

echo ""
echo "instalando mídias..."
echo ""
sudo apt install ffmpeg -y
sudo apt install vlc -y
wget -cO stremio.deb https://dl.strem.io/shell-linux/v4.4.116/stremio_4.4.116-1_amd64.deb
sudo apt install -y ./stremio.deb

echo ""
echo "instalando Lutris..."
echo ""
wget -cO lutris.deb https://download.opensuse.org/repositories/home:/strycore/Debian_10/amdu64/lutris_0.5.7.1_amd64.deb
sudo apt install -y ./lutris.deb

echo ""
echo "instalando Steam..."
echo ""
sudo apt install steam -y

echo ""
echo "instalando Microsoft Fonts..."
echo ""
sudo apt install ttf-mscorefonts-installer -y

echo ""
echo "instalando qBittorrent..."
echo ""
sudo apt install qbittorrent -y

echo ""
echo "instalando java8 e 11..."
echo ""
sudo apt install openjdk-8-jdk openjdk-11-jdk -y

echo ""
echo "instalando o oambiente de desenvolvimento..."
echo ""
sudo snap install code --classic
sudo apt install vim -y
sudo apt install nano -y
sudo apt install git -y
sudo apt install nodejs -y
sudo apt install npm -y
sudo apt install python3 -y
sudo apt install python3-pip -y
sudo apt install python3-django -y

echo ""
echo "configurando o GIT..."
git config --global user.name "d4vzz"
git config --global user.email "dvzzbatista@gmail.com"

echo ""
echo "instalando Synaptic..."
echo ""
sudo apt install synaptic -y

echo ""
echo "instalando descompactadores..."
sudo apt install unzip -y
sudo apt install gzip -y
sudo apt install p7zip-full -y
sudo apt install p7zip-rar -y
sudo apt install unrar -y
sudo apt install unrar-free -y

echo ""
echo "adicionando repositório para mesa driver Kisak..."
echo ""
sudo apt-add-repository ppa:kisak/kisak-mesa -y
sudo apt update && sudo apt upgrade

echo ""
echo "removendo programas..."
echo ""
sudo apt remove rhythmbox thunderbird transmission pidgin hexchat cheese -y

echo ""
echo "limpeza e remoção de pacotes..."
echo ""
sudo apt autoremove -y
sudo apt autoclean -y

echo ""
echo "tudo nos trinques"
echo ""
