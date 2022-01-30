vim.cmd("packadd packer.nvim")

local present, packer = pcall(require, "packer")

if not present then
    local packer_path = vim.fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"

    print("Cloning packer..")
    -- remove the dir before cloning
    vim.fn.delete(packer_path, "rf")
    vim.fn.system({
        "git",
        "clone",
        "https://github.com/wbthomason/packer.nvim",
        "--depth",
        "20",
        packer_path,
    })

    vim.cmd("packadd packer.nvim")
    present, packer = pcall(require, "packer")

    if present then
        print("Packer cloned successfully.")
    else
        error("Couldn't clone packer !\nPacker path: " .. packer_path)
    end
end

packer.init({
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "single" })
        end,
        prompt_border = "single",
    },
    git = {
        clone_timeout = 600, -- Timeout, in seconds, for git clones
    },
    auto_clean = true,
})

local use = packer.use
return packer.startup(function()
    -------------------------------------
    ------------ Packer -----------------
    -------------------------------------
    use({
        "wbthomason/packer.nvim",
        event = "VimEnter",
    })

    local ui = require("modules.ui")
    for _, v in pairs(ui) do
        use(v)
    end

    local lsp = require("modules.lsp")
    for _, v in pairs(lsp) do
        use(v)
    end

    local dap = require("modules.daps")
    for _, v in pairs(dap) do
        use(v)
    end

    local lang = require("modules.lang")
    for _, v in pairs(lang) do
        use(v)
    end

    local tool = require("modules.tool")
    for _, v in pairs(tool) do
        use(v)
    end

    local key = require("modules.key")
    for _, v in pairs(key) do
        use(v)
    end

    local edit = require("modules.edit")
    for _, v in pairs(edit) do
        use(v)
    end

end)
