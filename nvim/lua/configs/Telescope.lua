return function()
    local status, telescope = pcall(require, "telescope")
    if not status then
        return
    end
    -- local previewers = require("telescope.previewers")

    local actions = require("telescope.actions")
    -- previewers.timeout = 500

    telescope.setup({
        defaults = {
            -- prompt_prefix = " ",
            selection_caret = " ",
            mappings = {
                n = {
                    ["q"] = actions.close,
                    ["l"] = actions.file_edit,
                    ["<M-j>"] = actions.preview_scrolling_down,
                    ["<M-k>"] = actions.preview_scrolling_up,
                    ["<C-j>"] = actions.move_selection_next,
                    ["<C-k>"] = actions.move_selection_previous,
                },
                i = {
                    ["<M-j>"] = actions.preview_scrolling_down,
                    ["<M-k>"] = actions.preview_scrolling_up,
                    ["<C-j>"] = actions.move_selection_next,
                    ["<C-k>"] = actions.move_selection_previous,
                },
            },
            initial_mode = "insert",
            selection_strategy = "reset",
            sorting_strategy = "ascending",
            layout_strategy = "horizontal",
            layout_config = {
                horizontal = {
                    prompt_position = "top",
                    preview_width = 0.55,
                    results_width = 0.8,
                },
                vertical = {
                    mirror = false,
                },
                width = 0.70,
                height = 0.70,
                preview_cutoff = 120,
            },
            set_env = { ["COLORTERM"] = "truecolor" },
            dynamic_preview_title = true,
            -- preview = previewers,
            treesitter = false,
            file_sorter = require("telescope.sorters").get_fuzzy_file,
            generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
            file_previewer = require("telescope.previewers").vim_buffer_cat.new,
            grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
            qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
            buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
            -- buffer_previewer_maker = new_maker,
            -- prompt_prefix = " ",
            -- selection_caret = "  ",
            vimgrep_arguments = {
                "rg",
                "--color=never",
                "--no-heading",
                "--with-filename",
                "--line-number",
                "--column",
                "--smart-case",
                "--hidden",
                "--glob=!.git/",
            },
        },
        pickers = {
            find_files = {
                hidden = true,
                -- theme = "dropdown",
                no_ignore = true,
                find_command = { "fd", "--type=file", "--hidden", "--follow", "--exclude=.git" },
            },
            oldfiles = {
                -- theme = "dropdown",
            },
            buffers = {
                -- theme = "dropdown",
                initial_mode = "normal",
            },
            current_buffer_fuzzy_find = {
                -- theme = "dropdown",
            },
            commands = {
                -- theme = "dropdown",
            },
            help_tags = {
                -- theme = "dropdown",
            },
            live_grep = {
                -- theme = "dropdown",
            },
            diagnostics = {
                theme = "ivy",
                initial_mode = "normal",
                layout_config = {
                    height = 0.40,
                    -- preview_cutoff = 100,
                },
            },
        },
        extensions = {
            fzf = {
                fuzzy = true, -- false will only do exact matching
                override_generic_sorter = true, -- override the generic sorter
                override_file_sorter = true, -- override the file sorter
                case_mode = "smart_case", -- or "ignore_case" or "respect_case"
                -- the default case_mode is "smart_case"
            },
            projects = {},
        },
    })
    require("telescope").load_extension("fzf")
    -- require("telescope").load_extension("projects")
    -- require('telescope').load_extension('file_browser')
end
