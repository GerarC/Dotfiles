local dap = require( 'dap' )
local map = require ('utils').map

dap.adapters.lldb = {
    type = 'executable',
    command = '/usr/bin/lldb-vscode', -- adjust as needed, must be absolute path
    name = 'lldb'
}

dap.configurations.cpp = {
  {
    name = 'Launch',
    type = 'lldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},

    -- 💀
    -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
    --
    --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
    --
    -- Otherwise you might get the following error:
    --
    --    Error on launch: Failed to attach to the target process
    --
    -- But you should be aware of the implications:
    -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
    -- runInTerminal = false,
  },
}


dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

dap.defaults.fallback.external_terminal = {
    command = '/usr/bin/alacritty';
    args = {'-e'};
}

-- Keymaps

map('n', '<Leader>5', '<cmd>lua require"dap".continue()<CR>')
map('n', '<Leader>8', '<cmd>lua require"dap".step_over()<CR>')
map('n', '<Leader>9', '<cmd>lua require"dap".step_into()<CR>')
map('n', '<Leader>0', '<cmd>lua require"dap".step_out()<CR>')
map('n', '<Leader>b', '<cmd>lua require"dap".toggle_breakpoint()<CR>')
map('n', '<Leader>B', '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>')
map('n', '<Leader>lp', '<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>')
map('n', '<Leader>dr', '<cmd>lua require"dap".repl.open()<CR>')
map('n', '<Leader>dl', '<cmd>lua require"dap".run_last()<CR>')
