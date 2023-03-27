local utils = require('utils')

local cmd = vim.cmd
local g = vim.g

utils.opt('o', 'termguicolors', true)
utils.opt('o', 'background', 'dark')
vim.opt.signcolumn = 'yes'

g.tokyonight_style = 'night'

-- cmd 'colorscheme gruvbox-material'
cmd [[
    hi normal guibg=NONE ctermbg=NONE
    hi Pmenu guifg=#ECF0C1 guibg=#1B1C36
    hi PmenuSel guifg=#1B1C36 guibg=#ECF0C1

]]

