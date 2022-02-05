local present = nil
local packer = nil
local packer_bootstrap = nil
local data_dir = vim.fn.stdpath("data")
local config_dir = vim.fn.stdpath("config")
local modules = { "daps", "edit", "lang", "lsp", "tool", "ui" }

-- local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local packer_path = data_dir .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(packer_path)) > 0 then
    print("Cloning packer..") -- remove the dir before cloning
    vim.fn.delete(packer_path, "rf")
    -- vim.fn.system({ "git", "clone", "https://github.com/wbthomason/packer.nvim", "--depth", "20", packer_path })
    packer_bootstrap = vim.fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        packer_path,
    })

    vim.cmd("packadd packer.nvim")
    present, packer = pcall(require, "packer")

    if present then
        print("Packer cloned successfully.")
    else
        error("Couldn't clone packer !\nPacker path: " .. packer_path)
        print("Please check your Internet")
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
    packer.reset()
    local use = packer.use
    -- use({ "wbthomason/packer.nvim" })
    local s2t = function(module)
        return { table.concat(module, ",", 1, 1), opt = true }
    end
    packer.startup(
        function()
            use({
                "wbthomason/packer.nvim",
            })
            -- use({
            --     "lewis6991/impatient.nvim",
            --     config = function()
            --         require("impatient")
            --     end,
            -- })
            for _, i in pairs(modules) do
                for _, j in pairs(require("modules." .. i)) do
                    -- use(s2t(j))
                    use(j)
                end
            end
            if packer_bootstrap then
                require("packer").sync()
            end
        end
        -- config = {
        --     compile_path = config_dir .. "/lua/compiled.lua",
        -- },
    )
    -- packer.compile()
    -- packer.install()
    return
end
packer = require("packer")
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
packer.startup(function()
    use({
        "wbthomason/packer.nvim",
    })
    -- use({
    --     "lewis6991/impatient.nvim",
    --     config = function()
    --         require("impatient")
    --     end,
    -- })
    for _, i in pairs(modules) do
        for _, j in pairs(require("modules." .. i)) do
            use(j)
        end
    end
end)
-- local compilel_ok, _ = pcall(require, "compiled")
-- if not compilel_ok then
--     vim.notify([[compile don't load]])
-- end
-- require("compiled")
--
--
--
-- config = {
--     -- Move to lua dir so impatient.nvim can cache it
--     compile_path = vim.fn.stdpath("config") .. "/lua/compiled.lua",
-- },
