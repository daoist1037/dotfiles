local M = {}

-- M.illuminate = {
--     "RRethy/vim-illuminate",
--     opt = true,
-- }
M.alpha = {
    "goolord/alpha-nvim",
    requires = { "kyazdani42/nvim-web-devicons" },
    -- opt = true,
    event = "BufWinEnter",
    config = function()
        local alpha = require("alpha")
        local startify = require("alpha.themes.startify")
        -- local dashboard = require("alpha.themes.dashboard")
        --         startify.section.header.val = {
        -- [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠔⡍⡮⡢⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        -- [[⠀⠀⣐⢒⢐⠤⡀⢀⡀⠀⠀⢎⢜⠜⠉⠘⢆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        -- [[⠀⠀⡘⡔⠡⡂⡊⡕⢌⠢⣙⡐⡄⡇⠀⠀⡀⠤⢒⠢⡱⠢⡀⡤⠄⢄⠤⠤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        -- [[⠀⠀⢇⠪⠨⡐⢬⢣⢑⣔⡆⠷⣝⡴⢔⢕⢣⠫⢦⣑⢐⠩⡎⡂⢅⠅⡢⢱⠅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        -- [[⠀⠀⡑⢅⢑⢌⠞⡊⡡⠠⡊⡪⡲⢱⢑⢌⠢⠣⡑⠔⢍⢓⢇⠪⡐⡡⠨⡂⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        -- [[⠀⠀⡪⢂⠗⢁⠐⡈⢌⢪⠨⡢⠊⡢⡑⢔⢑⠕⢅⢍⠈⡢⡑⡹⢔⠨⡂⡢⡃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        -- [[⠀⠀⡇⡏⢨⢀⢂⢐⠔⠡⡑⢔⠠⢨⠠⡱⢡⢑⠔⠅⢆⠆⡕⢌⢪⢳⢢⢪⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        -- [[⠀⠤⠜⢔⢹⠨⡆⡅⢽⠨⡨⡂⡊⡢⡑⡜⢆⠕⢌⠪⡲⡑⢌⠆⢕⢱⢣⠳⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        -- [[⠀⠀⢣⢀⠀⢌⣒⡌⣎⡎⠔⢌⠢⡒⢜⢜⠔⠻⣒⢅⢇⡇⠥⡑⡑⡌⡞⡅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        -- [[⠀⢸⠸⡑⢕⡇⡆⣎⠇⠺⢑⠅⢅⠳⡱⡍⣀⠀⣊⡮⡪⡎⡪⡨⡊⡂⡇⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        -- [[⠀⢸⢑⢌⠢⡣⣣⢷⠦⠬⢕⠍⡣⠗⠙⠂⢊⠭⡭⢝⢧⢱⢱⢸⢐⠅⣇⢗⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        -- [[⠀⡧⡑⠔⡕⢼⡟⣁⡩⠑⢵⠀⠀⠀⠠⠀⢗⢄⢤⢑⠸⢱⢱⢱⠡⡑⣕⢕⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        -- [[⠀⢧⢹⢨⢸⡢⢗⠐⠕⡆⠜⠀⢀⣀⡀⡄⠀⢁⢁⢁⠀⡗⡵⡣⢣⠱⡸⡱⣅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        -- [[⢸⢸⢼⠰⡢⡹⢊⠥⡀⡂⠄⠀⣃⠢⡊⢌⡃⠀⠠⠀⠎⠝⡸⡬⡳⡑⡌⡧⡫⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        -- [[⢸⢪⡎⢌⢗⢝⣄⠈⠒⢄⡀⠀⠑⠊⠒⠅⣀⣀⡤⡊⣀⠠⠗⣏⡪⡢⡣⡯⡪⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        -- [[⢸⢪⢗⢕⠼⠁⠄⢐⠉⠕⢽⠙⠉⢇⠅⡃⠅⢠⠋⠅⠠⠁⣂⢘⢮⢮⢏⢗⢝⢼⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        -- [[⢸⢸⢺⡝⢜⢢⠩⡂⡢⢅⠎⠉⣒⠢⡧⢪⢂⠪⡨⡐⢍⠢⢢⢣⢣⡫⡎⡇⢧⢹⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        -- }
        alpha.setup(startify.config)
        -- alpha.setup(dashboard.config)
    end,
}

M.everforest = {
    "sainnhe/everforest",
    opt = true,
    config = require("configs.Colorscheme").everforest,
}
M.edge = {
    "sainnhe/edge",
    -- opt = true,
    config = require("configs.Colorscheme").edge,
}

M.material = {
    "marko-cerovac/material.nvim",
    opt = true,
    config = require("configs.Colorscheme").material,
}

M.onedark = {
    "navarasu/onedark.nvim",
    opt = true,
    config = require("configs.Colorscheme").onedark,
}

M.devicons = {
    "kyazdani42/nvim-web-devicons",
    -- opt = true,
}

M.lualine = {
    "nvim-lualine/lualine.nvim",
    -- requires = {
    --     "ray-x/lsp_signature.nvim",
    --     -- opt = true,
    --     --     event = "InsertEnter",
    --     config = require("configs.Lsp_signature"),
    -- },
    config = require("configs.Lualine"),
    -- after = "nvim-web-devicons",
    event = "BufRead",
}

M.bufferdelete = {
    "kazhala/close-buffers.nvim",
    event = "BufRead",
    config = require("configs.Bufdelete"),
}

M.gitsigns = {
    "lewis6991/gitsigns.nvim",
    config = require("configs.Gitsigns"),
    -- event = { "BufReadPre", "BufRead" },
    event = { "BufNewFile", "BufRead" },
    -- ft = {"lua", "python","cpp","c"},
    -- opt = true,
}

M.indent = {
    "lukas-reineke/indent-blankline.nvim",
    config = require("configs.Indent-blankline"),
    event = "BufRead",
    -- after = "nvim-treesitter",
}

M.toggleterm = {
    "akinsho/toggleterm.nvim",
    config = require("configs.Toggleterm"),
    cmd = "ToggleTerm",
}
M.tree = {
    "kyazdani42/nvim-tree.lua",
    -- requires = { "kyazdani42/nvim-web-devicons", opt = true },
    config = require("configs.Nvim-tree"),
    event = {  "BufRead" },
}

M.notify = {
    "rcarriga/nvim-notify",
    config = require("configs.Notify"),
}

return M

--     "akinsho/bufferline.nvim",
--     "kdheepak/tabline.nvim",
--     "noib3/nvim-cokeline",
--     "sainnhe/sonokai",
