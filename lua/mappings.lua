--
-- Buffer mappings
--
vim.g.mapleader = " "


-- File Explorers
--
--  Nerdtree
vim.cmd [[nnoremap <C-B> :NERDTreeToggle<CR>]]
vim.cmd [[let g:NERDTreeWinSize=32]]

--
-- Save & Quit shortcut
vim.cmd [[nnoremap <Leader>w :w<CR>]]
vim.cmd [[nnoremap <Leader>q :q<CR>]]
vim.cmd [[nnoremap <Leader>Q :q!<CR>]]

--
-- Split navigation
vim.cmd [[nnoremap <C-J> <C-W><C-J>]]
vim.cmd [[nnoremap <C-K> <C-W><C-K>]]
vim.cmd [[nnoremap <C-L> <C-W><C-L>]]
vim.cmd [[nnoremap <C-H> <C-W><C-H>]]

--
-- Tab navigation
--
-- New tab
vim.cmd [[nnoremap <C-T> :tab split<CR>]]
-- Close current tab
vim.cmd [[nnoremap <C-C> :tabc<CR>]]
-- Jump to next tab
vim.cmd [[nnoremap <C-N> :tabn<CR>]]
-- Alt
--vim.cmd [[nnoremap <Tab> :tabn<CR>]]

--
-- Terminal mappings
--
-- Open terminal at current buffer
vim.cmd [[nnoremap <Leader>t :ter<CR>i]]
-- Open terminal - split vertical (default)
vim.cmd [[nnoremap <Leader>tv <C-W>v:ter<CR>i]]
-- Open terminal - split below
vim.cmd [[nnoremap <Leader>tt <C-W>s:ter<CR>:resize 14<CR>i]]
-- Terminal normal mode
vim.cmd [[tnoremap <ESC> <C-\><C-n>]]

--
-- Markdown preview
vim.cmd [[nnoremap <Leader>mp :MarkdownPreview<CR>]]
vim.cmd [[nnoremap <Leader>mps :MarkdownPreviewStop<CR>]]
vim.cmd [[let g:mkdp_page_title = '${name} - Preview']]
vim.cmd "let g:mkdp_filetypes = ['markdown']"

--
-- Emmet config
vim.cmd [[let g:user_emmet_leader_key = ',']]
vim.cmd [[let g:user_emmet_mode='i']]
vim.cmd [[let g:user_emmet_install_global = 1]]
vim.cmd [[autocmd FileType html,css,js EmmetInstall]]
