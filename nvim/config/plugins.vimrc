" solarized: https://github.com/frankier/neovim-colors-solarized-truecolor-only
set termguicolors
set background=dark
colorscheme solarized

" vim-tmux-navigator: save current buffer when switching
let g:tmux_navigator_save_on_switch = 1

" Neomake
autocmd! BufWritePost,BufReadPost * Neomake
let g:neomake_open_list = 2
let g:neomake_warning_sign = {
  \ 'text': 'W',
  \ 'texthl': 'WarningMsg',
  \ }
let g:neomake_error_sign = {
  \ 'text': 'E',
  \ 'texthl': 'ErrorMsg',
  \ }
let g:neomake_list_height = 5

" closetag
let g:closetag_filenames = "*.html,*.xhtml,*.xml,*.nunjucks"

" Eclim
let g:EclimCompletionMethod = 'omnifunc'
let g:EclimJavaSearchSingleResult = 'edit'
let g:EclimQuickFixHeight = 3

" Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#omni#input_patterns = {}
let g:deoplete#omni#input_patterns.java = '[^. *\t]\.\w*'

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
  autocmd FileType java AutoFormatBuffer google-java-format
"  autocmd FileType python AutoFormatBuffer yapf"
augroup END
