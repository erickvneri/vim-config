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
local cmd = vim.cmd

--
-- Language Buffer Indentations
local function setup()
  -- 4-spaced indentation
  cmd [[
  au BufNewFile,BufRead *.py,*.vim,*.sh,*.rs,*.sql
    \ set tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ expandtab
    \ autoindent
    \ fileformat=unix]]
  -- On save Python
  cmd [[autocmd BufWrite *.py :Black]]

  -- 2-spaced indentation
  cmd [[au BufNewFile,BufRead *.js,*.jsx,*.html,*.css,*.scss,*.ts,*.tsx,*.yaml,*.yml,*.md,*.lua,*.xml
    \ set tabstop=2
    \ softtabstop=2
    \ shiftwidth=2
    \ expandtab]]
  -- On save JS, and others
  --cmd [[autocmd BufWrite *.js,*.jsx,*.html,*.css,*.scss,*.ts,*.tsx,*.yaml,*.yml,*.md :Prettier]]
end

return setup
