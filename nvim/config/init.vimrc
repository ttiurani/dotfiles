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
Plug 'tpope/vim-vinegar'
Plug 'taohex/lightline-buffer'
Plug '907th/vim-auto-save'
Plug 'junegunn/fzf', { 'dir': '~/.config/fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-dispatch'

" programming, general
Plug 'neomake/neomake'
Plug 'tpope/vim-commentary'
Plug 'Shougo/deoplete.nvim'

" html/css/templating
Plug 'Glench/Vim-Jinja2-Syntax'

" Scala
Plug 'derekwyatt/vim-scala'

" Eclipse development through eclim
Plug 'ttiurani/vim-eclim'

call plug#end()
