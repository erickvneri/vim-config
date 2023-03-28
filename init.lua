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
--
-- This goes to README
-- packer setup: https://github.com/wbthomason/packer.nvim#quickstart

-- Main settings
--
-- Documentations
-- https://neovim.io/doc/user/options.html
-- https://neovim.io/doc/user/options.html#option-summary
-- https://neovim.io/doc/user/lua.html

-- Load environment
require("options")
require("plugins")
require("mappings")
require("settings").setup()

