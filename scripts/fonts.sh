#!/bin/bash

RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
WHITE="\033[37m"
NORMAL="\033[0;39m"

# Install fonts
printf "${GREEN}Installing fonts...${NORMAL}\n\n"
eval "git clone https://github.com/abertsch/Menlo-for-Powerline.git menlo"
eval "sudo mv ./menlo/*.ttf /usr/share/fonts"
eval "rm -rf ./menlo"
