" solarized: https://github.com/frankier/neovim-colors-solarized-truecolor-only
set termguicolors
set background=dark
colorscheme solarized

" vim-tmux-navigator: save current buffer when switching
let g:tmux_navigator_save_on_switch = 1

" Ale
let g:ale_completion_enabled = 1

" vim-gutentags
let g:gutentags_ctags_exclude = ['*node_modules*', '*build*', '.git', '*target*']
let g:gutentags_ctags_tagfile = '.git/tags'

" closetag
let g:closetag_filenames = "*.html,*.xhtml,*.xml,*.nunjucks"

" Language Client
let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {}
let g:LanguageClient_serverCommands.java = ['java-lang-server.sh']

" Deoplete
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('omni_patterns', { 'java': '[^. *\t]\.\w*' })

" FZF
let $FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

" Codefmt
Glaive codefmt plugin[mappings]
Glaive codefmt google_java_executable="java -jar /Users/ttiurani/google-java-format-1.3-all-deps.jar"

augroup autoformat_settings
"  TODO: Enable autoformatting!
"  autocmd FileType bzl AutoFormatBuffer buildifier
"  autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
"  autocmd FileType dart AutoFormatBuffer dartfmt
"  autocmd FileType go AutoFormatBuffer gofmt
"  autocmd FileType gn AutoFormatBuffer gn
"  autocmd FileType html,css,json AutoFormatBuffer js-beautify
"  autocmd FileType java AutoFormatBuffer google-java-format
"  autocmd FileType python AutoFormatBuffer yapf"
augroup END
