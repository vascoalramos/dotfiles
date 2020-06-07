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

# Install fonts
printf "${GREEN}Installing fonts...${NORMAL}\n\n"
eval "sudo apt update && sudo apt install fonts-powerline"
eval "mkdir 'Menlo for Powerline'"
eval "curl -#L https://github.com/abertsch/Menlo-for-Powerline/tarball/master | tar -xzv --strip-components 1 --exclude={README.md} -C 'Menlo for Powerline'"
eval "sudo mv ./'Menlo for Powerline' /usr/share/fonts/"
eval "fc-cache -vf  /usr/share/fonts/"
eval "rm -rf ./'Menlo for Powerline'"
