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
    opt = true,
    -- event = "InsertEnter",
    -- config = require("configs.Lspkind"),
}

M.autopairs = {
    "windwp/nvim-autopairs",
    config = require("configs.Nvim-autopairs"),
    after = "nvim-cmp",
}

M.formatter = {
    "mhartington/formatter.nvim",
    config = require("configs.Formatter"),
    ft = { "cpp", "c", "lua", "python" },
    -- cmd = { "Format", "FormatWrite" },
}

M.fidget = {
    "j-hui/fidget.nvim",
    config = function()
        require("fidget").setup()
    end,
    -- opt = true,
    -- after = "nvim-lspconfig"
    ft = { "cpp", "c", "lua", "python" },
}

M.lsp_signature = {
    "ray-x/lsp_signature.nvim",
    opt = true,
}

return M

--     "folke/trouble.nvim",
