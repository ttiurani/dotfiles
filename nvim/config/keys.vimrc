" Map the leader key to SPACE
let mapleader="\<SPACE>"

" Map jk sequence to escape
inoremap jk <esc>

" fugitive quick keys, from https://www.reddit.com/r/vim/comments/21f4gm/best_workflow_when_using_fugitive/cgciltz/
nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gst :Gstatus<CR>
nnoremap <space>gc :Gcommit -v -q<CR><Paste>
nnoremap <space>gd :Gdiff<CR>
nnoremap <Leader>gD :diffoff!<cr><c-w>h:bd<cr>
