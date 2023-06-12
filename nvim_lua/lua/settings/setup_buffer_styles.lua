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
local api = vim.api
local cmd = vim.cmd

-- [[
-- Git: https://github.com/catppuccin/nvim
-- ]]
local function _setup_catppuccin()
  local catppuccin = require("catppuccin")

  catppuccin.setup({
    flavour = "macchiato", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = false,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})
end

--
-- Colorscheme
local function setup()
  local colorscheme =
    --"codedark"
    --"edge"
    --"dracula"
    --"gruvbox"
    "catppuccin"
  cmd.colorscheme(colorscheme)

  if colorscheme == "catppuccin" then _setup_catppuccin() end

  -- Transparent background
  api.nvim_set_hl(0, "Normal", { bg = "none", ctermbg = "none" })
  api.nvim_set_hl(0, "NormalFloat", { bg = "none", ctermbg = "none" })
  api.nvim_set_hl(0, "NonText", { bg = "none", ctermbg = "none" })
  api.nvim_set_hl(0, "EndOfBuffer", { bg = "none", ctermbg = "none" })
  --vim.api.nvim_set_hl(0, "LineNr", { bg = "none", ctermbg = "none" })

  -- Trailing space highlight
  api.nvim_set_hl(0, "ExtraWhitespace", { bg = "red", ctermbg = "red" })
  cmd [[match extrawhitespace /\s\+$/]]
  cmd [[autocmd bufwinenter * match extrawhitespace /\s\+$/]]
  cmd [[autocmd insertenter * match extrawhitespace /\s\+\%#\@<!$/]]
  cmd [[autocmd insertleave * match extrawhitespace /\s\+$/]]
  cmd [[autocmd bufwinleave * call clearmatches()]]
end

return setup
