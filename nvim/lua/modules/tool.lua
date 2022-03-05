local tool = {}
tool["lewis6991/impatient.nvim"] = {
    opt = true,
}
tool["gelguy/wilder.nvim"] = {
    requires = { { "romgrk/fzy-lua-native", after = "wilder.nvim" } },
    event = "CmdlineEnter",
    config = require("configs.others").wilder,
}
tool["hrsh7th/vim-eft"] = {
    event = "BufRead",
    config = require("configs.others").eft,
}
tool["junegunn/vim-easy-align"] = {
    event = "BufRead",
    config = require("configs.others").easyaign,
}
tool["https://gitlab.com/yorickpeterse/nvim-window.git"] = {
    config = require("configs.window"),
    event = "BufRead",
}
tool["h-hg/fcitx.nvim"] = {
    event = { "BufReadPre", "BufNewFile" },
}
tool["nvim-telescope/telescope-fzf-native.nvim"] = {
    run = "make",
    after = "telescope.nvim",
}
tool["nvim-lua/plenary.nvim"] = {
    opt = false,
}
tool["nvim-lua/popup.nvim"] = {
    opt = true,
}
tool["nvim-telescope/telescope.nvim"] = {
    config = require("configs.telescope"),
    cmd = "Telescope",
    wants = { "plenary.nvim", "telescope-fzf-native.nvim", "popup.nvim" },
}
tool["nvim-treesitter/nvim-treesitter"] = {
    config = require("configs.treesitter"),
    run = ":TSUpdate",
    event = { "BufRead" }, --"BufReadPre"
}
tool["nvim-treesitter/completion-treesitter"] = {
    after = "nvim-treesitter",
}
tool["nvim-treesitter/nvim-treesitter-refactor"] = {
    after = "nvim-treesitter",
}
tool["nvim-treesitter/nvim-treesitter-textobjects"] = {
    after = "nvim-treesitter",
}
tool["folke/which-key.nvim"] = {
    config = require("configs.whichkey"),
}
tool["airblade/vim-rooter"] = {
    event = "BufRead",
    config = function()
        vim.g.rooter_patterns = { ".vscode", ".git" }
    end,
}
tool["dstein64/vim-startuptime"] = {}
return tool
--     "ygm2/rooter.nvim", -- nvim-tree don't work well
--     "ms-jpq/chadtree",
-- 'wfxr/minimap.vim',
