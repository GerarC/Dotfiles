local g = vim.g

g.neovide_transparency = 1.0
g.neovide_cursor_vfx_mode = 'pixiedust'
g.neovide_cursor_trail_lenght = 0.8
g.neovide_cursor_vfx_opacity = 200
g.neovide_cursor_vfx_particle_life = 1.7
g.neovide_cursor_vfx_particle_density = 9.0

        -- let g:airline_theme='rose-pine'
vim.cmd [[
    if exists('g:neovide')
        syntax enable
        colorscheme rose-pine
        set background=dark
        set termguicolors
        set guifont=CaskaydiaCove\ Nerd\ Font:h10
    endif
]]
