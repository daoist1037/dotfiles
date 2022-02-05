return function()
    -- vim.g.nvim_tree_respect_buf_cwd = 1
    local g = vim.g
    -- g.nvim_tree_ignore = 1
    -- g.nvim_tree_auto_ignore_ft = { "alpha" } -- Don't open tree on specific fiypes.
    g.nvim_tree_add_trailing = 0 -- append a trailing slash to folder names
    g.nvim_tree_highlight_opened_files = 3
    g.nvim_tree_quit_on_open = 0 -- closes tree when file's opened
    g.nvim_tree_indent_markers = 1
    g.nvim_tree_git_hl = 1 -- Will enable file highlight for git attributes (can be used without the icons).
    g.nvim_tree_window_picker_exclude = {
        filetype = { "notify", "packer", "qf", "vista_kind", "Outline", "Trouble" },
        buftype = { "terminal" },
    }
    g.nvim_tree_root_folder_modifier = table.concat({ ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??" })
    g.nvim_tree_show_icons = {
        -- git = 1,
        folders = 1,
        files = 1,
        -- folder_arrows = 1,
        -- tree_width = 35,
    }

    local nvim_tree = require("nvim-tree")
    nvim_tree.setup({
        disable_netrw = true,
        hijack_netrw = true,
        open_on_setup = false,
        ignore_ft_on_setup = { "alpha" },
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
            enable = true,
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
        view = {
            width = 30,
            side = "left",
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
    })
end