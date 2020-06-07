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
eval "sudo apt updat"

# Install basic tools
eval "sudo apt install vim git tree python python3 default-jre default-jdk wget curl snapd python-pip python3-pip htop"

# Install docker
eval "sudo apt-get purge docker lxc-docker docker-engine docker.io"
eval "sudo apt-get install apt-transport-https ca-certificates gnupg-agent software-properties-common"
eval "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -"
eval "sudo add-apt-repository 'deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable'"
eval "sudo apt install docker-ce docker-ce-cli containerd.io"
eval "sudo groupadd docker && sudo usermod -aG docker $USER"

# Install docker-compose
eval "sudo pip install docker-compose"

# Install zsh
eval "sudo apt install zsh && chsh -s $(which zsh)"
eval "sh -c $(curl -fsSL 'https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh')"
zsh_custom="~/.oh-my-zsh/custom"
eval "git clone https://github.com/zsh-users/zsh-autosuggestions $zsh_custom/plugins/zsh-autosuggestions"
eval "git clone https://github.com/zsh-users/zsh-syntax-highlighting $zsh_custom/plugins/zsh-syntax-highlighting"
eval "cp ./zsh/aliases.sh $zsh_custom"
eval "cp ./zsh/.zshrc ~/.zshrc && source ~/.zshrc"

# Install brave browser
eval "curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -"
eval "echo 'deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main' | sudo tee /etc/apt/sources.list.d/brave-browser-release.list"
eval "sudo apt update && sudo apt install brave-browser"

# Install chromium browser
eval "sudo apt install -y chromium-browser"

# Install firefox browser
eval "sudo apt install firefox"

# Install snap applicactions
eval "sudo snap install code --classic"
eval "sudo snap install intellij-idea-ultimate --classic"
eval "sudo snap install mailspring"
eval "sudo snap install postman"
eval "sudo snap install pycharm-professional --classic"
eval "sudo snap install slack --classic"
eval "sudo snap install spotify"
eval "sudo snap install vlc"

# Final update and clean of complete system
eval "sudo apt upgrade && sudo apt autoremove"
