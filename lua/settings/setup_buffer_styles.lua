-- Copyright 2022 Erick Israel Vazquez Neri
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

--
-- Colorscheme
local function setup_buffer_styles()
  local colorscheme =
    --"codedark"
    "edge"
    --"dracula"
    --"gruvbox"
  cmd.colorscheme(colorscheme)

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

return setup_buffer_styles
