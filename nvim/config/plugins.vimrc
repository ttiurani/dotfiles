" solarized: https://github.com/svrana/neosolarized.nvim/
set termguicolors
set background=dark
function ToggleBackgroundOfEditor()
    if (&background == "dark")
      let &background = "light"
      colorscheme default
    else
      let &background = "dark"
      colorscheme neosolarized
    endif
endfunction
nnoremap <silent> <F5> :call ToggleBackgroundOfEditor()<cr>

" vim-tmux-navigator: save current buffer when switching
let g:tmux_navigator_save_on_switch = 1

" vim-gutentags
let g:gutentags_ctags_exclude = ['*node_modules/*', '*build/*','*dist/*', '.git', '*target/*', '*bazel-*', '*.min.js', '*-min.js', '*.min.css', '*-min.css', '*.json', '*.svelte-kit*', '*.md']
let g:gutentags_ctags_tagfile = '.git/tags'

" closetag
let g:closetag_filenames = "*.html,*.xhtml,*.xml,*.nunjucks"

" NNN
let g:nnn#replace_netrw = 1

" rust.vim
let g:rustfmt_autosave = 1

" vim-svelte-plugin
let g:vim_svelte_plugin_use_typescript = 1

" Code folding with TreeSitter from
" https://www.jmaguire.tech/posts/treesitter_folding/
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
autocmd BufReadPost,FileReadPost * normal zR
