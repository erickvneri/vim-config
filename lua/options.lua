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

