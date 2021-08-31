""""""""""" Vim-Plug plugin manager
call plug#begin('~/vim-config/.vim/plugged')
	" fs tree
	Plug 'preservim/nerdtree'
	" line commenter
	Plug 'scrooloose/nerdcommenter'
	" colorscheme
    Plug 'morhetz/gruvbox'
    "Plug 'tomasiser/vim-code-dark'
	"Plug 'dracula/vim', { 'as': 'dracula' }
	" Indentation style
	Plug 'Yggdroot/indentLine'
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
    " Python Black formatter
	Plug 'psf/black'
	" emmet engine
	Plug 'mattn/emmet-vim'
	" autoclosing (){}[]...
	Plug 'jiangmiao/auto-pairs'
	" conquer of completion
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " C lang highlighter
    Plug 'jackguo380/vim-lsp-cxx-highlight'
	" markdown preview
	Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app && yarn install'}
call plug#end()
"""""""""""""""""""""""""""
