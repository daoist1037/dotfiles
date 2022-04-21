local lsp = {}
local from_vscode = function()
    require("luasnip").config.set_config({
        history = true,
        updateevents = "TextChanged,TextChangedI",
    })
    require("luasnip.loaders.from_vscode").lazy_load()
end
lsp["neovim/nvim-lspconfig"] = {
    -- config = require("configs.lspconfig"),
    opt = true,
    -- after = "fidget.nvim"
    -- ft = { "cpp", "lua", "python", "c" },
    -- wants = { "cmp-nvim-lsp", "lsp_signature.nvim", },
    -- event = { "BufReadPre", "BufNewFile" },
    -- event = "BufRead",
}
lsp["tami5/lspsaga.nvim"] = {
    config = require("configs.lspsaga"),
    after = "nvim-lsp-installer",
    opt = true,
    -- after = "nvim-lspconfig",
}
lsp["rafamadriz/friendly-snippets"] = {
    opt = true,
}
lsp["hrsh7th/nvim-cmp"] = {
    requires = {
        { "L3MON4D3/LuaSnip", after = "nvim-cmp", config = from_vscode },
        { "lukas-reineke/cmp-under-comparator", after = "nvim-cmp" },
        { "saadparwaiz1/cmp_luasnip", after = "nvim-cmp" },
        { "hrsh7th/cmp-nvim-lua", after = "nvim-cmp" },
        { "hrsh7th/cmp-nvim-lsp", after = "nvim-cmp" },
        { "hrsh7th/cmp-path", after = "nvim-cmp" },
        { "hrsh7th/cmp-buffer", after = "nvim-cmp" },
        { "lukas-reineke/cmp-rg", after = "nvim-cmp" },
        -- { "hrsh7th/cmp-nvim-lsp-document-symbol", after = "nvim-cmp" },
        -- { "kdheepak/cmp-latex-symbols", after = "nvim-cmp" },
        { "hrsh7th/cmp-cmdline", after = "nvim-cmp" },
        -- { "octaltree/cmp-look", after = "nvim-cmp" },
        --
    },
    config = require("configs.completion"),
    event = "InsertEnter",
    wants = { "friendly-snippets", "lspkind-nvim" },
}
lsp["williamboman/nvim-lsp-installer"] = {
    opt = true,
    -- ft = { "cpp", "lua", "python", "c", "java" },
    ft = { "cpp", "lua", "python", "c" },
    wants = { "cmp-nvim-lsp", "lsp_signature.nvim", "nvim-lspconfig", "vim-illuminate" },
    -- wants = { "cmp-nvim-lsp", "lsp_signature.nvim", "nvim-lspconfig" },
    config = require("configs.lspconfig"),
    -- cmd = "LspInstall",
}
return lsp
--     "neoclide/coc.nvim",
