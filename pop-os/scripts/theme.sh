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

sudo apt update && sudo apt install fonts-powerline
mkdir "Menlo for Powerline"
curl -#L https://github.com/abertsch/Menlo-for-Powerline/tarball/master | tar -xzv --strip-components 1 --exclude={README.md} -C "Menlo for Powerline"
sudo mv ./"Menlo for Powerline" /usr/share/fonts/
fc-cache -vf /usr/share/fonts/
rm -rf ./"Menlo for Powerline"

# Setup terminal colors
dconf load /org/gnome/terminal/ <./gterminal_theme
