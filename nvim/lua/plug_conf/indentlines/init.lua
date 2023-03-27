local g = vim.g

g.indentLine_enabled = 0

vim.cmd [[
    :noremap <F11> :IndentLinesToggle<CR>
]]
