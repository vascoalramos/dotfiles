export PATH=/opt/homebrew/bin:$PATH
export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH

# Path to your oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME=""

# Set history timestamp in logs
HIST_STAMPS="%d/%m/%Y %T"

# Plugins to be loaded in the environment
plugins=(git docker docker-compose aws kubectl asdf fzf)

source $ZSH/oh-my-zsh.sh
source /opt/homebrew/opt/spaceship/spaceship.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export EDITOR='nvim'

# Path to your java installation
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

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

## GNU tools
# sed
PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
# make
PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"

# Created by `pipx` on 2023-10-04 12:26:16
export PATH="$PATH:/Users/vasco.ramos/.local/bin"

# Miscelaneous
alias vim="nvim"
alias tf="terraform"

# Kubernetes
# context & namespace
alias kctx="kubectx"
alias kns="kubens"
## nodes
alias kgn="k get nodes"
alias kdn="k describe node"
alias ktn="k top nodes"
alias ktp="k top pods"
# get/describe objects without default alias
alias kgsac="k get sa"
alias kgsaca="k get sa -A"
alias kgpv="k get pv"
alias kdpv="k describe pv"
alias kgsts="k get sts"
# get objects with yaml output
alias kgpyaml="kgp -o yaml"
alias kgsyaml="kgs -o yaml"
alias kgiyaml="kgi -o yaml"
alias kgcmyaml="kgcm -o yaml"
alias kgsecyaml="kgsec -o yaml"
alias kgsacyaml="kgsac -o yaml"
alias kgdyaml="kgd -o yaml"
alias kgrsyaml="kgrs -o yaml"
alias kgpvcyaml="kgpvc -o yaml"
alias kgssyaml="kgss -o yaml"
alias kgcjyaml="kgcj -o yaml"
alias kgjyaml="kgj -o yaml"
# restart workloads
alias krr="k rollout restart"
alias krrd="k rollout restart deployment"
alias krrds="k rollout restart daemonset"
alias krrsts="k rollout restart statefulset"
alias krrrs="k rollout restart replicaset"
# delete sts
alias kdelsts="k delete sts"

# Work
export PATH="$PATH:/Users/vasco.ramos/Work"
alias awsk="source /Users/vasco.ramos/Work/awsk"
alias awsume="source awsume"

# FLux CD
alias xp-flux="flux reconcile source git infrastructure && flux reconcile kustomization crossplane && flux reconcile kustomization crossplane-providers && flux reconcile kustomization crossplane-provider-configs && flux reconcile kustomization crossplane-composites"

# Homebrew
export PATH="/opt/homebrew/sbin:$PATH"
alias brew-upgrade="brew upgrade --greedy"
