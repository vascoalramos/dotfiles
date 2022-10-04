export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH

# Path to your oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME=""

# Set history timestamp in logs
HIST_STAMPS="%d/%m/%Y %T"

# Plugins to be loaded in the environment
plugins=(git docker docker-compose aws)

source $ZSH/oh-my-zsh.sh
source /usr/local/opt/spaceship/spaceship.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export EDITOR='nvim'

# Path to your java installation
export PATH="/usr/local/opt/openjdk/bin:$PATH"

alias vim="nvim"
alias k="kubectl"
alias tf="terraform"
