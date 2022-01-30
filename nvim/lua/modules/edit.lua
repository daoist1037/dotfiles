local M = {}

M.escape = {
    "max397574/better-escape.nvim",
    config = function()
        require("better_escape").setup()
    end,
    event = "InsertEnter",
}

M.jk = {
    "rhysd/accelerated-jk",
    event = "BufRead",
    -- opt = true,
}

M.highlightedyank = {
    "machakann/vim-highlightedyank",
    event = "TextYankPost *",
    -- event = "TextYankPost",
}
M.autopairs = {
    "windwp/nvim-autopairs",
    config = require("configs.Nvim-autopairs"),
    after = "nvim-cmp",
    -- event = "InsertEnter",
}
M.kommentary = {
    "b3nj5m1n/kommentary",
    config = require("configs.Kommentary"),
    event = { "BufReadPre", "BufNewFile" },
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
return M
