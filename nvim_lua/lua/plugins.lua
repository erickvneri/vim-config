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
-- Packer Plugins
local function setup()
  return require("packer").startup(function(use)
    --
    -- Packer
    use "wbthomason/packer.nvim"
    -- LSP
    use {
      "neovim/nvim-lspconfig",
      requires = {
        {"mason-org/mason.nvim"},
        {"hrsh7th/nvim-cmp"},
        {"hrsh7th/cmp-nvim-lsp"},
        {"hrsh7th/cmp-buffer"},
        {"hrsh7th/cmp-path"},
        {"saadparwaiz1/cmp_luasnip"},
        {"hrsh7th/cmp-nvim-lua"},
        {"L3MON4D3/LuaSnip"},
        {"rafamadriz/friendly-snippets"},
      }
    }
    --
    -- File Explorer
    use "preservim/nerdtree"
    use {
      "nvim-telescope/telescope.nvim",
      tag = "v0.1.9",
      -- or branch = "0.1.x",
      requires = {{"nvim-lua/plenary.nvim" }}
    }
    -- fs search engine
    use "kien/ctrlp.vim"
    --
    -- Color schemes
    --use { "sainnhe/edge", as = "edge" }
    --use "morhetz/gruvbox"
    --use "tomasiser/vim-code-dark"
    --use "dracula/vim"
    use { "catppuccin/nvim", as = "catppuccin" }
    --
    -- Git diff, fugitive, gitblame
    use "airblade/vim-gitgutter"
    use "tpope/vim-fugitive"
    use "f-person/git-blame.nvim"
    --
    -- Status bar
    use "vim-airline/vim-airline"
    --
    -- Line commenter
    use "scrooloose/nerdcommenter"
    --
    -- autoclosing (){}[]...
    use "jiangmiao/auto-pairs"
    --
    -- Emmet engine
    use "mattn/emmet-vim"
    -- Python Black formatter
    use "psf/black"
    --
    -- JS, TS, ReactJS, etc
    use "pangloss/vim-javascript"
    use "leafgarland/typescript-vim"
    use "maxmellon/vim-jsx-pretty"
    --
    --
    -- Prettier
    use('MunifTanjim/prettier.nvim')
    --
    -- Rust
    use "rust-lang/rust.vim"
    --
    --
    -- neovim SQL client
    --use "tpope/vim-dadbod"
    --use "kristijanhusak/vim-dadbod-ui"
  end)
end

return { setup = setup }

