return function()
    local kommentary_config = require('kommentary.config')
    kommentary_config.configure_language("default", {
        prefer_single_line_comments = true,
    })

end
