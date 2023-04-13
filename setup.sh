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

# rg
if [ ! -L $HOME/.ripgreprc ]; then
  ln -s $HOME/dotfiles/ripgreprc $HOME/.ripgreprc
fi

# zsh
if [ ! -L $HOME/.zshrc ]; then
  ln -s $HOME/dotfiles/zshrc $HOME/.zshrc
fi

# nvim
if [ ! -L $HOME/.config/nvim ]; then
  ln -s $HOME/dotfiles/nvim $HOME/.config/nvim
fi
if [ ! -d $HOME/.config/nvim/undo ]; then
  mkdir -p $HOME/.config/nvim/undo
fi

# wezterm
if [ ! -L $HOME/.config/wezterm ]; then
  ln -s $HOME/dotfiles/wezterm $HOME/.config/wezterm
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


if [ $platform == 'linux' ]; then

  # LINUX SPECIFIC

  if [ ! -L $HOME/.config/sway ]; then
    ln -s $HOME/dotfiles/sway $HOME/.config/sway
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
