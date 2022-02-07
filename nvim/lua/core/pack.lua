local present = nil
local packer = nil

local data_dir = vim.fn.stdpath("data")
local compile_dir = vim.fn.stdpath("data") .. "/site/lua"

-- local compile_path = compile_dir .. "/packer_compiled.lua"
local compile_path = compile_dir .. "/packer_compiled.vim"
local back_path = compile_dir .. "/_back.lua"
local plugins_path = compile_dir .. "/_plugins.lua"
local packer_path = data_dir .. "/site/pack/packer/opt/packer.nvim"
local modules = { "daps", "edit", "lang", "lsp", "tool", "ui" }

local plugins = {}

local function syncAfter()
    local lines = {}
    local lnum = 0
    lines[#lines + 1] = "vim.cmd [[packadd packer.nvim]]\n"


    -- if vim.fn.filereadable(compile_path) ~= 1 then
    --     local file = io.open(compile_path, "w")
    --     file:close()
    --     flag = false
    -- end
    for line in io.lines(compile_path) do
        lnum = lnum + 1
        if lnum > 15 then
            lines[#lines + 1] = line .. "\n"
            if line == "END" then
                break
            end
        end
    end
    table.remove(lines, #lines)
    if vim.fn.filereadable(plugins_path) == 1 then
        os.rename(plugins_path, back_path)
    end
    local file = io.open(plugins_path, "w")
    for _, line in ipairs(lines) do
        file:write(line)
    end
    -- file:write("end\n")
    file:close()
    os.remove(compile_path)
    vim.notify("compile.lua has been converted")
end

local function init()
    print("Cloning packer..") -- remove the dir before cloning
    vim.fn.delete(packer_path, "rf")
    vim.fn.system({
        "git",
        "clone",
        "--depth",
        "20",
        "https://github.com/wbthomason/packer.nvim",
        packer_path,
    })
end

local function start_use()
    -- local packer = require('packer')
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
        config = {
            compile_path = compile_path,
            disable_commands = true,
            auto_reload_compiled = false,
            display = {
                open_fn = function()
                    return require("packer.util").float({ border = "none" })
                end,
            },
            git = {
                clone_timeout = 600, -- Timeout, in seconds, for git clones
            },
            auto_clean = true,
        },
    })
end

local function load_packer()
    vim.cmd("packadd packer.nvim")
    present, packer = pcall(require, "packer")
    if not present then
        error(" packer don't exit  !\nPacker path: " .. packer_path)
        return false
    end
    if vim.fn.isdirectory(compile_dir) ~= 1 then
        os.execute("mkdir -p " .. compile_dir)
    end
    -- packer.init({
    --     compile_path = compile_path,
    --     disable_commands = true,
    --     auto_reload_compiled = false,
    --     display = {
    --         open_fn = function()
    --             return require("packer.util").float({ border = "none" })
    --         end,
    --     },
    --     git = {
    --         clone_timeout = 600, -- Timeout, in seconds, for git clones
    --     },
    --     auto_clean = true,
    -- })
    start_use()
    return true
end

function plugins.start()
    load_packer()
end

function plugins.ensure_installed()
    if vim.fn.empty(vim.fn.glob(packer_path)) > 0 then
        init()
        if not load_packer() then
            return false
        end
        require("packer").sync()
        -- syncAfter()
    end
    return true
end

function plugins.magic_compile()
    load_packer()
    -- require("packer").compile()
    require("packer").compile(compile_path)
    -- syncAfter()
end

function plugins.magic_sync()
    load_packer()
    require("packer").sync()
    -- syncAfter()
end

function plugins.magic_after()
    syncAfter()
end

function plugins.load_compile()
    if vim.fn.filereadable(plugins_path) == 1 then
        require("_plugins")
    else
        assert("Missing packer compile file Run PackerCompile Or PackerInstall to fix")
    end
    vim.cmd([[command! PackerMagicCompile lua  require('core.pack').magic_compile() ]])
    vim.cmd([[command! PackerMagicSync lua require('core.pack').magic_sync() ]])
    vim.cmd([[command! PackerConvert lua require('core.pack').magic_after() ]])
end

return plugins
