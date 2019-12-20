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
Plug 'taohexxx/lightline-buffer'
Plug 'junegunn/fzf', { 'dir': '~/.config/fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-dispatch'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'

" programming, general
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-jdaddy'
Plug 'google/vim-maktaba'
Plug 'alvan/vim-closetag'
Plug 'mikelue/vim-maven-plugin'

" html/css/templating
Plug 'Glench/Vim-Jinja2-Syntax'

" Scala
Plug 'derekwyatt/vim-scala'

" Typescript
Plug 'leafgarland/typescript-vim'
" TODO: Needed until https://github.com/leafgarland/typescript-vim/pull/140 is fixed
Plug 'ianks/vim-tsx'

" Clojure
" Plug 'clojure-vim/acid.nvim', { 'do': ':UpdateRemotePlugins' }

" Javascript
Plug 'pangloss/vim-javascript'

call plug#end()
