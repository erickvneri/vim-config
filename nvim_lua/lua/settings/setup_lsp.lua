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
local lsp = require("lsp-zero")
local lsp_config = require("lspconfig")


local function _lua_server_setup()
  lsp_config.lua_ls.setup({
    settings = {
      Lua = {
        runtime = {
          version = "Lua 5.3",
          path = {
            "?.lua",
            "?/init.lua",
            "/usr/local/share/lua/5.3/?.lua/",
            "/usr/local/share/lua/5.3/?/init.lua",
            "/usr/local/lib/lua/5.3/?.lua",
            "/usr/local/lib/lua/5.3/?/init.lua",
            "/usr/share/lua/5.3/?.lua",
            "/usr/share/lua/5.3/?/init.lua",
            "/home/asdeoips/.st_lua_libs/lua_libs-api_v5/?.lua",
            "/home/asdeoips/.st_lua_libs/lua_libs-api_v5/?/init.lua"
          }
        }
      }
    }
  })
end

local function _error_diagnostics_setup()
  vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    update_in_insert = false,
    underline = true,
    severity_sort = false,
    float = true,
  })
end

local function setup()
  lsp.preset("recommended")

  --https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
  lsp.ensure_installed({
    "tsserver",
    "eslint",

    -- or pylsp, pyre, pyright, ruff_lsp, sourcery
    -- will need "apt install python3.10-venv"
    "jedi_language_server",
    "rust_analyzer",
    "yamlls",
    "cssls",
    "html",
    "marksman",
    "solang",
    "jsonls"
  })

  --
  -- No icons please!
  lsp.set_preferences({
    sign_icons = {}
  })

  --
  -- On-buffer specific bindings
  lsp.on_attach(function(client, bufnr)
    -- Triggered completion, is it necessary?
    -- vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opt)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opt)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opt)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opt)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opt)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opt)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.preferences() end, opt)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opt)
    --vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.signature_help() end, opt)
  end)

  --
  -- Server specifics
  lsp.configure("yamlls", {
    settings = {
      yaml ={
        keyOrdering = false
      }
    }
  })

  --
  -- Run setup
  lsp.setup()

  --
  -- Lua server setup
  _lua_server_setup()

  --
  -- Error diagnostics
  _error_diagnostics_setup()
end

return setup
