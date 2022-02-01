return function()
    local telescope = require("telescope")
    local previewers = require("telescope.previewers")
    previewers.timeout = 500
    -- local Job = require("plenary.job")
    -- local new_maker = function(filepath, bufnr, opts)
    --     filepath = vim.fn.expand(filepath)
    --     Job
    --         :new({
    --             command = "file",
    --             args = { "--mime-type", "-b", filepath },
    --             on_exit = function(j)
    --                 local mime_type = vim.split(j:result()[1], "/")[1]
    --                 if mime_type == "text" then
    --                     previewers.buffer_previewer_maker(filepath, bufnr, opts)
    --                 else
    --                     -- maybe we want to write something to the buffer here
    --                     vim.schedule(function()
    --                         vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { "BINARY" })
    --                     end)
    --                 end
    --             end,
    --         })
    --         :sync()
    -- end

    telescope.setup({
        defaults = {
            dynamic_preview_title = true,
            preview = previewers,
            treesitter = false,
            -- buffer_previewer_maker = new_maker,
            -- prompt_prefix = " ",
            -- selection_caret = "  ",
            -- vimgrep_arguments = {
            --     "rg",
            --     "--color=never",
            --     "--no-heading",
            --     "--with-filename",
            --     "--line-number",
            --     "--column",
            --     "--smart-case",
            --     "--hidden",
            --     "--glob=!.git/",
            -- },
        },
        pickers = {
            find_files = {
                hidden = true,
                theme = "dropdown",
                no_ignore = true,
                find_command = { "fd", "--type=file", "--hidden", "--follow", "--exclude=.git" },
            },
            oldfiles = {
                theme = "dropdown",
            },
            buffers = {
                theme = "dropdown",
            },
            current_buffer_fuzzy_find = {
                theme = "dropdown",
            },
            commands = {
                -- theme = "dropdown",
            },
            help_tags = {
                theme = "dropdown",
            },
            live_grep = {
                theme = "dropdown",
            },
        },
    })
    -- require("telescope").load_extension("projects")
    -- require('telescope').load_extension('file_browser')
end
