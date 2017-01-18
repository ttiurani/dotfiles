# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="proze"
plugins=(git mvn tmux)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/ttiurani/.cargo/bin"
source $ZSH/oh-my-zsh.sh

# Aliases

alias flu="fleetctl list-units"
alias cleanreboot='docker rmi $(docker images --quiet --filter "dangling=true") ; sudo systemctl reboot'
alias swaywm='export XKB_DEFAULT_LAYOUT=fi && sway -d 2> ~/sway.log'
alias nvimem='nvim -S ~/.local/share/nvim/sessions/em.vim -c "Obsess ~/.local/share/nvim/sessions/em.vim"'
alias nvimfa='nvim -S ~/.local/share/nvim/sessions/fa.vim -c "Obsess ~/.local/share/nvim/sessions/fa.vim"'

# Exports

export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
export MAVEN_OPTS="-Xms1024m -Xmx4096m -Xss8M"
export NODE_PATH="/usr/lib/node_modules"
export ANDROID_HOME="/opt/android-sdk"
export CLOUDSDK_PYTHON="/usr/bin/python2"
export DOCKER_HOST=unix:///var/run/docker.sock

# Fleet attached to CoreOS Node 1
export FLEETCTL_TUNNEL="XXXXXX"

# The next line updates PATH for the Google Cloud SDK.
if [ -f /home/ttiurani/google-cloud-sdk/path.zsh.inc ]; then
  source '/home/ttiurani/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /home/ttiurani/google-cloud-sdk/completion.zsh.inc ]; then
  source '/home/ttiurani/google-cloud-sdk/completion.zsh.inc'
fi
