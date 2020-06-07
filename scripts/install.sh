#!/bin/bash

RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
WHITE="\033[37m"
NORMAL="\033[0;39m"

printf "${BLUE}Installing basic tools and software...${NORMAL}\n\n"

# Update package repos
eval "sudo apt update"

# Install basic tools
eval "sudo apt install vim git tree python python3 default-jre default-jdk wget curl snapd python-pip python3-pip"

# Install docker
eval "sudo apt-get purge docker lxc-docker docker-engine docker.io"
eval "sudo apt-get install apt-transport-https ca-certificates gnupg-agent software-properties-common"
eval "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -"
eval "sudo add-apt-repository 'deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable'"
eval "sudo apt-get install docker-ce docker-ce-cli containerd.io"
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

# Install snap applicactions
eval "sudo snap install code --classic"
eval "sudo snap install intellij-idea-ultimate --classic"
eval "sudo snap install mailspring"
eval "sudo snap install pycharm-professional --classic"
eval "sudo snap install slack --classic"
eval "sudo snap install spotify"
eval "sudo snap install vlc"
