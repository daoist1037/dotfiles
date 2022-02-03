local M = {}

M.impatient = {
    "lewis6991/impatient.nvim",
    opt = true,
}

M.window = {
    "https://gitlab.com/yorickpeterse/nvim-window.git",
    config = require("configs.Nvim-window"),
    event = "BufRead",
}

M.fcitx = {
    "h-hg/fcitx.nvim",
    event = { "BufReadPre", "BufNewFile" },
}

M.gitsigns = {
    "lewis6991/gitsigns.nvim",
    config = require("configs.Gitsigns"),
    event = { "BufReadPre", "BufRead" },
    -- ft = {"lua", "python","cpp","c"},
    -- opt = true,
}

M.tree = {
    "kyazdani42/nvim-tree.lua",
    -- requires = { "kyazdani42/nvim-web-devicons", opt = true },
    config = require("configs.Nvim-tree"),
    event = {  "BufRead" },
}

M.telescopefzf = {
    "nvim-telescope/telescope-fzf-native.nvim",
    run = "make",
    cmd = "Telescope",
}

M.telescope = {
    "nvim-telescope/telescope.nvim",
    requires = {
        { "nvim-lua/plenary.nvim", opt = false },
        { "nvim-lua/popup.nvim", opt = false },
    },
    config = require("configs.Telescope"),
    after = "telescope-fzf-native.nvim",
}

M.treesitter = {
    "nvim-treesitter/nvim-treesitter",
    config = require("configs.Nvim-treesitter"),
    -- opt = true,
    run = ":TSUpdate",
    -- after = "impatient.nvim",
    event = "BufRead",
}

M.playground = {
    "nvim-treesitter/playground",
    -- opt = true,
    after = "nvim-treesitter",
    -- requires = "nvim-treesitter",
}

M.completion_treesitter = {
    "nvim-treesitter/completion-treesitter",
    -- opt = true,
    after = "nvim-treesitter",
    -- requires = "nvim-treesitter",
}

M.treesitter_refactor = {
    "nvim-treesitter/nvim-treesitter-refactor",
    -- opt = true,
    after = "nvim-treesitter",
    -- requires = "nvim-treesitter",
}

M.treesitter_textobjects = {
    "nvim-treesitter/nvim-treesitter-textobjects",
    -- opt = true,
    after = "nvim-treesitter",
    -- requires = "nvim-treesitter",
}

M.whick_key = {
    "folke/which-key.nvim",
    config = require("configs.Which-key"),
    event = "VimEnter",
}

M.rooter = {
    "airblade/vim-rooter",
    config = function()
        -- vim.g.rooter_patterns = [[=src]]
        vim.g.rooter_patterns = { ".vscode", ".git" }
    end,
}

return M

--     "ygm2/rooter.nvim",
--     "ms-jpq/chadtree",
