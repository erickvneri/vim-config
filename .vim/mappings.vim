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

" Nerdtree config
nnoremap <C-B> :NERDTreeToggle<CR>
" Desktop size
let g:NERDTreeWinSize=32

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

