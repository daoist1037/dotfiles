return function()
    -- local npairs = require "nvim-autopairs"
    -- local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    -- local Rule = require "nvim-autopairs.rule"

    -- npairs.setup {
    --     disable_filetype = { "TelescopePrompt" , "vim" },
    --     ignored_next_char = [[ [%w%%%{%(%[%'%'%.] ]],
    --     ignored_next_char = "[%w%.%(%{%[]",
    -- }
    local present1, autopairs = pcall(require, "nvim-autopairs")
    local present2, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")

    if present1 and present2 then
        autopairs.setup({
            disable_filetype = { "TelescopePrompt", "vim" },
            --ignored_next_char = [[ [%w%%%{%(%[%'%'%.] ]]
            ignored_next_char = "[%w%.%(%{%[]",
        })

        local cmp = require("cmp")
        cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end
end
