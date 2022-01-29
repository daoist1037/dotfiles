return function()
    local symbols_outline = require("symbols-outline")
    symbols_outline.setup({
        highlight_hovered_item = false,
        show_guides = false,
        auto_preview = false,
        position = "right",
        width = 35,
        show_numbers = false,
        show_relative_numbers = false,
        show_symbol_details = false,
    })
end
