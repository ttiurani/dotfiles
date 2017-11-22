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

" Strip trailing whitespace in most filetypes
autocmd BufWritePre *.vim,*.vimrc,*.c,*.php,*.scala,*.java,*.python,*.ts,*.js,*.html,*.css,*.scss,*.less,*.scss,*.xml :%s/ \+$//ge

" Disable cliboard http://stackoverflow.com/a/39741226
set clipboard=unnamed

" Set tags
set tags=./tags,tags;
