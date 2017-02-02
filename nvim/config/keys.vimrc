" Map the leader key to SPACE
let mapleader="\<SPACE>"
 
" Map jk sequence to escape
inoremap jk <esc>

" Map quick save to space s
nnoremap <Leader>s :update<CR>

" Map close buffer to space d
nnoremap <Leader>d :bp\|bd #<CR>

" fugitive quick keys, from https://www.reddit.com/r/vim/comments/21f4gm/best_workflow_when_using_fugitive/cgciltz/
nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gst :Gstatus<CR>
nnoremap <space>gc :Gcommit -v -q<CR><Paste>
nnoremap <space>gd :Gdiff<CR>
nnoremap <Leader>gD :diffoff!<cr><c-w>h:bd<cr>

" lightline buffer to arrow keys
nnoremap <Left> :bprev<CR>
nnoremap <Right> :bnext<CR>
