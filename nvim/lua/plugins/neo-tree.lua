return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				visible = true,
				show_hidden_count = true,
				hide_dotfiles = false,
				hide_gitignored = true,
				hide_by_name = {
					".git",
				},
				never_show = {},
			},
		})
		vim.keymap.set("n", "<F7>", "<cmd>Neotree filesystem toggle left<cr>")
		vim.keymap.set("n", "<F5>", "<cmd>Neotree buffers toggle float<cr>")
	end,
}
