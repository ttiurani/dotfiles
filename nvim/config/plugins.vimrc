" solarized: https://github.com/frankier/neovim-colors-solarized-truecolor-only
set termguicolors
set background=dark
let g:solarized_contrast="high"
colorscheme solarized
call togglebg#map("<F5>")

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
