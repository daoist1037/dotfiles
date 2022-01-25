return function()
    local telescope = require("telescope")
    telescope.setup({
        defaults = {
            dynamic_preview_title = true,
        },
        pickers = {
            find_files = {
                hidden = true,
                no_ignore = true,
            },
            -- file_browser = {
            --     hidden = true,
            --     no_ignore = true,
            -- },
            oldfiles = {},
            live_grep = {},
        },
    })

    -- require('telescope').load_extension('file_browser')
end
