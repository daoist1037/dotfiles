local M = {}

M.edge = {
    "sainnhe/edge",
    -- opt = true,
    config = require("modules.ui.Colorscheme").edge,
}

M.sonokai = {
    "sainnhe/sonokai",
    opt = true,
    config = require("modules.ui.Colorscheme").sonokai,
}

M.material = {
    "marko-cerovac/material.nvim",
    opt = true,
    config = require("modules.ui.Colorscheme").material,
}

M.onedark = {
    "navarasu/onedark.nvim",
    opt = true,
    config = require("modules.ui.Colorscheme").onedark,
}

M.devicons = {
    "kyazdani42/nvim-web-devicons",
}

M.lualine = {
    "hoob3rt/lualine.nvim",
    config = require("modules.ui.Lualine"),
    event = "BufRead",
}

M.bufferline = {
    "akinsho/bufferline.nvim",
    config = require("modules.ui.Bufferline"),
    event = "BufRead",
    -- event = "User ActuallyEditing",
}

M.indent = {
    "lukas-reineke/indent-blankline.nvim",
    config = require("modules.ui.Indent-blankline"),
    event = "BufRead",
    -- after = "nvim-treesitter",
}

return M
