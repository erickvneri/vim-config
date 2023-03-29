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
local opt = vim.opt

local function setup_indentation()
  -- 4-spaced indentation
    api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
      pattern = { "*.py", "*.vim", "*.sh", "*.rs", "*.sql" },
      callback = function()
        opt.tabstop = 4
        opt.softtabstop = 4
        opt.shiftwidth = 4
        opt.expandtab = true
        opt.autoindent = true
        opt.fileformat = "unix"
      end
    })

  -- 2-spaced indentation
  api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
    callback = function()
      opt.tabstop = 2
      opt.softtabstop = 2
      opt.shiftwidth = 2
      opt.expandtab = true
    end,
    pattern = {
      "*.js",
      "*.jsx",
      "*.ts",
      "*.tsx",
      "*.html",
      "*.css",
      "*.scss",
      "*.yaml",
      "*.yml",
      "*.md",
      "*.lua",
      "*.xml",
      "*.sol",
    }
  })
end

-- On save callbacks
local function setup_autocmd()
  api.nvim_create_autocmd("BufWrite", {
    pattern = { "*.py" },
    command = ":Black"
  })

  api.nvim_create_autocmd("Bufwrite", {
    command = ":Prettier",
    pattern = {
      "*.js",
      "*.jsx",
      "*.html",
      "*.css",
      "*.scss",
      "*.ts",
      "*.tsx",
      "*.yaml",
      "*.yml",
      "*.md"
    }
  })

  api.nvim_create_autocmd("BufWrite", {
    pattern = { "*.rs" },
    command = ":RustFmt"
  })
end

local function setup()
  assert(pcall(setup_indentation), "indentation setup failed")
  assert(pcall(setup_autocmd), "autocmd setup failed")
end

return setup
