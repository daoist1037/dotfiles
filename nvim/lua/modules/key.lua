local M = {}

M.whick_key = {
    "folke/which-key.nvim",
    config = require("configs.Which-key"),
    event = "VimEnter",
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
