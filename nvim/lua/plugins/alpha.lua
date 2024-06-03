return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local status_ok, alpha = pcall(require, "alpha")
		if not status_ok then
			return
		end

		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                     ]],
			[[       ████ ██████           █████      ██                     ]],
			[[      ███████████             █████                             ]],
			[[      █████████ ███████████████████ ███   ███████████   ]],
			[[     █████████  ███    █████████████ █████ ██████████████   ]],
			[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
			[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
			[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
		}

		dashboard.section.buttons.val = {
			dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
			dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("p", "  Find project", ":Telescope project <CR>"),
			dashboard.button("r", "  Recently used files", ':Telescope oldfiles cwd="%:p:h"<CR>'),
			dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
			dashboard.button("j", "  Jump to bookmarks", ":Telescope jumplist <CR>"),
			dashboard.button("c", "  Configuration", ":e $MYVIMRC | :cd %:p:h | wincmd k | pwd<CR>"),
			dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
		}

		local function footer()
			-- Number of plugins
			local plugin_count = vim.fn.len(vim.fn.globpath(vim.fn.stdpath("data") .. "/lazy", "*", 0, 1))
			local datetime = os.date("%d-%m-%Y %H:%M:%S")
			local plugins_text = "   "
				.. plugin_count
				.. " plugins"
				.. "   v"
				.. vim.version().major
				.. "."
				.. vim.version().minor
				.. "."
				.. vim.version().patch
				.. "   "
				.. datetime

			-- Quote
			local fortune = require("alpha.fortune")
			local quote = table.concat(fortune(), "\n")

			return plugins_text .. "\n" .. quote
		end

		dashboard.section.footer.val = footer()

		dashboard.section.footer.opts.hl = "Type"
		dashboard.section.header.opts.hl = "Include"
		dashboard.section.buttons.opts.hl = "Keyword"

		dashboard.opts.opts.noautocmd = true
		alpha.setup(dashboard.opts)
	end,
}
