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
    config = require("configs.Trouble"),
}

M.symbols = {
    "simrat39/symbols-outline.nvim",
    -- opt = true,
    -- cmd = {"SymbolsOutline", "SymbolsOutlineOpen"},
    config = require("configs.Symbolsoutline"),
    after = "nvim-lspconfig",
}

M.formatter = {
    "mhartington/formatter.nvim",
    config = require("configs.Formatter"),
    after = "nvim-lspconfig",
}


-- M.asynctasks = {
--     "skywind3000/asynctasks.vim",
--     after = "asyncrun.vim",
--     config = function()
--         vim.g.asyncrun_rootmarks = { ".git", ".svn", ".root", ".project", ".hg" }
--     end,
-- }
-- M.asyncrun = {
--     "skywind3000/asyncrun.vim",
--     cmd = "AsyncTask",
-- }

return M
