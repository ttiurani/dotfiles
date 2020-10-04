# Dotfiles

Minimum requirements for nvim:

* [neovim](https://github.com/neovim/neovim)
* [ag](https://github.com/ggreer/the_silver_searcher)
* [universal ctags](https://github.com/universal-ctags/ctags) - use the AUR universal-ctags-git package, NOT the ctags in the official repo
* Python 3 - deoplete uses it, the executable needs to be python3

# OSX Brew installation

```
brew update
brew install node tmux maven python3 ripgrep neovim/neovim/neovim tig reattach-to-user-namespace
brew cask install java
brew tap universal-ctags/universal-ctags
brew install --HEAD universal-ctags
```

# iTerm2 customization

https://github.com/junegunn/fzf.vim/issues/54#issuecomment-235280717
