local opt_path = vim.fn.stdpath("data") .. "/site/pack/packer/opt/"
local onedark_path = opt_path .. "onedark.nvim"
local onedarkpro_path = opt_path .. "onedarkpro.nvim"
local zephyrium_path = opt_path .. "zephyrium"
local doom_path = opt_path .. "doom-one.nvim"

-- local theme = "onedark"
local theme = "onedarkpro"
-- local theme = "zephyrium"
-- local theme = "doom-one"
if theme == "onedark" then
    if vim.loop.fs_stat(onedark_path) then
        vim.cmd([[packadd onedark.nvim]])
        require("onedark").setup({
            style = "cool",
            --  **Options:**  dark, darker, cool, deep, warm, warmer, light
            -- transparent = true,
            -- toggle_style_key = "", Default keybinding to toggle
        })
        require("onedark").load()
    end
elseif theme == "onedarkpro" then
    if vim.loop.fs_stat(onedarkpro_path) then
        vim.cmd([[packadd onedarkpro.nvim]])
        local onedarkpro = require("onedarkpro")
        onedarkpro.setup({
            theme = "onedark",
            colors = {}, -- Override default colors by specifying colors for 'onelight' or 'onedark' themes
            hlgroups = {}, -- Override default highlight groups
            filetype_hlgroups = {}, -- Override default highlight groups for specific filetypes
            plugins = { -- Override which plugins highlight groups are loaded
                -- all = false,
                native_lsp = true,
                polygot = true,
                treesitter = true,
                nvim_cmp = false,
                hop = false,
                -- NOTE: Other plugins have been omitted for brevity
            },
            styles = {
                strings = "NONE", -- Style that is applied to strings
                comments = "italic", -- Style that is applied to comments
                keywords = "NONE", -- Style that is applied to keywords
                functions = "NONE", -- Style that is applied to functions
                variables = "NONE", -- Style that is applied to variables
            }, -- Where italic, bold, underline and NONE are possible values for styles.
            options = {
                bold = false, -- Use the themes opinionated bold styles?
                italic = false, -- Use the themes opinionated italic styles?
                underline = false, -- Use the themes opinionated underline styles?
                undercurl = false, -- Use the themes opinionated undercurl styles?
                cursorline = true, -- Use cursorline highlighting?
                transparency = false, -- Use a transparent background?
                terminal_colors = false, -- Use the theme's colors for Neovim's :terminal?
                window_unfocussed_color = false, -- When the window is out of focus, change the normal background?
            },
        })
        onedarkpro.load()
        vim.cmd("hi clear CursorColumn")
    end
elseif theme == "zephyrium" then
    if vim.loop.fs_stat(zephyrium_path) then
        vim.cmd([[packadd zephyrium]])
        vim.cmd[[colorscheme zephyrium]]
    end
elseif theme == "doom-one" then
    if vim.loop.fs_stat(doom_path) then
        vim.cmd([[packadd doom-one.nvim]])
        require('doom-one').setup({
            cursor_coloring = false,
            terminal_colors = false,
            italic_comments = false,
            enable_treesitter = true,
            transparent_background = false,
            pumblend = {
                enable = true,
                transparency_amount = 20,
            },
            plugins_integrations = {
                neorg = true,
                barbar = true,
                bufferline = false,
                gitgutter = false,
                gitsigns = true,
                telescope = false,
                neogit = true,
                nvim_tree = true,
                dashboard = true,
                startify = true,
                whichkey = true,
                indent_blankline = true,
                vim_illuminate = true,
                lspsaga = false,
            },
        })
    end
end
-- vim.cmd([[highlight HighlightedyankRegion cterm=reverse gui=reverse]])
