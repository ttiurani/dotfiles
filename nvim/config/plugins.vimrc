" solarized: https://github.com/frankier/neovim-colors-solarized-truecolor-only
set termguicolors
set background=dark
colorscheme solarized

" vim-tmux-navigator: only map up and down, left is broken, right is clear
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>

" Vimfiler
let g:vimfiler_as_default_explorer = 1
call vimfiler#custom#profile('default', 'context', {
\   'auto_expand' : 1,
\   'parent' : 0,
\   'status' : 1,
\   'direction' : 'rightbelow',
\   'no_quit': 1,
\   'safe' : 0,
\   'force_hide': 1,
\ })

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

" Ctrlp
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
