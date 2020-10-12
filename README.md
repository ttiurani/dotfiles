# Dotfiles

Minimum requirements for nvim:

* [neovim](https://github.com/neovim/neovim)
* [ag](https://github.com/ggreer/the_silver_searcher)
* [universal ctags](https://github.com/universal-ctags/ctags) - use the AUR universal-ctags-git package, NOT the ctags in the official repo
* Python 3 - deoplete uses it, the executable needs to be python3

# OSX installation

```
brew update
brew install node tmux maven python3 ripgrep neovim/neovim/neovim nnn tig reattach-to-user-namespace
brew cask install java
brew tap universal-ctags/universal-ctags
brew install --HEAD universal-ctags
```

## Rust fixes

### `ld: library not found for -lstdc++`

Download XCode 9.4.1 from:

https://developer.apple.com/download/more/?q=xcode

run `xip -x Xcode_9.4.1.xip` to unpack it and copy the older libstdc++ files to the current XCode [taken from here]()https://stackoverflow.com/a/53644801/2659424):

```
cp Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/lib/libstdc++.*  /Library/Developer/CommandLineTools/SDKs/MacOSX10.15.sdk/usr/lib/
```

## QEMU Arch Linux guest

[Instructions modified from here](https://www.naut.ca/blog/2020/08/26/ubuntu-vm-on-macos-with-libvirt-qemu/). First step is to install qemu and libvirt:

```
brew install qemu gcc libvirt
echo 'security_driver = "none"' >> /usr/local/etc/libvirt/qemu.conf
echo "dynamic_ownership = 0" >> /usr/local/etc/libvirt/qemu.conf
echo "remember_owner = 0" >> /usr/local/etc/libvirt/qemu.conf
```

Then [install virt-viewer](https://github.com/jeffreywildman/homebrew-virt-manager):

```
brew tap jeffreywildman/homebrew-virt-manager
brew install virt-manager virt-viewer
```

Then create the image for the virtual machine:

```
mkdir ~/vms && cd ~/vms
qemu-img create -f qcow2 arch.qcow2 100g
```

Initialize and start the image

```
virsh define ~/dotfiles/qemu/arch
virsh start arch
```

Contact to it with virt-viewer:

```
virt-viewer
```

Send CTRL-ALT-DEL to it and press ESC and select 3, after which you have booted Arch linux, and can follow normal installation instructions.
Gotchas were that you need to remember to do via the installation medium in the `chroot` also:


```
pacman -S vim dhcpcd
systemctl enable dhcpcd.service
```

to get network to work after reboot.

## iTerm2 customization

https://github.com/junegunn/fzf.vim/issues/54#issuecomment-235280717
