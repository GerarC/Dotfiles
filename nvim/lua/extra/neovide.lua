local g = vim.g

if g.neovide then
    -- Transparency
	g.neovide_transparency = 1.0

    -- Cursor animation
    g.neovide_cursor_animation_lenght = 0.13
	g.neovide_cursor_vfx_mode = "pixiedust"
	g.neovide_cursor_trail_lenght = 0.8
	g.neovide_cursor_vfx_opacity = 200
	g.neovide_cursor_vfx_particle_life = 1.7
	g.neovide_cursor_vfx_particle_density = 9.0

    -- Mouse
    g.neovide_hide_mouse_when_typing = true

    -- Font and theme
	vim.o.background = "dark"
	vim.o.termguicolors = true
	vim.o.guifont = "CaskaydiaCove Nerd Font Mono:h7.5"
end
