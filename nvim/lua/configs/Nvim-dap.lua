return function()
    local dap = require("dap")
    dap.adapters.codelldb = function(on_adapter)
        local stdout = vim.loop.new_pipe(false)
        local stderr = vim.loop.new_pipe(false)

        -- CHANGE THIS!
        local cmd = "/home/daoist/.vscode/extensions/vadimcn.vscode-lldb-1.6.10/adapter/codelldb"
        -- local cmd = "/absolute/path/to/codelldb/extension/adapter/codelldb"

        local handle, pid_or_err
        local opts = {
            stdio = { nil, stdout, stderr },
            detached = true,
        }
        handle, pid_or_err = vim.loop.spawn(cmd, opts, function(code)
            stdout:close()
            stderr:close()
            handle:close()
            if code ~= 0 then
                print("codelldb exited with code", code)
            end
        end)
        assert(handle, "Error running codelldb: " .. tostring(pid_or_err))
        stdout:read_start(function(err, chunk)
            assert(not err, err)
            if chunk then
                local port = chunk:match("Listening on port (%d+)")
                if port then
                    vim.schedule(function()
                        on_adapter({
                            type = "server",
                            host = "127.0.0.1",
                            port = port,
                        })
                    end)
                else
                    vim.schedule(function()
                        require("dap.repl").append(chunk)
                    end)
                end
            end
        end)
        stderr:read_start(function(err, chunk)
            assert(not err, err)
            if chunk then
                vim.schedule(function()
                    require("dap.repl").append(chunk)
                end)
            end
        end)
    end
    dap.defaults.fallback.terminal_win_cmd = "10split new"
    dap.adapters.cppdbg = {
        type = "executable",
        command = "/home/daoist/.vscode/extensions/ms-vscode.cpptools-1.7.1/debugAdapters/bin/OpenDebugAD7",
        name = "cppdbg",
    }
    dap.adapters.lldb = {
        type = "executable",
        -- command = "lldb-mi", -- adjust as needed
        command = "/usr/bin/lldb-vscode", -- adjust as needed
        name = "lldb",
    }
    dap.configurations.cpp = {
        {
            name = "Launch file",
            -- type = "lldb",
            type = "codelldb",
            request = "launch",
            program = vim.fn.getcwd() .. "/" .. "${fileBasenameNoExtension}",
            -- cwd = "${workspaceFolder}",
            cwd = "${fileDirname}",
            stopOnEntry = false,
            -- terminal = "external",
            -- externalConsole= true,
            -- MIMode = "gdb",
            -- miDebuggerPath = "/usr/bin/gdb",
            -- args = {},
            -- console = "integratedTerminal",
            terminal = "integrated",
            -- runInTerminal = true,
        },
    }

    dap.configurations.c = dap.configurations.cpp
    dap.configurations.rust = dap.configurations.cpp
    dap.adapters.python = {
        type = "executable",
        command = "/home/daoist/.conda/envs/tools/bin/python",
        args = { "-m", "debugpy.adapter" },
    }
    dap.configurations.python = {
        {
            -- The first three options are required by nvim-dap
            type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
            request = "launch",
            name = "Launch file",
            -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

            program = "${file}", -- This configuration will launch the current file if used.
            pythonPath = function()
                -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
                -- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
                -- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
                local cwd = vim.fn.getcwd()
                if vim.fn.executable(cwd .. "/venv/bin/python") == 1 then
                    return cwd .. "/venv/bin/python"
                elseif vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
                    return cwd .. "/.venv/bin/python"
                else
                    return "/home/daoist/.conda/envs/d2l/bin/python3"
                end
            end,
            console = "integratedTerminal",
        },
    }
end
-- lua require('dap.ext.vscode').load_launchjs()
