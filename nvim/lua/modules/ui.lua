local M = {}

M.alpha = {
    "goolord/alpha-nvim",
    requires = { "kyazdani42/nvim-web-devicons" },
    config = function()
        local alpha = require("alpha")
        local startify = require("alpha.themes.startify")
        -- startify.section.header.val = {
        -- }
        alpha.setup(startify.config)
    end,
}

-- "sainnhe/sonokai",
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
    -- event = "BufRead",
}

M.lualine = {
    "nvim-lualine/lualine.nvim",
    config = require("configs.Lualine"),
    -- after = "nvim-web-devicons",
    event = "BufRead",
}

M.bufferdelete = {
    "kazhala/close-buffers.nvim",
    event = "BufRead",
    config = require("configs.Bufdelete"),
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

return M

--     "akinsho/bufferline.nvim",
--     "kdheepak/tabline.nvim",
--     "noib3/nvim-cokeline",
