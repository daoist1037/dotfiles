local edit = {}
edit["max397574/better-escape.nvim"] = {
    config = function()
        require("better_escape").setup()
    end,
    event = "InsertEnter",
}
edit["phaazon/hop.nvim"] = {
    -- as = "hop",
    config = function()
        require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
    end,
    cmd = { "HopLine", "HopLineStart", "HopWord", "HopPattern", "HopChar1", "HopChar2" },
}
edit["PHSix/faster.nvim"] = {
    event = "CursorMoved",
    -- event = { "VimEnter *" },
    config = function() -- Specifies code to run after this plugin is loaded
        vim.api.nvim_set_keymap("n", "j", "<Plug>(faster_move_j)", { noremap = false, silent = true })
        vim.api.nvim_set_keymap("n", "k", "<Plug>(faster_move_k)", { noremap = false, silent = true })
        vim.api.nvim_set_keymap("v", "j", "<Plug>(faster_vmove_j)", { noremap = false, silent = true })
        vim.api.nvim_set_keymap("v", "k", "<Plug>(faster_vmove_k)", { noremap = false, silent = true })
    end,
}
edit["machakann/vim-highlightedyank"] = {
    event = "TextYankPost",
}
edit["b3nj5m1n/kommentary"] = {
    config = require("configs.others").kommentary,
    event = { "BufReadPre", "BufNewFile" },
}
edit["tpope/vim-surround"] = {
    event = "BufRead",
}
edit["edluffy/specs.nvim"] = {
    -- event = { "BufReadPre", "BufNewFile" },
    event = "CursorMoved",
    config = require("configs.others").specs,
}
edit["simrat39/symbols-outline.nvim"] = {
    cmd = { "SymbolsOutline", "SymbolsOutlineOpen" },
    config = require("configs.others").symbols,
    -- after = "nvim-lspconfig",
}
edit["abecodes/tabout.nvim"] = {
    wants = { "nvim-treesitter" },
    after = { "nvim-cmp" },
    config = require("configs.others").tabout,
}
edit["romainl/vim-cool"] = {
    opt = true,
    -- event = { "CursorMoved", "InsertEnter" },
    event = { "BufReadPre", "BufNewFile" },
}
edit["dhruvasagar/vim-table-mode"] = {
    opt = true,
    ft = "markdown",
    config = function()
        vim.cmd([[ 
function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
          \ <SID>isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ <SID>isAtStartOfLine('__') ?
          \ '<c-o>:silent! TableModeDisable<cr>' : '__'
       ]])
    end,
}
return edit
