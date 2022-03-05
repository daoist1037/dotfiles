local edit = {}
edit["max397574/better-escape.nvim"] = {
    config = function()
        require("better_escape").setup()
    end,
    event = "InsertEnter",
}
edit["phaazon/hop.nvim"] = {
    -- as = "hop",
    config = function()
        require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
    end,
    cmd = { "HopLine", "HopLineStart", "HopWord", "HopPattern", "HopChar1", "HopChar2" },
}
edit["rhysd/accelerated-jk"] = {
    event = "CursorMoved",
    -- event = "BufRead",
    config = function()
        vim.cmd([[
            nmap j <Plug>(accelerated_jk_gj)
            nmap k <Plug>(accelerated_jk_gk)
       ]])
    end,
}
edit["machakann/vim-highlightedyank"] = {
    event = "TextYankPost",
}
edit["b3nj5m1n/kommentary"] = {
    config = require("configs.others").kommentary,
    event = { "BufReadPre", "BufNewFile" },
}
edit["edluffy/specs.nvim"] = {
    -- event = { "BufReadPre", "BufNewFile" },
    event = "CursorMoved",
    config = require("configs.others").specs,
}
edit["simrat39/symbols-outline.nvim"] = {
    cmd = { "SymbolsOutline", "SymbolsOutlineOpen" },
    config = require("configs.others").symbols,
    -- after = "nvim-lspconfig",
}
edit["abecodes/tabout.nvim"] = {
    wants = { "nvim-treesitter" },
    after = { "nvim-cmp" },
    config = require("configs.others").tabout,
}
edit["romainl/vim-cool"] = {
    opt = true,
    -- event = { "CursorMoved", "InsertEnter" },
    event = { "BufReadPre", "BufNewFile" },
}
return edit
--     "abecodes/tabout.nvim",
--     "blackCauldron7/surround.nvim",
