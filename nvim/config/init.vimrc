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
Plug 'junegunn/fzf', { 'dir': '~/.config/fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-dispatch'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-surround'

" programming, general
Plug 'w0rp/ale'
Plug 'ludovicchabant/vim-gutentags'
Plug 'benjie/neomake-local-eslint.vim'
Plug 'tpope/vim-commentary'
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-jdaddy'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug 'alvan/vim-closetag'

" html/css/templating
Plug 'Glench/Vim-Jinja2-Syntax'

" Scala
Plug 'derekwyatt/vim-scala'

" Typescript
Plug 'leafgarland/typescript-vim'

" Javascript
Plug 'pangloss/vim-javascript'

call plug#end()
call glaive#Install()
