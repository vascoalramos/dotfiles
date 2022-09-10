export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME=""

# Set history timestamp in logs
HIST_STAMPS="%d/%m/%Y %T"

# Plugins to be loaded in the environment
plugins=(git docker docker-compose)

source $ZSH/oh-my-zsh.sh
source /usr/local/opt/spaceship/spaceship.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export EDITOR='nvim'

alias vim="nvim"
