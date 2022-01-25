return function()
    vim.opt.termguicolors = true
    vim.opt.list = true
    -- vim.opt.listchars:append("space:⋅")
    vim.opt.listchars:append("eol:↴")
    vim.g.indent_blankline_use_treesitter = true
    local indent_blankline = require("indent_blankline")
    indent_blankline.setup({
        show_end_of_line = false,
        indentLine_enabled = 1,
        char = "▏",
        use_treesitter = true,
        filetype_exclude = {
            "help",
            "alpha",
            "terminal",
            "packer",
            "lspinfo",
            "TelescopePrompt",
            "TelescopeResults",
            "Outline",
            "Trouble",
            "lsp-installer",
            "Nvimtree",
            "",
        },
        buftype_exclude = { "terminal", "alpha" },
        show_trailing_blankline_indent = false,
        show_first_indent_level = false,
        context_highlight_list = { "Error", "Warning" },
        -- space_char_blankline = " ",
        show_current_context = true,
        show_current_context_start = true,
    })
end
