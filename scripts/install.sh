#!/bin/bash

# exit when any command fails
set -e

RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
WHITE="\033[37m"
NORMAL="\033[0;39m"

printf "${BLUE}Installing basic tools and software...${NORMAL}\n\n"

# Update package repos
sudo apt update

# Install basic tools
sudo apt install vim git tree python3 default-jre default-jdk wget curl snapd python3-pip htop

# Install docker
sudo apt-get purge docker lxc-docker docker-engine docker.io
sudo apt-get install apt-transport-https ca-certificates gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt install docker-ce docker-ce-cli containerd.io
sudo groupadd docker && sudo usermod -aG docker $USER

# Install docker-compose
sudo pip install docker-compose

# Install zsh
sudo apt install zsh && chsh -s $(which zsh)
sh -c $(curl -fsSL "https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh")
zsh_custom="~/.oh-my-zsh/custom"
git clone https://github.com/zsh-users/zsh-autosuggestions $zsh_custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting $zsh_custom/plugins/zsh-syntax-highlighting
cp ./zsh/aliases.sh $zsh_custom
cp ./zsh/.zshrc ~/.zshrc && source ~/.zshrc

# Install pipenv
sudo pip install pipenv

# Install maven
sudo apt-get -y install maven

# Install nodejs and npm
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install chromium browser
sudo apt install -y chromium-browser

# Install firefox browser
sudo apt install firefox

# Install snap applicactions
sudo snap install code --classic
sudo snap install intellij-idea-ultimate --classic
sudo snap install postman
sudo snap install pycharm-professional --classic
sudo snap install slack --classic
sudo snap install spotify
sudo snap install vlc

# Final update and clean of complete system
sudo apt upgrade && sudo apt autoremove
