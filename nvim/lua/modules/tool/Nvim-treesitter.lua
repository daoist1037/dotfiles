return function()
    local nvim_treesitter_configs = require("nvim-treesitter.configs")
    nvim_treesitter_configs.setup({
        -- ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
        ensure_installed = { "bash", "c", "commonlisp","cmake", "cpp","html","java","javascript", "json","latex", "lua", "python", "vim" }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
        sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
        -- ignore_install = { "javascript" }, -- List of parsers to ignore installing

        highlight = {
            enable = true, -- false will disable the whole extension
            -- disable = { "c", "rust" },  -- list of language that will be disabled
            -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
            -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
            -- Using this option may slow down your editor, and you may see some duplicate highlights.
            -- Instead of true it can also be a list of languages
            additional_vim_regex_highlighting = false,
        },
        textobjects = {
            move = {
                enable = true,
                set_jumps = true,
                goto_previous_start = {
                    ["[["] = "@parameter.inner",
                },
                goto_next_start = {
                    ["]]"] = "@parameter.inner",
                },
            },
            select = {
                enable = true,
                lookahead = true,
                keymaps = {
                    ["iq"] = "@parameter.inner",
                    ["aq"] = "@parameter.outer",
                },
            },
        },
        playground = {
            enable = true,
            disable = {},
            updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
            persist_queries = false, -- Whether the query persists across vim sessions
            keybindings = {
                toggle_query_editor = "o",
                toggle_hl_groups = "i",
                toggle_injected_languages = "t",
                toggle_anonymous_nodes = "a",
                toggle_language_display = "I",
                focus_language = "f",
                unfocus_language = "F",
                update = "R",
                goto_node = "<cr>",
                show_help = "?",
            },
        },
    })
end