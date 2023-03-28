--
-- Global objects
local options = vim.o

-- Global settings
options.relativenumber = true
options.number = true
options.numberwidth = 1
options.showcmd = true
options.ruler = true
options.encoding = "UTF-8"
options.showmatch = true
options.showmode = true
options.laststatus = 2
options.splitbelow = true
options.splitright = true
options.clipboard = "unnamedplus"
options.mouse = "a"
options.list = true
vim.opt.listchars = { trail = "·", tab = "»·" }
options.syntax = true
options.filetype = "off"

