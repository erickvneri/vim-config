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
-- Globals
local set = vim.keymap.set
local cmd = vim.cmd
--
-- Buffer mappings
--
vim.g.mapleader = " "


local function setup()
  -- File Explorer
  --
  -- NerdTree
  set("n", "<C-B>", ":NERDTreeToggle<CR>")
  --vim.cmd [[let g:NERDTreeWinSize=32]]
  -- Telescope
  local ts = require("telescope.builtin")
  set("n", "<leader>pf", ts.find_files, {})
  set("n", "<C-P>", ts.git_files, {})
  set("n", "<C-F>", function(str)
    ts.grep_string({ search = vim.fn.input("grep > ") })
  end)

  --
  -- Save & Quit shortcut
  set("n", "<leader>w", ":w<CR>")
  set("n", "<leader>q", ":q<CR>")
  set("n", "<leader>Q", ":q!<CR>")

  --
  -- Split navigation
  set("n", "<C-J>", "<C-W><C-J>")
  set("n", "<C-K>", "<C-W><C-K>")
  set("n", "<C-L>", "<C-W><C-L>")
  set("n", "<C-H>", "<C-W><C-H>")

  --
  -- Tab navigation
  --
  -- New tab
  set("n", "<C-T>", ":tab split<CR>")
  -- Close current tab
  set("n", "<C-C>", ":tabc<CR>")
  -- Jump to next tab
  set("n", "<C-N>", ":tabn<CR>")
  -- Alt
  --set("n", "<Tab>", ":tabn<CR>")

  --
  -- Terminal mappings
  --
  -- Open terminal at current buffer
  set("n", "<leader>t", ":ter<CR>i")
  -- Open terminal - split vertical (default)
  set("n", "<leader>tv", "<C-W>v:ter<CR>i")
  -- Open terminal - split below
  set("n", "<leader>tt", "<C-W>s:ter<CR>:resize 14<CR>i")
  -- Terminal normal mode
  set("t", "<ESC>", "<C-\\><C-n>")

  --
  -- Markdown preview
  local mdp = require("peek")
  set("n", "<leader>mp", mdp.open)
  set("n", "<leader>mpc", mdp.close)

  --
  -- Emmet config
  cmd [[let g:user_emmet_leader_key = ',']]
  cmd [[let g:user_emmet_mode='i']]
  cmd [[let g:user_emmet_install_global = 1]]
  cmd [[autocmd FileType html,css,js EmmetInstall]]
end

return { setup = setup }
