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
ZSH_THEME="proze"
plugins=(git mvn tmux)

# User configuration

source $ZSH/oh-my-zsh.sh

# Set vi-mode to use "jk"
bindkey "jk" vi-cmd-mode

# Fix the annoying "no matches found"
unsetopt nomatch

# Aliases

alias cleanreboot='docker rmi $(docker images --quiet --filter "dangling=true") ; sudo systemctl reboot'
alias nvimem='nvim -S ~/.local/share/nvim/sessions/em.vim -c "Obsess ~/.local/share/nvim/sessions/em.vim"'
alias nvimfa='nvim -S ~/.local/share/nvim/sessions/fa.vim -c "Obsess ~/.local/share/nvim/sessions/fa.vim"'
alias nvimel='nvim -S ~/.local/share/nvim/sessions/el.vim -c "Obsess ~/.local/share/nvim/sessions/el.vim"'
if [[ $platform == 'linux' ]]; then
   alias swaywm='export XKB_DEFAULT_LAYOUT=fi && sway -d 2> ~/sway.log'
fi

# Exports

export MAVEN_OPTS="-Xms1024m -Xmx4096m -Xss8M"
export ANDROID_HOME="/opt/android-sdk"
export DOCKER_HOST=unix:///var/run/docker.sock

if [[ $platform == 'linux' ]]; then
  export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
  export NODE_PATH="/usr/lib/node_modules"
  export CLOUDSDK_PYTHON=$(which python2)
elif [[ $platform == 'osx' ]]; then
  export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
  export NODE_PATH="/usr/local/lib/node_modules"
fi

export PATH=$PATH:$HOME/bin

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
  kubectl logs -f $(kubectl get pods | grep $1 | head -1 | grep -Eo '^[^ ]+')
}

# AG and FZF

export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
