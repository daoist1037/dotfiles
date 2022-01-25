-- 复制到windows剪贴板
-- https://stackoverflow.com/questions/44480829/how-to-copy-to-clipboard-in-vim-of-bash-on-windows
-- vim.cmd "autocmd TextYankPost * if v:event.operator ==# 'y' | call system('/mnt/c/Windows/System32/clip.exe', @0) | endif"
vim.cmd([[au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]])
vim.g.python_host_skip_check = 1
vim.g.python3_host_skip_check = 1
vim.g.python3_host_prog = "/home/daoist/.conda/envs/tools/bin/python"
vim.g.fcitx5_remote = "/usr/bin/fcitx5-remote"
local options = require("core.options")
for o, v in pairs(options) do
    vim.opt[o] = v
end
-- local disable = require('core.disable')
require("core.disable")

-- local function map(mode, lhs, rhs, opts)
--     local options = { noremap = true, silent = true }
--     if opts then
--         options = vim.tbl_extend("force", options, opts)
--     end
--     vim.api.nvim_set_keymap(mode, lhs, rhs, options)
-- end

vim.g.mapleader = " "
vim.g.maplocalleader = ","

local mappings = require("core.mappings")
for _, list in pairs(mappings) do
    -- map(list[1], list[2], list[3])
    local opts = { noremap = true, silent = true }
    vim.api.nvim_set_keymap(list[1], list[2], list[3], opts)
end

require("core.pack")
