local M = {}

M.maps = {
    -- {'i', 'jk', '<Esc>' },
    { "n", "<backspace>", "<Cmd>nohl<CR>" },
    -- keep visual selection when (de)indenting
    { "v", "<", "<gv" },
    { "v", ">", ">gv" },
    -- Select last pasted/yanked text
    { "n", "g<C-v>", "`[v`]" },
    -- {"n", "j", "<Plug>(accelerated_jk_gj)"},
    -- {"n", "k", "<Plug>(accelerated_jk_gk)"},

    -- { "n", "<F1>", "<cmd>cclose<CR>" },
    -- { "n", "<F2>", "<cmd>lua require'core.mappings',yabstask('run')<CR>" },
    -- { "n", "<F3>", "<cmd>lua require'core.mappings'.yabstask('build')CR>" },
    -- { "n", "<F4>", "<cmd>lua require'core.mappings'.dapui()CR>" },
    -- { "n", "<F5>", "<cmd>lua require'core.mappings'.dap('continue')CR>" },
    -- { "n", "<F9>", "<cmd>lua require'core.mappings'.dap('toggle_breakpoint')CR>" },
    -- { "n", "<F10>", "<cmd><lua require'core.mappings'.dap('step_over')CR>" },
    -- { "n", "<F11>", "<cmd>lua require'core.mappings'.dap('step_into')<CR>" },
    -- { "n", "<F12>", "<cmd>lua require'core.mappings'.dap('disconnect')<CR><cmd>lua require'core.mappings'.dap('close')<CR>" },
}
return M
