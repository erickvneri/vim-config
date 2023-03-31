local lsp = require("lsp-zero")

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
    "luau_lsp",
    "yamlls",
    "cssls",
    "html",
    "marksman",
    "solang",
  })

  lsp.set_preferences({
    sign_icons = {}
  })

  lsp.on_attach(function(client, bufnr)
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
    vim.keymap.set("n", "<C-H>", function() vim.lsp.buf.signature_help() end, opt)
  end)

  lsp.setup()
end

return setup
