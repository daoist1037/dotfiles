-- local  ok, bufferline = pcall(require, "bufferline")
-- if not ok then
--     vim.notify("Fail to load bufferline", vim.log.levels.ERROR, { title = "plugins" })
--     return
-- end

return function()
    local bufferline = require("bufferline")
    bufferline.setup({
        options = {
            -- numbers = "none",
            numbers = function(opts)
                return opts.id .. "."
            end,
            right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
            left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
            middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
            indicator_icon = "▎",
            buffer_close_icon = "",
            modified_icon = "●",
            close_icon = "",
            left_trunc_marker = "",
            right_trunc_marker = "",
            show_buffer_icons = true,
            show_close_icon = true,
            max_name_length = 18,
            max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
            show_buffer_close_icons = true,
            diagnostics = "nvim_lsp",
            diagnostics_indicator = function(count, level, diagnostics_dict, context)
                local s = " "
                for e, n in pairs(diagnostics_dict) do
                    local sym = e == "error" and "" or (e == "warning" and "" or "")
                    s = sym .. n .. s
                    -- s = s .. sym .. n .. s
                end
                return s
            end,
            offsets = {
                {
                    filetype = "NvimTree",
                    text = " File Explorer",
                    highlight = "Directory",
                    text_align = "left",
                },
                {
                    filetype = "Outline",
                    text = " Symbols Outline",
                    highlight = "Directory",
                    text_align = "left",
                },
            },
        },
        separator_style = "thick",
        highlights = {
            fill = {
                guifg = "#282c34",
                guibg = "#202328",
            },
            indicator_selected = {
                guifg = "#51afef",
                guibg = "#282c34",
            },
        },
        enforce_regular_tabs = true,
        always_show_bufferline = true,
    })
end
