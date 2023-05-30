export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH

# Path to your oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME=""

# Set history timestamp in logs
HIST_STAMPS="%d/%m/%Y %T"

# Plugins to be loaded in the environment
plugins=(git docker docker-compose aws kubectl)

source $ZSH/oh-my-zsh.sh
source /usr/local/opt/spaceship/spaceship.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export EDITOR='nvim'

# Path to your java installation
export PATH="/usr/local/opt/openjdk/bin:$PATH"

alias vim="nvim"
alias tf="terraform"

# Podman <-> Docker
alias docker="podman"

# Kubernetes
alias kctx="kubectx"
alias kns="kubens"
alias kgn="k get nodes"
alias ktn="k top nodes"
alias ktp="k top pods"
alias kgpyaml="kgp -o yaml"
alias kgsyaml="kgs -o yaml"
alias kgiyaml="kgi -o yaml"
alias kgcmyaml="kgcm -o yaml"
alias kgsecyaml="kgsec -o yaml"
alias kgdyaml="kgd -o yaml"
alias kgrsyaml="kgrs -o yaml"
alias kgpvcyaml="kgpvc -o yaml"
alias kgssyaml="kgss -o yaml"
alias kgcjyaml="kgcj -o yaml"
alias kgjyaml="kgj -o yaml"

# Spaceship prompt Kubernetes
export SPACESHIP_KUBECTL_SHOW="true"
export SPACESHIP_KUBECTL_VERSION_SHOW="false"
export SPACESHIP_KUBECTL_CONTEXT_SHOW="true"
export SPACESHIP_KUBECTL_CONTEXT_SHOW_NAMESPACE="true"
export SPACESHIP_KUBECTL_SYMBOL="☸️  "

# Go
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
