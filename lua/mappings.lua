-- Copyright 2023 erickvneri
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--
-- Buffer mappings
--
vim.g.mapleader = " "

-- File Explorer
--vim.cmd [[nnoremap <C-B> :NERDTreeToggle<CR>]]
--vim.cmd [[let g:NERDTreeWinSize=32]]
local ts = require("telescope.builtin")
vim.keymap.set("n", "<C-B>", ts.find_files, {})
vim.keymap.set("n", "<C-P>", ts.git_files, {})
vim.keymap.set("n", "<C-F>", function()
  ts.grep_string({ search = vim.fn.input("grep > ") })
end)

--
-- Save & Quit shortcut
vim.cmd [[nnoremap <leader>w :w<CR>]]
vim.cmd [[nnoremap <leader>q :q<CR>]]
vim.cmd [[nnoremap <leader>Q :q!<CR>]]

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
vim.cmd [[nnoremap <leader>t :ter<CR>i]]
-- Open terminal - split vertical (default)
vim.cmd [[nnoremap <leader>tv <C-W>v:ter<CR>i]]
-- Open terminal - split below
vim.cmd [[nnoremap <leader>tt <C-W>s:ter<CR>:resize 14<CR>i]]
-- Terminal normal mode
vim.cmd [[tnoremap <ESC> <C-\><C-n>]]

--
-- Markdown preview
local mdp = require("peek")
vim.keymap.set("n", "<leader>mp", mdp.open)
vim.keymap.set("n", "<leader>mpc", mdp.close)

--
-- Emmet config
vim.cmd [[let g:user_emmet_leader_key = ',']]
vim.cmd [[let g:user_emmet_mode='i']]
vim.cmd [[let g:user_emmet_install_global = 1]]
vim.cmd [[autocmd FileType html,css,js EmmetInstall]]
