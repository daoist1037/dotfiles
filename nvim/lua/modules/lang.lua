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

M.kind = {
    "onsails/lspkind-nvim",
    event = "InsertEnter",
    config = require("configs.Lspkind"),
}

M.autopairs = {
    "windwp/nvim-autopairs",
    config = require("configs.Nvim-autopairs"),
    after = "nvim-cmp",
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
    cmd = { "Format", "FormatWrite" },
    -- after = "nvim-lspconfig",
}

M.fidget = {
    "j-hui/fidget.nvim",
    config = function()
        require("fidget").setup()
    end,
    ft = { "cpp", "c", "lua", "python" },
}

return M

--     "folke/trouble.nvim",
