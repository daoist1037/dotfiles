return function()
    local has_words_before = function()
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
    end

    -- local feedkey = function(key, mode)
    --     vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
    -- end
    local cmp_kinds = require("configs.kinds")
    local cmp = require("cmp")
    cmp.setup({
        formatting = {
            fields = { "abbr", "kind", "menu" },
            format = function(entry, vim_item)
                -- Kind icons
                vim_item.kind = string.format("%s %s", vim_item.kind, cmp_kinds[vim_item.kind]) -- This concatonates the icons with the name of the item kind
                -- Source
                vim_item.menu = ({
                    buffer = "[Buffer]",
                    nvim_lsp = "[LSP]",
                    luasnip = "[LuaSnip]",
                    nvim_lua = "[Lua]",
                    path = "[Path]",
                    rg = "[Rg]",
                    spell = "[spell]",
                })[entry.source.name]

                return vim_item
            end,
        },
        confirm_opts = {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },
        completion = {
            completeopt = "menu,menuone,noinsert",
        },
        documentation = {
            border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
        },
        snippet = {
            expand = function(args)
                -- For `vsnip` user.
                -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` user.

                -- For `luasnip` user.
                require("luasnip").lsp_expand(args.body)

                -- For `ultisnips` user.
                -- vim.fn["UltiSnips#Anon"](args.body)
            end,
        },
        mapping = {
            ["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), {
                "i",
                "c",
            }),
            ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), {
                "i",
                "c",
            }),
            ["<C-e>"] = cmp.mapping({
                i = cmp.mapping.abort(),
                c = cmp.mapping.close(),
            }),
            ["<CR>"] = cmp.mapping.confirm({
                behavior = cmp.ConfirmBehavior.Replace,
                select = true,
            }),
            ["<Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_next_item()
                elseif require("luasnip").expand_or_jumpable() then
                    vim.fn.feedkeys(
                        vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true),
                        ""
                    )
                elseif has_words_before() then
                    cmp.complete()
                else
                    fallback()
                end
            end, { "i", "s" }),
            ["<S-Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_prev_item()
                elseif require("luasnip").jumpable(-1) then
                    vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
                else
                    fallback()
                end
            end, { "i", "s" }),
        },
        sources = {
            -- { name = 'orgmode' },
            { name = "nvim_lsp" },
            { name = "treesitter" },
            { name = "cmdline" },
            -- For vsnip user.
            --   { name = 'vsnip' },

            -- For luasnip user.
            { name = "luasnip" },
            -- For ultisnips user.
            -- { name = 'ultisnips' },

            { name = "buffer" },
            { name = "path" },
            { name = "rg" },
            { name = "spell" },
        },
    })
end
-- formatting = {
-- format = lspkind.cmp_format({with_text = false, maxwidth = 50})
-- },
-- ["<C-e>"] = cmp.mapping.close(),
-- ['<C-<space>>'] = cmp.mapping.complete(),
-- ["<C-d>"] = cmp.mapping.scroll_docs(-4),
-- ["<C-f>"] = cmp.mapping.scroll_docs(4),
-- ["<Tab>"] = function(fallback)
--     if cmp.visible() then
--         cmp.select_next_item()
--     elseif require("luasnip").expand_or_jumpable() then
--         vim.fn.feedkeys(
--             vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true),
--             ""
--         )
--     elseif has_words_before() then
--         cmp.complete()
--     else
--         fallback()
--     end
-- end,
-- ["<S-Tab>"] = function(fallback)
--     if cmp.visible() then
--         cmp.select_prev_item()
--     elseif require("luasnip").jumpable(-1) then
--         vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
--     else
--         fallback()
--     end
-- end,
