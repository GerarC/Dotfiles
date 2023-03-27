local util = require 'lspconfig.util'

local bin_name = 'pyright-langserver'
local cmd = { bin_name, '--stdio' }

local root_files = {
  'pyproject.toml',
  'setup.py',
  'setup.cfg',
  'requirements.txt',
  'Pipfile',
  'pyrightconfig.json',
}

local function organize_imports()
  local params = {
    command = 'pyright.organizeimports',
    arguments = { vim.uri_from_bufnr(0) },
  }
  vim.lsp.buf.execute_command(params)
end

require('lspconfig').pyright.setup{
    cmd = cmd,
    filetypes = { 'python' },
    root_dir = util.root_pattern(unpack(root_files)),
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true
            },
        },
    },
    commands = {
    PyrightOrganizeImports = {
            organize_imports,
            description = 'Organize Imports',
        },
    },
    single_file_support = true
}
