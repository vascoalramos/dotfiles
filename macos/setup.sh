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
ln -s ~/dotfiles/macos/finicky/.finicky.js ~/.finicky.js

## Symlink .gitconfig
ln -Fs ~/Projects/dotfiles/git/.gitconfig ~/.gitconfig

## Symlink .digrc
ln -Fs ~/Projects/dotfiles/macos/.digrc ~/.digrc

## Activate Oh My Zsh custom configuration
source ~/.zshrc
