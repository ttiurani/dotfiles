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

# Aliases

alias cleanreboot='docker rmi $(docker images --quiet --filter "dangling=true") ; sudo systemctl reboot'
alias nvimem='nvim -S ~/.local/share/nvim/sessions/em.vim -c "Obsess ~/.local/share/nvim/sessions/em.vim"'
alias nvimfa='nvim -S ~/.local/share/nvim/sessions/fa.vim -c "Obsess ~/.local/share/nvim/sessions/fa.vim"'
if [[ $platform == 'linux' ]]; then
   alias swaywm='export XKB_DEFAULT_LAYOUT=fi && sway -d 2> ~/sway.log'
fi

# Exports

if [[ $platform == 'linux' ]]; then
  export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
elif [[ $platform == 'osx' ]]; then
  export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
fi
export MAVEN_OPTS="-Xms1024m -Xmx4096m -Xss8M"
export NODE_PATH="/usr/lib/node_modules"
export ANDROID_HOME="/opt/android-sdk"
export CLOUDSDK_PYTHON="/usr/bin/python2"
export DOCKER_HOST=unix:///var/run/docker.sock

# Google Cloud SDK

if [ -f /home/ttiurani/google-cloud-sdk/path.zsh.inc ]; then
  source '/home/ttiurani/google-cloud-sdk/path.zsh.inc'
fi
if [ -f /home/ttiurani/google-cloud-sdk/completion.zsh.inc ]; then
  source '/home/ttiurani/google-cloud-sdk/completion.zsh.inc'
fi

# AG and FZF

export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
