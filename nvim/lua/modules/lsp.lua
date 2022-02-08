local M = {}

local from_vscode = function()
    require("luasnip").config.set_config({
        history = true,
        updateevents = "TextChanged,TextChangedI",
    })
    require("luasnip.loaders.from_vscode").lazy_load()
end

M.lspconfig = {
    "neovim/nvim-lspconfig",
    config = require("configs.Nvim-lspconfig"),
    opt = true,
    -- after = "fidget.nvim"
    ft = { "cpp", "lua", "python", "c" },
    wants = {"cmp-nvim-lsp", "lsp_signature.nvim"},
    -- event = { "BufReadPre", "BufNewFile" },
    -- event = "BufRead",
}

M.lspsaga = {
    "tami5/lspsaga.nvim",
    config = require("configs.Lspsaga"),
    -- opt= true,
    after = "nvim-lspconfig",
}

M.snippets = {
    "rafamadriz/friendly-snippets",
    event = "InsertEnter",
}

M.cmp = {
    "hrsh7th/nvim-cmp",
    requires = {
        { "L3MON4D3/LuaSnip",                     after = "nvim-cmp", config = from_vscode },

        { "lukas-reineke/cmp-under-comparator",   after = "nvim-cmp"  },
        { "saadparwaiz1/cmp_luasnip",             after =  "nvim-cmp" },
        { "hrsh7th/cmp-nvim-lua",                 after =  "nvim-cmp" },
        { "hrsh7th/cmp-nvim-lsp",                 after =  "nvim-cmp" },
        { "hrsh7th/cmp-path",                     after =  "nvim-cmp" },
        -- { "f3fora/cmp-spell",                     after =  "nvim-cmp" },
        { "hrsh7th/cmp-buffer",                   after =  "nvim-cmp" },
        { "lukas-reineke/cmp-rg",                 after =  "nvim-cmp" },
        { "hrsh7th/cmp-nvim-lsp-document-symbol", after =  "nvim-cmp" },
        { "kdheepak/cmp-latex-symbols",           after =  "nvim-cmp" },
        { "hrsh7th/cmp-cmdline",                  after =  "nvim-cmp" },
        { "octaltree/cmp-look",                   after = "nvim-cmp"  },
        --
        -- { "lukas-reineke/cmp-under-comparator",after = "nvim-cmp" },
        -- { "L3MON4D3/LuaSnip", after = "nvim-cmp", config = from_vscode },
        -- { "saadparwaiz1/cmp_luasnip", after = "LuaSnip" },
        -- { "hrsh7th/cmp-nvim-lua", after = "LuaSnip" },
        -- { "hrsh7th/cmp-nvim-lsp", after = "cmp_luasnip" },
        -- { "hrsh7th/cmp-path", after = "cmp-nvim-lsp" },
        -- { "f3fora/cmp-spell", after = "cmp-path" },
        -- { "hrsh7th/cmp-buffer", after = "cmp-spell" },
        -- { "lukas-reineke/cmp-rg", after = "cmp-buffer" },
        -- { "hrsh7th/cmp-nvim-lsp-document-symbol", after = "cmp-buffer" },
        -- { "kdheepak/cmp-latex-symbols", after = "cmp-nvim-lsp-document-symbol" },
        -- -- { "hrsh7th/cmp-nvim-lsp" },
        -- { "hrsh7th/cmp-cmdline", after = "cmp-buffer" },
        -- { "octaltree/cmp-look", after = "nvim-cmp" },
    },
    config = require("configs.Nvim-cmp"),
    -- after = { "friendly-snippets", "lspkind-nvim" },
    after = { "friendly-snippets" },
}

M.lspinstaller = {
    "williamboman/nvim-lsp-installer",
    opt = true,
    cmd = "LspInstall",
}

return M
