-- Map leader to comma
vim.g.mapleader = ','


local fn = vim.fn
local execute = vim.api.nvim_command

-- Sensible defaults
require('settings')

-- Auto install packer.nvim if not exists

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end

vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile'


-- Install plugins
require('plugins')
vim.cmd 'luafile ~/.config/nvim/lua/plugins.lua'
vim.cmd 'PackerInstall'

-- Key mappings
require('keymaps')

-- Setup Lua language server using submodule
require('lsp_lua')

-- Another options, grouping confs in one folder
require('config')

-- Plugins Configurations
require('plug_conf')

