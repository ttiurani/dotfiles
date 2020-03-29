#! /bin/bash

# OS detection

platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
   platform='osx'
fi

# bin
if [ ! -L $HOME/bin ]; then
  ln -s $HOME/dotfiles/bin $HOME/bin
fi

# git
if [ ! -L $HOME/.gitconfig ]; then
  ln -s $HOME/dotfiles/gitconfig $HOME/.gitconfig
fi
if [ ! -L $HOME/.git_template ]; then
  ln -s $HOME/dotfiles/git_template $HOME/.git_template
fi

# zsh
if [ ! -L $HOME/.zshrc ]; then
  ln -s $HOME/dotfiles/zshrc $HOME/.zshrc
fi

# nvim
if [ ! -d $HOME/.config/nvim ]; then
  mkdir $HOME/.config/nvim/undo
fi
if [ ! -L $HOME/.config/nvim ]; then
  ln -s $HOME/dotfiles/nvim $HOME/.config/nvim
fi

# ideavim
if [ ! -L $HOME/.ideavimrc ]; then
  ln -s $HOME/dotfiles/ideavimrc $HOME/.ideavimrc
fi

# vrapper
if [ ! -L $HOME/.config/vrapper ]; then
  ln -s $HOME/dotfiles/vrapper $HOME/.config/vrapper
fi

# tmux
if [ ! -L $HOME/.tmux.conf ]; then
  ln -s $HOME/dotfiles/tmux.conf $HOME/.tmux.conf
  tic -x $HOME/dotfiles/term/xterm-256color-italic.terminfo
  tic -x $HOME/dotfiles/term/tmux-256color.terminfo
fi

# ctags
if [ ! -L $HOME/.ctags ]; then
  ln -s $HOME/dotfiles/ctags $HOME/.ctags
fi

# LINUX SPECIFIC

if [ $platform == 'linux' ]; then
  alias swaywm='export XKB_DEFAULT_LAYOUT=fi && sway -d 2> ~/sway.log'

  if [ ! -L $HOME/.config/sway/config ]; then
    mkdir -p $HOME/.config/sway
    ln -s $HOME/dotfiles/sway.config $HOME/.config/sway/config
  fi

  # i3 until sway is ready
  if [ ! -L $HOME/.i3/config ]; then
    mkdir -p $HOME/.i3
    ln -s $HOME/dotfiles/i3.config $HOME/.i3/config
  fi
  if [ ! -L $HOME/.xinitrc ]; then
    ln -s $HOME/dotfiles/xinitrc $HOME/.xinitrc
  fi

  # alacritty
  if [ ! -L $HOME/.config/alacritty/alacritty.yml ]; then
    mkdir -p $HOME/.config/alacritty
    ln -s $HOME/dotfiles/alacritty.yml $HOME/.config/alacritty/alacritty.yml
  fi

elif [ $platform == 'osx' ]; then

  # OSX SPECIFIC

  if [ ! -L $HOME/.config/karabiner ]; then
    ln -s $HOME/dotfiles/karabiner $HOME/.config/karabiner
  fi

  if [ ! -L $HOME/.hammerspoon ]; then
    ln -s $HOME/dotfiles/hammerspoon $HOME/.hammerspoon
  fi

fi
