--
-- Packer Plugins
return require("packer").startup(function(use)
  --
  -- Packer
  use "wbthomason/packer.nvim"

  --
  -- Nerdtree File Explorer
  use "preservim/nerdtree"

  -- fs search engine
  use "kien/ctrlp.vim"

  --
  -- Color schemes
  --use "sainnhe/edge"
  --use "morhetz/gruvbox"
  use "tomasiser/vim-code-dark"
  --use "dracula/vim"

  --
  -- Git diff
  use "airblade/vim-gitgutter"

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
  -- Prettier
  use "neovim/nvim-lspconfig"
  use "jose-elias-alvarez/null-ls.nvim"
  use "MunifTanjim/prettier.nvim"

  --
  -- Markdown
  use {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
  }

  -- Lua
  use "xiyaowong/coc-sumneko-lua"

  --
  -- Rust
  use "rust-lang/rust.vim"

  --
  -- Solidity
  use "tomlion/vim-solidity"
end)

