# OS detection

platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
  platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
  platform='osx'
fi

# Path to your oh-my-zsh installation.

export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
plugins=(git mvn tmux vi-mode)

# User configuration

source $ZSH/oh-my-zsh.sh

# https://github.com/robbyrussell/oh-my-zsh/issues/1720
# because of this issue, vi-mode requires that up and down arrow are redefined after plugin
# source from lib/key-bindings.zsh:

# start typing + [Up-Arrow] - fuzzy find history forward
if [[ "${terminfo[kcuu1]}" != "" ]]; then
  autoload -U up-line-or-beginning-search
  zle -N up-line-or-beginning-search
  bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
fi
# start typing + [Down-Arrow] - fuzzy find history backward
if [[ "${terminfo[kcud1]}" != "" ]]; then
  autoload -U down-line-or-beginning-search
  zle -N down-line-or-beginning-search
  bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
fi

# Set vi-mode to use "jk"
bindkey "jk" vi-cmd-mode

# Fix the annoying "no matches found"
unsetopt nomatch

# Aliases

alias cleanreboot='docker rmi $(docker images --quiet --filter "dangling=true") ; sudo systemctl reboot'
alias nvimem='nvim -S ~/.local/share/nvim/sessions/em.vim -c "Obsess ~/.local/share/nvim/sessions/em.vim"'
alias nvimfa='nvim -S ~/.local/share/nvim/sessions/fa.vim -c "Obsess ~/.local/share/nvim/sessions/fa.vim"'
alias nvimnt='nvim -S ~/.local/share/nvim/sessions/nt.vim -c "Obsess ~/.local/share/nvim/sessions/nt.vim"'
if [[ $platform == 'linux' ]]; then
   alias swaywm='export XKB_DEFAULT_LAYOUT=fi && sway -d 2> ~/sway.log'
fi

# Exports

export MAVEN_OPTS="-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xms1024m -Xmx4096m -Xss8M"
export DOCKER_HOST=unix:///var/run/docker.sock

if [[ $platform == 'linux' ]]; then
  export ANDROID_HOME="/opt/android-sdk"
  export NODE_PATH="/usr/lib/node_modules"
  export CLOUDSDK_PYTHON=$(which python2)
elif [[ $platform == 'osx' ]]; then
  export ANDROID_HOME="$HOME/Library/Android/sdk"
  export NODE_PATH="/usr/local/lib/node_modules"
  export PATH=$PATH:/Applications/MySQLWorkbench.app/Contents/MacOS:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:./node_modules/bin
fi

export PATH=$PATH:$HOME/bin:$HOME/.jenv/bin:$HOME/.cargo/bin

# Google Cloud SDK

if [ -f $HOME/google-cloud-sdk/path.zsh.inc ]; then
  source $HOME/google-cloud-sdk/path.zsh.inc
fi
if [ -f $HOME/google-cloud-sdk/completion.zsh.inc ]; then
  source $HOME/google-cloud-sdk/completion.zsh.inc
fi

# Kubernetes

source <(kubectl completion zsh)
# Kubernetes First (matching) Pod Log
function kfpl() {
  if [ -z "$2" ]; then
    kubectl logs -f $(kubectl get pods | grep $1 | head -1 | grep -Eo '^[^ ]+')
  else
    kubectl logs -f $(kubectl get pods | grep $1 | head -1 | grep -Eo '^[^ ]+') -c $2
  fi
}

alias kuc='kubectl config use-context'
alias kgc='kubectl config get-contexts'
alias kgp='kubectl get pods'
alias kgd='kubectl get deployments'

# OC
if type "$oc" > /dev/null; then
  source <(oc completion zsh)
fi

# Git

function gtg() {
  git tag --sort=v:refname | grep "^$1"
}

# AG and FZF

export FZF_DEFAULT_COMMAND='rg --files --hidden -g "!.git" '
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# NVM

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# JENV

eval "$(jenv init -)"

# RG

export RIPGREP_CONFIG_PATH=${HOME}/.ripgreprc

# Hide zsh prompt
prompt_context(){}
