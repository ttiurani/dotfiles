call plug#begin('~/.local/share/nvim/plugged')

" reset to sensible defaults
Plug 'tpope/vim-sensible'

" colorschemes
Plug 'frankier/neovim-colors-solarized-truecolor-only'

" general
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-obsession'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'taohex/lightline-buffer'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'

" programming, general
Plug 'neomake/neomake'
Plug 'tpope/vim-commentary'

" html/css/templating
Plug 'Glench/Vim-Jinja2-Syntax'

call plug#end()
