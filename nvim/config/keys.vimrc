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
  nnoremap <silent> K :call SearchWordWithRg()<CR>
  vnoremap <silent> K :call SearchVisualSelectionWithRg()<CR>
  nnoremap <silent> <Leader>/ :execute 'Rg ' . input('Rg/')<CR>
  nnoremap <silent> <Leader>. :RgIn<space>
  nnoremap <silent> <Leader>gl :Commits<CR>
  nnoremap <silent> <Leader>gb :BCommits<CR>

  function! SearchWordWithRg()
    execute 'Rg' expand('<cword>')
  endfunction

  function! SearchVisualSelectionWithRg() range
    let old_reg = getreg('"')
    let old_regtype = getregtype('"')
    let old_clipboard = &clipboard
    set clipboard&
    normal! ""gvy
    let selection = getreg('"')
    call setreg('"', old_reg, old_regtype)
    let &clipboard = old_clipboard
    execute 'Rg' selection
  endfunction

  function! SearchWithRgInDirectory(...)
    call fzf#vim#rg(join(a:000[1:], ' '), extend({'dir': a:1}, g:fzf#vim#default_layout))
  endfunction
  command! -nargs=+ -complete=dir RgIn call SearchWithRgInDirectory(<f-args>)
" }}}

" CTRL-r in visual mode to replace all occurances of word
 vnoremap <C-r> "hy:%s/<C-r>h//g<left><left>

" fugitive quick keys, from https://www.reddit.com/r/vim/comments/21f4gm/best_workflow_when_using_fugitive/cgciltz/
nnoremap <Leader>ga :Gwrite<CR>
nnoremap <Leader>gst :Gstatus<CR>
nnoremap <Leader>gc :Gcommit -v -q<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gD :diffoff!<cr><c-w>h:bd<cr>
nnoremap <Leader>gps :Gpush<CR>
nnoremap <Leader>gl :Gpull<CR>

" lightline buffer to arrow keys
nnoremap <Left> :bprev<CR>
nnoremap <Right> :bnext<CR>

" coc.vim mappings
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
vmap <Leader>a  <Plug>(coc-codeaction-selected)
nmap <Leader>a  <Plug>(coc-codeaction-selected)
nmap <Leader>ac  <Plug>(coc-codeaction)
nnoremap <Leader>q :<C-u>CocList diagnostics<cr>

" Tagbar mapping
nmap <Leader>8 :TagbarToggle<CR>

" mappings for vim-maven-plugin, used now only for the b:_mvn_project variable
" and setup of mapping to folder
autocmd BufNewFile,BufReadPost *.* call s:SetupMavenMap()
function! <SID>SetupMavenMap()
  doautocmd MavenAutoDetect BufNewFile,BufReadPost

  if !maven#isBufferUnderMavenProject(bufnr("%"))
    return
  endif

  " Execute testing in another window
  nmap <buffer> <Leader>5 :call RunMavenTest()<CR>

  " Switch between source and test file, DOES NOT WORK, WHY?
  nmap <buffer> <Leader>6  <Plug>MavenSwitchUnittestFile

endfunction

function! RunMavenTest()
  let l:currentFunction = substitute(substitute(tagbar#currenttag("%s", "", "f"), "()", "", ""), "\\.", "\\#", "")
  let l:mvnCommand = 'mvn -f ' . b:_mvn_project . '/pom.xml surefire:test -Dtest=' . l:currentFunction . ' -DfailIfNoTests=false --offline -Dgib.enabled=false'
  enew
  call termopen(l:mvnCommand)
endfunction

" Mapping for removing serch hits with backspace
nnoremap <expr> <BS> v:hlsearch?':noh<cr>':'<BS>'

" Spelling toggle to leader 9
nnoremap <silent> <Leader>9 :set spell!<cr>
inoremap <silent> <Leader>9 <C-O>:set spell!<cr>
