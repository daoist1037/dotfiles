local M = {}
local from_vscode = function()
    require("luasnip.loaders.from_vscode").load()
end

M.lspconfig = {
    "neovim/nvim-lspconfig",
    config = require("configs.Nvim-lspconfig"),
    event = { "BufReadPre", "BufNewFile" },
    -- event = "BufRead",
}

M.lspsaga = {
    "tami5/lspsaga.nvim",
    config = require("configs.Lspsaga"),
    -- opt = true,
    after = "nvim-lspconfig",
    -- cmd = "Lspsaga",
}

M.snippets = {
    "rafamadriz/friendly-snippets",
    event = "InsertEnter",
}

M.cmp = {
    "hrsh7th/nvim-cmp",
    requires = {
        { "L3MON4D3/LuaSnip", after = "nvim-cmp", config = from_vscode },
        { "hrsh7th/cmp-nvim-lsp", after = "nvim-cmp" },
        { "hrsh7th/cmp-nvim-lsp-document-symbol", after = "nvim-cmp" },
        { "hrsh7th/cmp-cmdline", after = "nvim-cmp" },
        { "hrsh7th/cmp-buffer", after = "nvim-cmp" },
        { "hrsh7th/cmp-nvim-lua", after = "nvim-cmp" },
        { "hrsh7th/cmp-path", after = "nvim-cmp" },
        { "octaltree/cmp-look", after = "nvim-cmp" },
        { "f3fora/cmp-spell", after = "nvim-cmp" },
        { "saadparwaiz1/cmp_luasnip", after = "LuaSnip" },
        { "hrsh7th/cmp-nvim-lua", after = "nvim-cmp" },
        { "lukas-reineke/cmp-rg", after = "nvim-cmp" },
    },
    config = require("configs.Nvim-cmp"),
    after = "friendly-snippets",
    -- event = "InsertEnter *",
}

M.lspinstaller = {
    "williamboman/nvim-lsp-installer",
    opt = true,
    after = "nvim-lspconfig",
}

return M
