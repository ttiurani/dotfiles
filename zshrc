# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="proze"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git mvn)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

alias flu="fleetctl list-units"
alias cleanreboot='docker rmi $(docker images --quiet --filter "dangling=true") ; sudo systemctl reboot'
alias swaywm='export XKB_DEFAULT_LAYOUT=fi && sway -d 2> ~/sway.log'

# Exports

export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
export MAVEN_OPTS="-Xms1024m -Xmx4096m -Xss8M"
export NODE_PATH="/usr/lib/node_modules"
export ANDROID_HOME="/opt/android-sdk"
export CLOUDSDK_PYTHON="/usr/bin/python2"
export DOCKER_HOST="tcp://localhost:2375"

# Fleet attached to CoreOS Node 1
export FLEETCTL_TUNNEL="XXXXXX"

# The next line updates PATH for the Google Cloud SDK.
if [ -f /home/ttiurani/devel/google-cloud-sdk/path.zsh.inc ]; then
  source '/home/ttiurani/devel/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /home/ttiurani/devel/google-cloud-sdk/completion.zsh.inc ]; then
  source '/home/ttiurani/devel/google-cloud-sdk/completion.zsh.inc'
fi
