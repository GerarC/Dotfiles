return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				defaults = {
					selection_caret = " ",
					path_display = { "smart" },
				},
				extensions = {
					media_files = {
						filetypes = { "png", "webp", "jpg", "jpeg" },
						find_cmd = "fzf",
					},
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							previewer = true,
						}),
					},
				},
			})
			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<F6>", builtin.find_files, {})
			vim.keymap.set("n", "<F5", builtin.buffers, {})
			vim.keymap.set("n", "<F29>", builtin.live_grep, {})
			vim.keymap.set("n", "<F30>", builtin.help_tags, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
	{
		"nvim-telescope/telescope-project.nvim",
		config = function()
			require("telescope").load_extension("project")
			require("telescope").setup({
				extensions = {
					project = {
						base_dirs = {
							"~/Workspace",
						},
						hidden_files = true,
						theme = "dropdown",
						order_by = "asc",
						search_by = "title",
						sync_with_nvim_tree = true,
					},
				},
			})
		end,
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
	},
}
