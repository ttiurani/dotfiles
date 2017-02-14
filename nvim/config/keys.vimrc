" Map the leader key to SPACE
let mapleader="\<SPACE>"

" Map jk sequence to escape
inoremap jk <esc>

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

" FZF mappings
" https://github.com/zenbro/dotfiles/blob/master/.nvimrc#L220
" {{{
  nnoremap <silent> <C-P> :Files<CR>
  nnoremap <silent> K :call SearchWordWithAg()<CR>
  vnoremap <silent> K :call SearchVisualSelectionWithAg()<CR>
  nnoremap <silent> <leader>/ :execute 'Ag ' . input('Ag/')<CR>
  nnoremap <silent> <leader>. :AgIn<space>
  nnoremap <silent> <leader>gl :Commits<CR>
  nnoremap <silent> <leader>gb :BCommits<CR>

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
nnoremap <Leader>gps :Dispatch! git push<CR>

" lightline buffer to arrow keys
nnoremap <Left> :bprev<CR>
nnoremap <Right> :bnext<CR>

" code completion using tab
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
