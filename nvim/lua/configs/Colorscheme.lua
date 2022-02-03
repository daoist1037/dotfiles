local M = {}

M.material = function()
    --oceanic deep ocean palenight darker lighter
    vim.g.material_style = "palenight"
    vim.cmd([[colorscheme material]])
    vim.cmd([[highlight HighlightedyankRegion cterm=reverse gui=reverse]])
end

M.edge = function()
    -- Available values: `'default'`, `'aura'`, `'neon'`
    vim.g.edge_style = "aura"
    vim.g.edge_diagnostic_text_highlight = 1
    vim.g.edge_diagnostic_virtual_text = "colored"
    vim.cmd([[colorscheme edge]])
    vim.cmd([[highlight HighlightedyankRegion cterm=reverse gui=reverse]])
end

M.onedark = function()
    require("onedark").setup({
        style = "dark",
        -- transparent = true,
        -- toggle_style_key = "", Default keybinding to toggle
    })
    require("onedark").load()
end

M.everforest = function()
    vim.g.everforest_background = "soft"
    vim.cmd([[colorscheme everforest]])
    vim.cmd([[highlight HighlightedyankRegion cterm=reverse gui=reverse]])
end

return M
