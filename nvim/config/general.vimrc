" allow to highlight code syntax
syntax on
syntax enable

" line numbers
set number

" tab is always two spaces
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set smartindent

" Always utf8
set termencoding=utf-8
set fileencoding=utf-8

" File types
au FileType xml exe ":silent %!xmllint --format --recover - 2>/dev/null"
