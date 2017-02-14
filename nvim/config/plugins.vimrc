" solarized: https://github.com/frankier/neovim-colors-solarized-truecolor-only
set termguicolors
set background=dark
colorscheme solarized

" vim-tmux-navigator: only map up and down, left is broken, right is clear
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>

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

" Autosave
let g:auto_save = 1
set updatetime=1000
let g:auto_save_events = ["CursorHold", "CursorHoldI", "CompleteDone", "InsertLeave"]
let g:auto_save_silent = 1
let g:auto_save_presave_hook = 'call AbortIfNotGit()'

function! AbortIfNotGit()
  " Use variable from the vim-fugitive plugin
  if exists('b:git_dir') && expand('%:t') != 'COMMIT_EDITMSG'
    let g:auto_save_abort = 0
  else
    let g:auto_save_abort = 1
  endif
endfunction

" Eclim
let g:EclimCompletionMethod = 'omnifunc'

" Deoplete
let g:deoplete#enable_at_startup = 1

" FZF
let $FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
