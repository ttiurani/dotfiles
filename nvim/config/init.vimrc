call plug#begin('~/.local/share/nvim/plugged')

" reset to sensible defaults
Plug 'tpope/vim-sensible'

" colorschemes
Plug 'tjdevries/colorbuddy.nvim'
Plug 'svrana/neosolarized.nvim'

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
Plug 'mcchrish/nnn.vim'

" programming, general
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-jdaddy'
Plug 'google/vim-maktaba'
Plug 'alvan/vim-closetag'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" html/css/templating
Plug 'Glench/Vim-Jinja2-Syntax'

" Rust
Plug 'simrat39/rust-tools.nvim'

" Scala
Plug 'derekwyatt/vim-scala'

" Typescript
Plug 'leafgarland/typescript-vim'
" TODO: Needed until https://github.com/leafgarland/typescript-vim/pull/140 is fixed
Plug 'ianks/vim-tsx'

" Kotlin
Plug 'udalov/kotlin-vim'

" Javascript
Plug 'pangloss/vim-javascript'

" Svelte
Plug 'leafOfTree/vim-svelte-plugin'

" TOML
Plug 'cespare/vim-toml'

call plug#end()
