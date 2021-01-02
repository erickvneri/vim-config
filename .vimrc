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
	Plug 'tomasiser/vim-code-dark'
	" status line plugin
	Plug 'vim-airline/vim-airline'
	Plug  'vim-airline/vim-airline-themes'
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
" python indentation config
au BufNewFile,BufRead *.py
	\ set tabstop=4
	\ softtabstop=4
	\ shiftwidth=4
	\ expandtab
	\ autoindent
	\ fileformat=unix

" fullstack indentation config
au BufNewFile,BufRead *.js,*.html,*.css,*.ts,*.yaml,*.md
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

" c programming
au BufRead *.c,*.h
	\ set tabstop=4
	\ softtabstop=4
	\ shiftwidth=4
	\ autoindent
	\ expandtab
"""""""""""""""""""""""

"""""""""Plugin configs
" colorschemes
colorscheme codedark

" coc config
source ~/vim-config/.vim/preferences/coc.vim

" airline theme
let g:airline_theme='base16_ashes'
let g:airline#extensions#hunk#non_zero_only=1

" nerdtree desktop config
let g:NERDTreeWinSize=35

" gitgutter config
highlight GitGutterAdd guifg=#009900 ctermfg=Green
highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
highlight GitGutterDeletw guifg=#ff2222 ctermfg=Red
let g:gitgutter_enabled=1
let g:gitgutter_map_keys=0

" emmet config
let g:user_emmet_leader_key = ','
let g:user_emmet_install_global = 0
autocmd FileType html,css,js EmmetInstall

" markdown preview
let g:mkdp_page_title = '${name} - Preview'
let g:mkdp_filetypes = ['markdown']
""""""""""""""""""""""""

"""""""""""""" mappings
" <Leader>
let mapleader=' '

" source .vimrc
nnoremap <Leader>rf :source ~/vim-config/.vimrc<CR>

" nerdtree config
nnoremap <C-B> :NERDTreeFind<CR>

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
nnoremap <Leader>tt <C-W>s:ter<CR>i
""terminal normal mode
tnoremap <ESC> <C-\><C-n>
""""""""""""""""""""""""

"""""""""""""""Functions
" JSON Formatter
function! FormatJSON()
python3 << EOF
import vim
import json
try:
    buffer = vim.current.buffer
    content = '\n'.join(buffer[:])
    read_json = json.loads(content)
    to_json = json.dumps(
        read_json,
	indent=4,
	sort_keys=False)
    buffer[:] = to_json.split('\n')
except Exception as e:
    print('json format error %s' % e)
EOF
endfunction
" FormatJSON mapping
nnoremap <Leader>jf :call FormatJSON()<CR>

" extra whitespace highlight
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

