local lsp = require("lspconfig")

local function setup_solidity()
  lsp.solidity_ls.setup({})
end

return setup_solidity

