return function()
    local close_buffers = require("close_buffers")
    close_buffers.setup({
        preserve_window_layout = { "this" },
    })
end
