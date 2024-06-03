return {
    {
        "nvim-telescope/telescope-file-browser.nvim",
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
    },
    {
        "nvim-telescope/telescope-project.nvim",
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.6",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("telescope").setup({
                defaults = {
                    selection_caret = " ",
                    path_display = { "smart" },
                    file_ignore_patterns = { ".git/", ".cache", "%.o", "%.a", "%.out", "%.class",
                        "%.pdf", "%.mkv", "%.mp4", "%.zip" },
                },
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
            vim.keymap.set("n", "<F29>", builtin.live_grep, {})
            vim.keymap.set("n", "<F30>", builtin.help_tags, {})
            require("telescope").load_extension("ui-select")
            require("telescope").load_extension("project")
        end,
    },
}
