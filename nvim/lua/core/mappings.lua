local M = {}

-- local data_dir = vim.fn.stdpath("data")
-- local plenary_dir = data_dir .. "/site/pack/packer/opt/plenary.nvim"
-- local notify_dir = data_dir .. "/site/pack/packer/start/nvim-notify"
-- local plenary_st =not( vim.loop.fs_stat(plenary_dir))
-- local notify_st =not( vim.loop.fs_stat(notify_dir))

-- if plenary_st or notify_st then
--     return M
-- end

local async = {}
local notify = {}
local function pre()
    if not packer_plugins["plenary.nvim"] then
        vim.notify("module plenary isn't installed")
        return false
    end
    if not packer_plugins["nvim-notify"].loaded then
        vim.notify("module notify isn't loaded")
        return false
    end
    if not packer_plugins["plenary.nvim"].loaded then
        vim.cmd([[packadd plenary.nvim]])
    end
    async = require("plenary.async")
    notify = require("notify").async
    return true
end

M.dapui = function()
    if pre() == false then
        return
    end
    if packer_plugins["nvim-dap-ui"].loaded then
        require("dapui").toggle()
    else
        -- vim.api.nvim_command([[echo 'module dapui not load']])
        async.run(function()
            notify("module dapui not load", "error", { title = "dapui toggle", timeout = 1000 })
        end)
    end
end

M.dap = function(type)
    if pre() == false then
        return
    end
    pre()
    if packer_plugins["nvim-dap"].loaded then
        vim.api.nvim_command([[lua require'dap'.]] .. type .. [[()]])
    else
        async.run(function()
            notify("module dap not load", "error", { title = "dap " .. type, timeout = 1000 })
        end)
    end
end

M.yabstask = function(type)
    if pre() == false then
        return
    end
    if packer_plugins["yabs.nvim"].loaded then
        vim.api.nvim_command([[YabsTask ]] .. type)
    else
        async.run(function()
            notify("module yabs not load", "error", { title = "YabsTask " .. type, timeout = 1000 })
        end)
    end
end

M.bdelete = function(type)
    if pre() == false then
        return
    end
    if packer_plugins["close-buffers.nvim"].loaded then
        local pre = [[lua require('close_buffers').delete({type = ']]
        vim.api.nvim_command(pre .. type .. [['})]])
    else
        async.run(function()
            notify("module close-buffers not load", "error", { title = "BDelete " .. type, timeout = 1000 })
        end)
    end
end

return M
