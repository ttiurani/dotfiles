" Map the leader key to SPACE
let mapleader="\<SPACE>"

" Map jk sequence to escape
inoremap jk <esc>

" Map Ctrl-D to del
inoremap <C-D> <C-O>x

" Map quick save to space s
nnoremap <Leader>s :update<CR>

" Map close buffer to space d
nnoremap <silent><Leader>d :call CloseBufferAndPossiblyMoveToNext()<CR>
function! CloseBufferAndPossiblyMoveToNext()
  if &ft ==# 'netrw'
    execute(':bd')
  else
    execute(':bd')
    execute(':bp')
  endif
endfunction
nnoremap <silent><Leader>D :Bonly<CR>
" For netrw, it's more logical to just close the buffer with esc
autocmd Filetype netrw nnoremap <buffer> <esc> :bd<CR>

" Map Ctrl-m to Ctrl-] (command for following links), since Ctrl-] doesn't
" work with Finnish keyboard layout. Could not map to å because it in turn
" won't work for both linux and osx.
map <C-m> <C-]>

" Add mappings for moving in quickfix window
nnoremap <Leader>J :cnext<cr>
nnoremap <Leader>K :cprev<cr>
nnoremap <Leader>j :lnext<cr>
nnoremap <Leader>k :lprev<cr>

" Add mappings for H and L to move left and right
nnoremap H :bprev<cr>
nnoremap L :bnext<cr>

" FZF mappings
" https://github.com/zenbro/dotfiles/blob/master/.nvimrc#L220
" {{{
  nnoremap <silent> <C-P> :Files<CR>
  nnoremap <silent> <Leader>o :BTags<CR>
  nnoremap <silent> <Leader>O :Tags<CR>
  nnoremap <silent> K :call SearchWordWithAg()<CR>
  vnoremap <silent> K :call SearchVisualSelectionWithAg()<CR>
  nnoremap <silent> <Leader>/ :execute 'Ag ' . input('Ag/')<CR>
  nnoremap <silent> <Leader>. :AgIn<space>
  nnoremap <silent> <Leader>gl :Commits<CR>
  nnoremap <silent> <Leader>gb :BCommits<CR>

  function! SearchWordWithAg()
    execute 'Ag' expand('<cword>')
  endfunction

  function! SearchVisualSelectionWithAg() range
    let old_reg = getreg('"')
    let old_regtype = getregtype('"')
    let old_clipboard = &clipboard
    set clipboard&
    normal! ""gvy
    let selection = getreg('"')
    call setreg('"', old_reg, old_regtype)
    let &clipboard = old_clipboard
    execute 'Ag' selection
  endfunction

  function! SearchWithAgInDirectory(...)
    call fzf#vim#ag(join(a:000[1:], ' '), extend({'dir': a:1}, g:fzf#vim#default_layout))
  endfunction
  command! -nargs=+ -complete=dir AgIn call SearchWithAgInDirectory(<f-args>)
" }}}

" fugitive quick keys, from https://www.reddit.com/r/vim/comments/21f4gm/best_workflow_when_using_fugitive/cgciltz/
nnoremap <Leader>ga :Gwrite<CR>
nnoremap <Leader>gst :Gstatus<CR>
nnoremap <Leader>gc :Gcommit -v -q<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gD :diffoff!<cr><c-w>h:bd<cr>
nnoremap <Leader>gps :Gpush<CR>

" lightline buffer to arrow keys
nnoremap <Left> :bprev<CR>
nnoremap <Right> :bnext<CR>

" code completion using tab
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Eclim
" ctrl-x ctrl-o use ctrl-space insted
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>
" ctrl I to JavaImport
nnoremap <Leader>i :JavaImport <CR>
" , space p for javadocs and enter for contentx
autocmd FileType java map <silent> <buffer> <cr> :JavaSearchContext<cr>
nnoremap <silent> <buffer> <Leader>p :JavaDocSearch -x declarations<cr>

" Mapping for removing serch hits with backspace
nnoremap <expr> <BS> v:hlsearch?':noh<cr>':'<BS>'
