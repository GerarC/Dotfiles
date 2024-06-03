local utils = require("utils")

local map = utils.map

-- Custom Maps
map("n", "<C-l>", "<cmd>noh<CR>") -- Clear highlights
map("n", ";", "A;<esc>") -- put a ;
-- map('i', 'ii', '<Esc>')           -- ii to escape

-- Term maps
map("n", "<Leader>vt", "<cmd>vsplit term://zsh<CR>")

-- Auto complete Parenthesis and more
map("i", "(", "()<Esc>ha")
map("i", "{", "{}<Esc>ha")
map("i", "[", "[]<Esc>ha")

-- Buffers
map("n", "bn", "<cmd>bn<CR>")
map("n", "bp", "<cmd>bp<CR>")
map("n", "bd", "<cmd>bd<CR>")

-- Change dir to actual dir
map("n", "cd", "<cmd>cd %:p:h<CR>")

-- Telescope projects
map("n", "<Leader>p", "<cmd>Telescope project<CR>")
map("n", "<Leader>t", "<cmd>TodoTelescope<CR>")
