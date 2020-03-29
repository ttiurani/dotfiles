" solarized: https://github.com/frankier/neovim-colors-solarized-truecolor-only
set termguicolors
set background=dark
let g:solarized_contrast="high"
colorscheme solarized
call togglebg#map("<F5>")

" vim-tmux-navigator: save current buffer when switching
let g:tmux_navigator_save_on_switch = 1

" vim-gutentags
let g:gutentags_ctags_exclude = ['*node_modules*', '*build*', '.git', '*target*']
let g:gutentags_ctags_tagfile = '.git/tags'

" closetag
let g:closetag_filenames = "*.html,*.xhtml,*.xml,*.nunjucks"

" FZF
let $FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
