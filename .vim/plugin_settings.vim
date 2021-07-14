"""""""""""""""
" Airline theme
"let g:airline_theme='base16_ashes'
"let g:airline#extensions#hunk#non_zero_only=1
"let g:airline#extensions#tagbar#enabled = 0

" Gitgutter config
highlight GitGutterAdd guifg=#009900 ctermfg=Green
highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
highlight GitGutterDeletw guifg=#ff2222 ctermfg=Red
let g:gitgutter_enabled=1
let g:gitgutter_map_keys=0

" Emmet config
let g:user_emmet_leader_key = ','
let g:user_emmet_mode='i'
let g:user_emmet_install_global = 1
autocmd FileType html,css,js EmmetInstall

" Markdown preview
let g:mkdp_page_title = '${name} - Preview'
let g:mkdp_filetypes = ['markdown']

