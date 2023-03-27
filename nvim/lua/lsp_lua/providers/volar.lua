local lspconfig = require("lspconfig")
local lspconfig_util = require("lspconfig.util")
local cmp_capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)
cmp_capabilities.textDocument.completion.completionItem.snippetSupport = true
cmp_capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = { "documentation", "detail", "additionalTextEdits" },
}

local function get_typescript_lib_path(root_dir)
    local project_root = lspconfig_util.find_node_modules_ancestor(root_dir)
    return project_root
            and (lspconfig_util.path.join(project_root, "node_modules", "typescript", "lib"))
        or ""
end

lspconfig.volar.setup({
    init_options = {
        typescript = {
            tsdk = "/usr/lib/node_modules/typescript/lib",
            serverPath = '/usr/lib/node_modules/typescript/lib/tsserverlibrary.js',
        },
    },
    on_new_config = function(new_config, new_root_dir)
        new_config.init_options.typescript.tsdk = get_typescript_lib_path(new_root_dir)
    end,
    capabilities = cmp_capabilities,
    -- on_attach = on_attach,
    flags = { debounce_text_changes = 150 },
    settings = {
        volar = { autoCompleteRefs = true },
    },
})
