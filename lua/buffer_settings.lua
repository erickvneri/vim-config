--
-- Buffer settings

--
-- Colorscheme
--vim.cmd [[colorscheme edge]]
--vim.cmd [[colorscheme dracula]]
--vim.cmd [[colorscheme gruvboc]]
vim.cmd [[colorscheme codedark]]

--
-- Transparent background
vim.cmd [[highlight Normal guibg=NONE ctermbg=NONE]]
vim.cmd [[highlight NonText guibg=NONE ctermbg=NONE]]
vim.cmd [[highlight EndOfBuffer guibg=NONE ctermbg=NONE]]
vim.cmd [[highlight LineNr guibg=NONE ctermbg=NONE]]

--
-- Trailing space highlight
vim.cmd [[highlight ExtraWhitespace ctermbg=red guibg=red]]
vim.cmd [[match ExtraWhitespace /\s\+$/]]
vim.cmd [[autocmd BufWinEnter * match ExtraWhitespace /\s\+$/]]
vim.cmd [[autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/]]
vim.cmd [[autocmd InsertLeave * match ExtraWhitespace /\s\+$/]]
vim.cmd [[autocmd BufWinLeave * call clearmatches()]]

-- Language Buffer Indentations
--
-- 4-spaced indentation
vim.cmd [[
au BufNewFile,BufRead *.py,*.vim,*.sh,*.rs,*.sql
    \ set tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ expandtab
    \ autoindent
    \ fileformat=unix]]
-- On save Python
vim.cmd [[autocmd BufWrite *.py :Black]]

-- 2-spaced indentation
vim.cmd [[au BufNewFile,BufRead *.js,*.jsx,*.html,*.css,*.scss,*.ts,*.tsx,*.yaml,*.yml,*.md,*.lua,*.xml
    \ set tabstop=2
    \ softtabstop=2
    \ shiftwidth=2
    \ expandtab]]
-- On save JS, and others
vim.cmd [[autocmd BufWrite *.js,*.jsx,*.html,*.css,*.scss,*.ts,*.tsx,*.yaml,*.yml,*.md :Prettier]]

--
-- Prettier
local prettier = require("prettier")
prettier.setup({
  bin = 'prettierd', -- or `'prettierd'` (v0.23.3+)
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  },
})

