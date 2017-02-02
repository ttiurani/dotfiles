" solarized: https://github.com/frankier/neovim-colors-solarized-truecolor-only
set termguicolors
set background=dark
colorscheme solarized

" Vimfiler
let g:vimfiler_as_default_explorer = 1

" Neomake
autocmd! BufWritePost,BufEnter * Neomake
let g:neomake_open_list = 2
let g:neomake_warning_sign = {
  \ 'text': 'W',
  \ 'texthl': 'WarningMsg',
  \ }
let g:neomake_error_sign = {
  \ 'text': 'E',
  \ 'texthl': 'ErrorMsg',
  \ }
let g:neomake_logfile='/home/ttiurani/neomake.log'
