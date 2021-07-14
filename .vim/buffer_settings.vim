""""""""""""""Buffer config
" Python indentation config
au BufNewFile,BufRead *.py
	\ set tabstop=4
	\ softtabstop=4
	\ shiftwidth=4
	\ expandtab
	\ autoindent
	\ fileformat=unix

" Indentation config
au BufNewFile,BufRead *.js,*.html,*.css,*.ts,*.yaml,*.md,*.lua
	\ set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
au BufRead *.html
	\ set filetype=htmlm4
	\ expandtab
au BufRead *.json
	\ set tabstop=4
	\ softtabstop=4
	\ shiftwidth=4
	\ autoindent
	\ expandtab
au BufRead *.c,*.h
	\ set tabstop=4
	\ softtabstop=4
	\ shiftwidth=4
	\ autoindent
	\ expandtab
"""""""""""""""""""""""

"""""""""Plugin configs
" Colorscheme customizations
"colorscheme codedark
colorscheme dracula
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
