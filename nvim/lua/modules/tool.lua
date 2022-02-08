local M = {}

M.impatient = {
    "lewis6991/impatient.nvim",
    opt = true,
}
M.wilder = {
   "gelguy/wilder.nvim",
   requires = { { "romgrk/fzy-lua-native", after = "wilder.nvim" } },
   event = "CmdlineEnter",
   config = function()
       vim.cmd([[
call wilder#setup({'modes': [':', '/', '?']})
   call wilder#set_option('pipeline', [wilder#branch(wilder#cmdline_pipeline({'use_python': 0,'fuzzy': 1, 'fuzzy_filter': wilder#lua_fzy_filter()}),wilder#vim_search_pipeline(), [wilder#check({_, x -> empty(x)}), wilder#history(), wilder#result({'draw': [{_, x -> ' ' . x}]})])])
   call wilder#set_option('renderer', wilder#renderer_mux({':': wilder#popupmenu_renderer({'highlighter': wilder#lua_fzy_highlighter(), 'left': [wilder#popupmenu_devicons()], 'right': [' ', wilder#popupmenu_scrollbar()]}), '/': wilder#wildmenu_renderer({'highlighter': wilder#lua_fzy_highlighter()})}))
   call wilder#set_option('use_python_remote_plugin', 0)

]])
   end,
}
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
    after = "telescope.nvim",
}
M.plenary = { "nvim-lua/plenary.nvim", opt = false }
M.popup = { "nvim-lua/popup.nvim", opt = true }
M.telescope = {
    "nvim-telescope/telescope.nvim",
    config = require("configs.Telescope"),
    cmd = "Telescope",
    wants = { "plenary.nvim", "telescope-fzf-native.nvim", "popup.nvim" },
}

M.treesitter = {
    "nvim-treesitter/nvim-treesitter",
    config = require("configs.Nvim-treesitter"),
    run = ":TSUpdate",
    event = { "BufRead" }, --"BufReadPre"
}


M.completion_treesitter = {
   "nvim-treesitter/completion-treesitter",
   -- opt = true,
   after = "nvim-treesitter",
}

M.treesitter_refactor = {
   "nvim-treesitter/nvim-treesitter-refactor",
   -- opt = true,
   after = "nvim-treesitter",
}

M.treesitter_textobjects = {
   "nvim-treesitter/nvim-treesitter-textobjects",
   -- opt = true,
   after = "nvim-treesitter",
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
    -- opt = true,
    event = "BufRead",
    config = function()
        -- vim.g.rooter_patterns = [[=src]]
        vim.g.rooter_patterns = { ".vscode", ".git" }
    end,
}

M.startuptime = {
    "dstein64/vim-startuptime",
}


return M

--     "ygm2/rooter.nvim", -- nvim-tree don't work well
--     "ms-jpq/chadtree",
    -- 'wfxr/minimap.vim',
