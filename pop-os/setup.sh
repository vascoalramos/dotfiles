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

printf "\n${WHITE}==============================================================================
SETTING UP YOUR COMPUTER!
==============================================================================${NORMAL}\n"

bash scripts/install.sh
bash scripts/theme.sh

# Follow the instructions on GitHub to generate a new SSH key and add it to your Github account.
printf "\n${WHITE}==============================================================================
${GREEN}All set!
${WHITE}Make sure to follow the instructions on GitHub to:
- generate new SSH and GPG keys
- add the keys to your GitHub account
==============================================================================${NORMAL}\n"

xdg-open "https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/#generating-a-new-ssh-key" >/dev/null
xdg-open "https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account" >/dev/null
xdg-open "https://help.github.com/en/github/authenticating-to-github/managing-commit-signature-verification" >/dev/null
