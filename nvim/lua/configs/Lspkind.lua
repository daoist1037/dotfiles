return function()
    local lspkind = require("lspkind")
    lspkind.init({
        -- enables text annotations
        --
        -- default: true
        with_text = true,

        -- default symbol map
        -- can be either 'default' (requires nerd-fonts font) or
        -- 'codicons' for codicon preset (requires vscode-codicons font)
        --
        -- default: 'default'
        preset = "codicons",

        -- override preset symbols
        --
        -- default: {}
        symbol_map = {
            buffer = "﬘",
            nvim_lsp = "",
            luasnip = "",
            nvim_lua = "",
            latex_symbols = "",
            Text = "",
            Method = "",
            Function = "",
            Constructor = "",
            Field = "♣",
            Variable = "",
            Class = "",
            -- Class = "ﴯ",
            Interface = "",
            Module = "",
            Property = "",
            Unit = "塞",
            Value = "",
            Enum = "",
            Keyword = "",
            Snippet = "",
            Color = "",
            File = "",
            Reference = "",
            Folder = "",
            EnumMember = "",
            Constant = "",
            Struct = "פּ",
            Event = "",
            Operator = "",
            TypeParameter = "",
        },
    })
end
