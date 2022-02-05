return function()
    local lspkind = require("lspkind")
    lspkind.init({
        mode = "symbol-text",

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
