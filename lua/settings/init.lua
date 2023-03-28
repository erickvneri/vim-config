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
-- Setup modules
local setup_buffer_styles = require("settings.setup_buffer_styles")
local setup_buffer_language_indentations = require("settings.setup_buffer_language_indentations")
local setup_vimfugitive = require("settings.setup_vimfugitive")
local setup_lsp = require("settings.setup_lsp")

local function setup()
  setup_buffer_styles()
  setup_buffer_language_indentations()
  setup_vimfugitive()
  setup_lsp()
  require'lspconfig'.solidity_ls.setup{}
end

return { setup = setup }

