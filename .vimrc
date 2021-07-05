set number
set relativenumber
set numberwidth=1
set showcmd
set ruler
set encoding=utf-8
set showmatch
set noshowmode
set laststatus=2
set splitbelow
set splitright
" copy-paste config
set clipboard+=unnamedplus
set mouse=a
" tabs & extra whitespaces
set list
set list lcs=trail:·,tab:»·

syntax enable
filetype off
"""""""""""""""""""""""""""""""""""

""""""""""" Vim-Plug plugin manager
call plug#begin('~/vim-config/.vim/plugged')
	" fs tree
	Plug 'preservim/nerdtree'
	" line commenter
	Plug 'scrooloose/nerdcommenter'
	" colorscheme
	"Plug 'tomasiser/vim-code-dark'
	Plug 'dracula/vim', { 'as': 'dracula' }
	" status line plugin
	Plug 'vim-airline/vim-airline'
	"Plug  'vim-airline/vim-airline-themes'
	" fs search engine
	Plug 'kien/ctrlp.vim'
	" git commands
	Plug 'tpope/vim-fugitive'
	" git changes descriptor
	Plug 'airblade/vim-gitgutter'
	" javascript, typescript, and
	" react plugins
	Plug 'pangloss/vim-javascript'
	Plug 'leafgarland/typescript-vim'
	Plug 'maxmellon/vim-jsx-pretty'
	Plug 'prettier/vim-prettier', {
	\ 'do': 'yarn install',
	\ 'for': [
	\   'javascript',
	\   'typescript',
	\   'css',
	\   'less',
	\   'scss',
	\   'json',
	\   'graphql',
	\   'markdown',
	\   'vue',
	\   'yaml',
	\   'html'] }
	" emmet engine
	Plug 'mattn/emmet-vim'
	" autoclosing (){}[]...
	Plug 'jiangmiao/auto-pairs'
	" conquer of completion
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" markdown preview
	Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app && yarn install'}
call plug#end()
"""""""""""""""""""""""""""

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

" Coc config
source ~/vim-config/.vim/preferences/coc.vim

" Airline theme
"let g:airline_theme='base16_ashes'
"let g:airline#extensions#hunk#non_zero_only=1
"let g:airline#extensions#tagbar#enabled = 0

" Nerdtree config
nnoremap <C-B> :NERDTreeToggle<CR>
" Desktop size
let g:NERDTreeWinSize=32
" Mobile size
"let g:NERDTreeWinSize=18

" Gitgutter config
highlight GitGutterAdd guifg=#009900 ctermfg=Green
highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
highlight GitGutterDeletw guifg=#ff2222 ctermfg=Red
let g:gitgutter_enabled=1
let g:gitgutter_map_keys=0

" Emmet config
" Emmet config
let g:user_emmet_leader_key = ','
let g:user_emmet_mode='i'
let g:user_emmet_install_global = 1
autocmd FileType html,css,js EmmetInstall


" Markdown preview
let g:mkdp_page_title = '${name} - Preview'
let g:mkdp_filetypes = ['markdown']
""""""""""""""""""""""""

"""""""""""""" mappings
" <Leader>
let mapleader=' '

" source .vimrc
nnoremap <Leader>rf :source ~/vim-config/.vimrc<CR>


" markdown preview
nnoremap <Leader>mp :MarkdownPreview<CR>
nnoremap <Leader>mps :MarkdownPreviewStop<CR>

" save & quit shortcut
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :q!<CR>

" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" tab navigation
" new tab
nnoremap <C-T> :tab split<CR>
" close current tab
nnoremap <C-C> :tabc<CR>
" jump to next tab
nnoremap <C-N> :tabn<CR>
" alt
" nnoremap <Tab> :tabn<CR>

" terminal mapping
"""open terminal at current buffer
nnoremap <Leader>t :ter<CR>i
"""open terminal - split vertical (default)
nnoremap <Leader>tv <C-W>v:ter<CR>i
"""open terminal - split below
nnoremap <Leader>tt <C-W>s:ter<CR>:resize 14<CR>i
""terminal normal mode
tnoremap <ESC> <C-\><C-n>

