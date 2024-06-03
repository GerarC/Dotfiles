local utils = require("utils")

local cmd = vim.cmd
local opt = utils.opt
local indent = 4
vim.g.mapleader = ","

cmd("syntax enable")
cmd("filetype plugin indent on")
opt("b", "expandtab", true)
opt("b", "shiftwidth", indent)
opt("b", "smartindent", true)
opt("b", "tabstop", indent)
opt("o", "shiftround", true)
opt("o", "hidden", true)
opt("o", "ignorecase", true)
opt("o", "scrolloff", 4)
opt("o", "shiftround", true)
opt("o", "smartcase", true)
opt("o", "splitbelow", true)
opt("o", "splitright", true)
opt("o", "wildmode", "list:longest")
opt("w", "number", true)
-- utils.opt('w', 'relativenumber', true)
opt("o", "clipboard", "unnamed,unnamedplus")

-- Highlight on yank
cmd("au TextYankPost * lua vim.highlight.on_yank {on_visual = false}")

-- Undodir
cmd([[
" guard for distributions lacking the persistent_undo feature.
if has('persistent_undo')
    " define a path to store persistent_undo files.
    let target_path = expand('~/.config/nvim/undodir')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call system('mkdir -p ' . target_path)
    endif

    " point Vim to the defined undo directory.
    let &undodir = target_path

    " finally, enable undo persistence.
    set undofile
endif

" number of undo saved
set undolevels=10000 " How many undos
set undoreload=10000 " number of lines to save for undo
set nocompatible
]])
