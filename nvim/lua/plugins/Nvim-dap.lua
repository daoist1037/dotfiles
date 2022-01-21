return function()
    local dap = require('dap')
    dap.adapters.lldb = {
        type = 'executable',
        command = '/usr/bin/gdb', -- adjust as needed
        name = "gdb"
    }
    dap.configurations.cpp = {
        {
            name = "Launch",
            type = "gdb",
            request = "launch",
            program = vim.fn.getcwd() .. '/' .. '${fileBasenameNoExtension}.out',
            --[[ program = function()
                return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
            end, ]]
            cwd = '${workspaceFolder}',
            stopOnEntry = false,
            args = {},
            runInTerminal = true,
        },
    }
    -- If you want to use this for rust and c, add something like this:

    dap.configurations.c = dap.configurations.cpp
    dap.configurations.rust = dap.configurations.cpp
    dap.adapters.python = {
        type = 'executable';
        command = '/home/daoist/.conda/envs/tools/bin/python';
        args = { '-m', 'debugpy.adapter' };
    }
    dap.configurations.python = {
        {
            -- The first three options are required by nvim-dap
            type = 'python'; -- the type here established the link to the adapter definition: `dap.adapters.python`
            request = 'launch';
            name = "Launch file";

            -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

            program = "${file}"; -- This configuration will launch the current file if used.
            pythonPath = function()
                -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
                -- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
                -- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
                local cwd = vim.fn.getcwd()
                if vim.fn.executable(cwd .. '/venv/bin/python') == 1 then
                    return cwd .. '/venv/bin/python'
                elseif vim.fn.executable(cwd .. '/.venv/bin/python') == 1 then
                    return cwd .. '/.venv/bin/python'
                else
                    return '/home/daoist/.conda/envs/d2l/bin/python3'
                end
            end;
            console = "integratedTerminal",
        },
    }
end