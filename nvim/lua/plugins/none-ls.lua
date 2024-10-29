return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
    },
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                require("none-ls.diagnostics.eslint_d").with {
                    condition = function (utils)
                        return utils.root_has_file "eslint.config.js"
                    end
                },
                null_ls.builtins.formatting.prettierd,
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,
                null_ls.builtins.formatting.clang_format.with({
                    extra_args = {
                        [[-style="{BasedOnStyle: LLVM, UseTab: always, IndentWith: 4, TabWidth: 4}"]],
                    },
                }),
            },
        })

        vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, {})
    end,
}
