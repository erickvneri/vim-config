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
      "VonHeikemen/lsp-zero.nvim",
      branch = "v1.x",
      requires = {
        -- LSP Support
        {"neovim/nvim-lspconfig"},             -- Required
        {"williamboman/mason.nvim"},           -- Optional
        {"williamboman/mason-lspconfig.nvim"}, -- Optional
        {"python-lsp/python-lsp-server"},

        -- Autocompletion
        {"hrsh7th/nvim-cmp"},         -- Required
        {"hrsh7th/cmp-nvim-lsp"},     -- Required
        {"hrsh7th/cmp-buffer"},       -- Optional
        {"hrsh7th/cmp-path"},         -- Optional
        {"saadparwaiz1/cmp_luasnip"}, -- Optional
        {"hrsh7th/cmp-nvim-lua"},     -- Optional

        -- Snippets
        {"L3MON4D3/LuaSnip"},             -- Required
        {"rafamadriz/friendly-snippets"}, -- Optional
      }
    }
    --
    -- File Explorer
    use "preservim/nerdtree"
    use {
      "nvim-telescope/telescope.nvim",
      tag = "0.1.1",
      -- or branch = "0.1.x",
      requires = {{"nvim-lua/plenary.nvim" }}
    }
    -- fs search engine
    use "kien/ctrlp.vim"
    --
    -- Color schemes
    use "sainnhe/edge"
    --use "morhetz/gruvbox"
    --use "tomasiser/vim-code-dark"
    --use "dracula/vim"
    --
    -- Git diff and fugitive
    use "airblade/vim-gitgutter"
    use "tpope/vim-fugitive"
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
    -- Markdown
    -- Note: must install deno via :Mason
    use {
      "toppair/peek.nvim",
      run = "deno task --quiet build:fast"
    }
    --
    -- Prettier
    use {
      "prettier/vim-prettier",
      run = "yarn install",
      ft = {
        "javascript",
        "typescript",
        "css",
        "less",
        "scss",
        "graphql",
        "markdown",
        "vue",
        "html",
        "yaml",
      }
    }
    --
    -- Rust
    use "rust-lang/rust.vim"
  end)
end

return { setup = setup }

