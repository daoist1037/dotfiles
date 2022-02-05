local M = {}

M.eft = {
    "hrsh7th/vim-eft",
    event = "BufRead",
    config = function()
        vim.cmd([[
          nmap ; <Plug>(eft-repeat)
          xmap ; <Plug>(eft-repeat)
          omap ; <Plug>(eft-repeat)

          nmap f <Plug>(eft-f)
          xmap f <Plug>(eft-f)
          omap f <Plug>(eft-f)
          nmap F <Plug>(eft-F)
          xmap F <Plug>(eft-F)
          omap F <Plug>(eft-F)
          
          nmap t <Plug>(eft-t)
          xmap t <Plug>(eft-t)
          omap t <Plug>(eft-t)
          nmap T <Plug>(eft-T)
          xmap T <Plug>(eft-T)
          omap T <Plug>(eft-T)
       ]])
    end,
    -- opt = true,
}

M.easyaign = {
    "junegunn/vim-easy-align",
    event = "BufRead",
    config = function()
        vim.cmd([[
            xmap ga <Plug>(EasyAlign)
            nmap ga <Plug>(EasyAlign)
       ]])
    end,
    -- opt = true,
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

M.telescopefzf = {
    "nvim-telescope/telescope-fzf-native.nvim",
    run = "make",
    -- cmd = "Telescope",
    after = "telescope.nvim",
}

M.telescope = {
    "nvim-telescope/telescope.nvim",
    requires = {
        { "nvim-lua/plenary.nvim", opt = false },
        -- { "nvim-lua/plenary.nvim", opt = true },
        { "nvim-lua/popup.nvim", opt = true },
    },
    config = require("configs.Telescope"),
    -- after = "telescope-fzf-native.nvim",
    cmd = "Telescope",
}

M.treesitter = {
    "nvim-treesitter/nvim-treesitter",
    config = require("configs.Nvim-treesitter"),
    -- opt = true,
    run = "TSUpdate",
    -- after = "impatient.nvim",
    event = {"BufRead", } ,--"BufReadPre"
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
    -- event = { "BufRead", "BufNewFile" },
    -- event = "VimEnter",
    -- keys = "<Space>",
}

M.rooter = {
    "airblade/vim-rooter",
    event = "BufRead",
    config = function()
        -- vim.g.rooter_patterns = [[=src]]
        vim.g.rooter_patterns = { ".vscode", ".git" }
    end,
}

M.bqf = {
    "kevinhwang91/nvim-bqf",
    ft = "qf",
    -- ft = {"cpp", "c", "python", "lua"}
    -- cmd = {"BqfEnable", "BqfDisable", "BqfToggle"}
}

return M

--     "ygm2/rooter.nvim", -- nvim-tree don't work well
--     "ms-jpq/chadtree",
--     "lewis6991/impatient.nvim",
