local vim_path = vim.fn.stdpath("config")
local data_dir = vim.fn.stdpath("data") .. "/site/"
local modules_dir = vim_path .. "/lua/modules"
local packer_compiled = vim_path .. "/plugin/_compiled.lua"
local packer = nil
local modules = { "daps", "edit", "lang", "lsp", "tool", "ui" }
local Packer = {}
Packer.__index = Packer

function Packer:load_packer()
    if not packer then
        vim.api.nvim_command("packadd packer.nvim")
        packer = require("packer")
    end
    packer.init({
        compile_path = packer_compiled,
        git = { clone_timeout = 120 },
        disable_commands = true,
        max_jobs = 20,
        display = {
            open_fn = function()
                return require("packer.util").float({ border = "rounded" })
            end,
        },
    })
    packer.reset()
    local use = packer.use
    packer.startup({
        function()
            use({
                "wbthomason/packer.nvim",
                opt = true,
            })
            for _, i in pairs(modules) do
                for _, j in pairs(require("modules." .. i)) do
                    use(j)
                end
            end
        end,
    })
end

function Packer:init_ensure_plugins()
    local packer_dir = data_dir .. "pack/packer/opt/packer.nvim"
    local state = vim.loop.fs_stat(packer_dir)
    if not state then
        print("Cloning packer..")
        vim.fn.system({
            "git",
            "clone",
            "--depth",
            "20",
            "https://github.com/wbthomason/packer.nvim",
            packer_dir,
        })
        vim.loop.fs_mkdir(data_dir .. "lua", 511, function()
            assert("make compile path dir faield")
        end)
        self:load_packer()
        packer.install()
    end
end

local plugins = setmetatable({}, {
    __index = function(_, key)
        if not packer then
            Packer:load_packer()
        end
        return packer[key]
    end,
})

function plugins.ensure_plugins()
    Packer:init_ensure_plugins()
end

function plugins.convert_compile_file()
    local lines = {}
    local lnum = 0

    if vim.fn.empty(vim.fn.glob(packer_compiled)) > 0 then
        return
    end
    for line in io.lines(packer_compiled) do
        lnum = lnum + 1
        if lnum > 7 then
            lines[#lines + 1] = line .. "\n"
        end
    end
    lines[#lines + 1] = "END"
    table.remove(lines, #lines)

    local file = io.open(packer_compiled, "w")
    for _, line in ipairs(lines) do
        file:write(line)
    end
    file:close()
    vim.notify("convert complete")
end

function plugins.magic_compile()
    plugins.compile()
end

function plugins.auto_compile()
    local file = vim.fn.expand("%:p")
    if file:match(modules_dir) then
        plugins.clean()
        plugins.compile()
        plugins.convert_compile_file()
    end
end

function plugins.load_compile()
    vim.cmd([[command! PackerCompile lua require('pack').magic_compile()]])
    vim.cmd([[command! PackerInstall lua require('pack').install()]])
    vim.cmd([[command! PackerUpdate lua require('pack').update()]])
    vim.cmd([[command! PackerSync lua require('pack').sync()]])
    vim.cmd([[command! PackerClean lua require('core.pack').clean()]])
    vim.cmd([[command! PackerConvert lua require('pack').convert_compile_file()]])
    vim.cmd([[autocmd User PackerComplete lua require('pack').magic_compile()]])
    vim.cmd([[command! PackerStatus lua  require('pack').status()]])
end

return plugins
