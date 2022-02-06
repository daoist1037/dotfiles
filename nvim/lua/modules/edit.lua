local M = {}

M.escape = {
    "max397574/better-escape.nvim",
    config = function()
        require("better_escape").setup()
    end,
    event = "InsertEnter",
}

M.hop = {
    "phaazon/hop.nvim",
    -- as = "hop",
    config = function()
        require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
    end,
    cmd = { "HopLine", "HopLineStart", "HopWord", "HopPattern", "HopChar1", "HopChar2" },
}
M.jk = {
    "rhysd/accelerated-jk",
    event = "CursorMoved",
    -- event = "BufRead",
    config = function()
        vim.cmd([[
            nmap j <Plug>(accelerated_jk_gj)
            nmap k <Plug>(accelerated_jk_gk)
       ]])
    end,
}

M.highlightedyank = {
    "machakann/vim-highlightedyank",
    event = "TextYankPost",
}

M.kommentary = {
    "b3nj5m1n/kommentary",
    config = require("configs.Kommentary"),
    event = { "BufReadPre", "BufNewFile" },
}

M.specs = {
    "edluffy/specs.nvim",
    -- event = { "BufReadPre", "BufNewFile" },
    event = "CursorMoved",
    config = require("configs.Specs"),
}

M.surround = {
    "blackCauldron7/surround.nvim",
    config = function()
        require("surround").setup({ mappings_style = "sandwich" })
    end,
    event = "BufRead",
    --- add: sa{motion/textobject}{delimiter}
    --- delete: sd{delimiter}
    --- replace: sr{old}{new}
    --- ss repeats last surround command.
}
M.symbols = {
    "simrat39/symbols-outline.nvim",
    cmd = { "SymbolsOutline", "SymbolsOutlineOpen" },
    config = require("configs.Symbolsoutline"),
    -- after = "nvim-lspconfig",
}

M.tabout = {
    "abecodes/tabout.nvim",
    wants = {"nvim-treesitter"},
    after = {"nvim-cmp"},
    config = require("configs.Tabout")
}

M.cool = {
    "romainl/vim-cool",
    opt = true,
    -- event = { "CursorMoved", "InsertEnter" },
    event = { "BufReadPre", "BufNewFile" },
}

-- "tabout" is incompatible with "nvim-autopairs"
return M
--     "abecodes/tabout.nvim",
