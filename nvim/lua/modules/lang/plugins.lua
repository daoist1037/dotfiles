local M = {}

M.filetype = {
    "nathom/filetype.nvim",
    config = function()
        vim.g.did_load_filetypes = 1
        require("filetype").setup({
            overrides = {},
        })
    end,
}

M.trouble = {
    "folke/trouble.nvim",
    -- requires = { "kyazdani42/nvim-web-devicons", opt = true },
    -- after = "nvim-lspconfig",
    opt = true,
    cmd = { "Trouble", "TroubleToggle", "TroubleRefresh" },
    config = require("modules.lang.Trouble"),
}

M.symbols = {
    "simrat39/symbols-outline.nvim",
    -- opt = true,
    -- cmd = {"SymbolsOutline", "SymbolsOutlineOpen"},
    config = require("modules.lang.Symbolsoutline"),
    after = "nvim-lspconfig",
}

M.formatter = {
    "mhartington/formatter.nvim",
    config = require("modules.lang.Formatter"),
    after = "nvim-lspconfig",
}

return M