" Space-based Buffer Indentations
"
" Python & Vim
au BufNewFile,BufRead *.py,*.vim,*.sh,*.rs,*.sql
    \ set tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ expandtab
    \ autoindent
    \ fileformat=unix
" Black formatting at save
autocmd BufWrite *.py :Black

" JS, JSX, HMTL, CSS, SCSS,
" TS, MD, & Lua
au BufNewFile,BufRead *.js,*.jsx,*.html,*.css,*.scss,*.ts,*.tsx,*.yaml,*.yml,*.md,*.lua,*.xml
    \ set tabstop=2
    \ softtabstop=2
    \ shiftwidth=2
    \ expandtab
"Prettier formatting on save
autocmd BufWrite *.js,*.jsx,*.html,*.css,*.scss,*.ts,*.tsx,*.yaml,*.yml,*.md :Prettier

" HTML-specific
au BufRead *.html
    \ set filetype=htmlm4
    \ expandtab

" JSON-specific
au BufRead *.json
    \ set tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ autoindent
    \ expandtab

" C & C++
au BufRead
    \ *.c,*.h,*.cpp,*.hpp
    \ set tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ autoindent
    \ expandtab
"""""""""""""""""""""""

"""""""""Plugin configs
" Colorscheme customizations
colorscheme codedark
"colorscheme dracula
"colorscheme gruvbox
"colorscheme edge

" Transparent background
highlight Normal guibg=NONE ctermbg=NONE
highlight NonText guibg=NONE ctermbg=NONE
highlight EndOfBuffer guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE

" Extra whitespace highlight
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Rust formatter
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
