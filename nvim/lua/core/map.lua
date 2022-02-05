local M = {}

M.maps = {
    -- {'i', 'jk', '<Esc>' },
    { "n", "<backspace>", "<Cmd>nohl<CR>" },
    -- keep visual selection when (de)indenting
    { "v", "<", "<gv" },
    { "v", ">", ">gv" },
    -- Select last pasted/yanked text
    { "n", "g<C-v>", "`[v`]" },
    -- {"n", "j", "<Plug>(accelerated_jk_gj)"},
    -- {"n", "k", "<Plug>(accelerated_jk_gk)"},
}
return M
