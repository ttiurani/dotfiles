" allow to highlight code syntax
syntax on
syntax enable

" line numbers
set number

" tab is four spaces
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set smartindent

" Always utf8
set termencoding=utf-8
set fileencoding=utf-8

" Strip trailing whitespace in most filetypes
autocmd BufWritePre *.vim,*.vimrc,*.c,*.php,*.scala,*.java,*.python,*.ts,*.js,*.html,*.css,*.scss,*.less,*.scss,*.xml :%s/ \+$//ge

" Disable cliboard http://stackoverflow.com/a/39741226
set clipboard=unnamed

" Set undo
set undofile
set undodir=$HOME/.config/nvim/undo
set undolevels=1000
set undoreload=10000

" Set tags for vim-fugitive
set tags^=.git/tags

" Set spelling
set spelllang=en
