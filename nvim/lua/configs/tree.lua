return function()
    local g = vim.g
    g.nvim_tree_root_folder_modifier = table.concat({ ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??" })
    g.nvim_tree_show_icons = {
        git = 0,
        folders = 1,
        files = 1,
        folder_arrows = 0,
        -- tree_width = 35,
    }

    local nvim_tree = require("nvim-tree")
    nvim_tree.setup({
        disable_netrw = true,
        hijack_netrw = true,
        open_on_setup = false,
        ignore_ft_on_setup = {},
        auto_close = false,
        open_on_tab = false,
        update_to_buf_dir = {
            enable = true,
            auto_open = true,
        },
        hijack_cursor = true,
        update_cwd = true,
        update_focused_file = {
            enable = true,
            update_cwd = true,
            ignore_list = {},
        },
        system_open = {
            cmd = nil,
            args = {},
        },
        diagnostics = {
            enable = false,
            icons = {
                hint = "",
                info = "",
                warning = "",
                error = "",
            },
        },
        git = {
            enable = false,
            ignore = false,
            timeout = 500,
        },
        filters = {
            custom = {
                ".git",
                "node_modules",
                ".cache",
                "__pycache__",
                ".vscode",
                ".ipynb_checkpoints",
            },
        },
        renderer = {
            indent_markers = {
                enable = true,
                icons = {
                    corner = "└ ",
                    edge = "│ ",
                    none = "  ",
                },
            },
        },
        view = {
            width = 30,
            side = "right",
            auto_resize = true,
            mappings = {
                custom_only = false,
                list = {},
            },
            number = false,
            relativenumber = false,
            signcolumn = "yes",
        },
        trash = {
            cmd = "trash",
            require_confirm = true,
        },
        actions = {
            change_dir = {
                enable = true,
                global = false,
            },
            open_file = {
                quit_on_open = false,
                resize_window = false,
                window_picker = {
                    enable = true,
                    chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
                    exclude = {
                        -- filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
                        -- buftype = { "nofile", "terminal", "help" },
                        filetype = { "notify", "packer", "qf", "vista_kind", "Outline", "Trouble" },
                        buftype = { "terminal", "help" },
                    },
                },
            },
        },
    })
end
