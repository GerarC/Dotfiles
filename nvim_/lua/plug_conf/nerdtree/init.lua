local utils = require('utils')

vim.cmd [[
    let NERDTreeShowHidden = 1
    :nnoremap <F7> :NERDTreeToggle<CR>
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
]]
