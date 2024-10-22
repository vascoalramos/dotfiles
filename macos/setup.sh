#!/bin/zsh

## Install Homebrew
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## Install brew bundle command
brew tap Homebrew/bundle

## Install apps, packages and dependencies
brew bundle

## Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## Symlink .zshrc
ln -Fs ~/Projects/dotfiles/macos/.zshrc ~/.zshrc

## Symlink .finicky.js
ln -s ~/Projects/dotfiles/macos/.finicky.js ~/.finicky.js

## Symlink .gitconfig
ln -Fs ~/Projects/dotfiles/git/.gitconfig ~/.gitconfig
ln -Fs ~/Projects/dotfiles/git/.gitconfig_work ~/.gitconfig_work

## Symlink .digrc
ln -Fs ~/Projects/dotfiles/macos/.digrc ~/.digrc

## Symlink .terraformrc
cp ~/Projects/dotfiles/macos/.terraformrc ~/.terraformrc

## Symlink java
sudo ln -sfn $HOMEBREW_PREFIX/opt/homebrew/opt/openjdk /Library/Java/JavaVirtualMachines

## Activate Oh My Zsh custom configuration
source ~/.zshrc
