#! /bin/bash
ln -s /home/ttiurani/dotfiles/gitconfig /home/ttiurani/.gitconfig
ln -s /home/ttiurani/dotfiles/zshrc /home/ttiurani/.zshrc
mkdir -p /home/ttiurani/.config/sway
ln -s /home/ttiurani/dotfiles/sway.config /home/ttiurani/.config/sway/config
# i3 until sway is ready
mkdir -p /home/ttiurani/.i3
ln -s /home/ttiurani/dotfiles/i3.config /home/ttiurani/.i3/config
ln -s /home/ttiurani/dotfiles/xinitrc /home/ttiurani/.xinitrc
