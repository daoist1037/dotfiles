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

M.hop = {
    "phaazon/hop.nvim",
    -- as = "hop",
    config = function()
        require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
        -- vim.api.nvim_set_keymap("n", "<leader><leader>w", "<cmd>lua require"hop".hint_words()<cr>", {})
    end,
    cmd = { "HopLine", "HopLineStart", "HopWord", "HopPattern", "HopChar1", "HopChar2" },
}
-- "tabout" is incompatible with "nvim-autopairs"
return M
