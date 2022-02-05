local present, packer = pcall(require, "packer")

local data_dir = vim.fn.stdpath("data")
local config_dir = vim.fn.stdpath("config")
local modules = { "daps", "edit", "lang", "lsp", "tool", "ui" }
if not present then
    local packer_path = data_dir .. "/site/pack/packer/opt/packer.nvim"

    print("Cloning packer..") -- remove the dir before cloning
    vim.fn.delete(packer_path, "rf")
    vim.fn.system({ "git", "clone", "https://github.com/wbthomason/packer.nvim", "--depth", "20", packer_path })

    vim.cmd("packadd packer.nvim")
    present, packer = pcall(require, "packer")

    if present then
        print("Packer cloned successfully.")
    else
        error("Couldn't clone packer !\nPacker path: " .. packer_path)
    end
    packer.init({
        -- compile_path = config_dir .. "/lua/compiled.lua",
        display = {
            open_fn = function()
                return require("packer.util").float({ border = "none" })
            end,
            prompt_border = "none",
        },
        git = {
            clone_timeout = 600, -- Timeout, in seconds, for git clones
        },
        auto_clean = true,
    })
    packer.reset()
    local use = packer.use
    use({ "wbthomason/packer.nvim", opt = true })
    local s2t = function(module)
        return { table.concat(module, ",", 1, 1), opt = true }
    end
    packer.startup({
        function()
            use({
                "wbthomason/packer.nvim",
            })
            for _, i in pairs(modules) do
                for _, j in pairs(require("modules." .. i)) do
                    use(s2t(j))
                end
            end
        end,
        -- config = {
        --     compile_path = config_dir .. "/lua/compiled.lua",
        -- },
    })
    -- packer.compile()
    packer.install()
    return
end

packer.init({
    compile_path = config_dir .. "/lua/compiled.lua",
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "none" })
        end,
        prompt_border = "none",
    },
    git = {
        clone_timeout = 600, -- Timeout, in seconds, for git clones
    },
    auto_clean = true,
})
local use = packer.use
packer.startup({
    function()
        use({
            "wbthomason/packer.nvim",
            -- event = "VimEnter",
        })
        for _, i in pairs(modules) do
            for _, j in pairs(require("modules." .. i)) do
                use(j)
            end
        end
    end,
})
local compilel_ok, _ = pcall(require, "compiled")
