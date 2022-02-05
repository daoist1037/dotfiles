-- 复制到windows剪贴板
-- https://stackoverflow.com/questions/44480829/how-to-copy-to-clipboard-in-vim-of-bash-on-windows
-- vim.cmd "autocmd TextYankPost * if v:event.operator ==# 'y' | call system('/mnt/c/Windows/System32/clip.exe', @0) | endif"
vim.cmd([[au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]])
vim.cmd([[ au TermOpen term://* setlocal nonumber norelativenumber | setfiletype terminal ]])
-- vim.cmd([[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost pack.lua source <afile> | PackerSync
--   augroup end
-- ]])
vim.g.python_host_skip_check = 1
vim.g.python3_host_skip_check = 1
vim.g.python3_host_prog = "/home/daoist/.conda/envs/tools/bin/python"
vim.g.fcitx5_remote = "/usr/bin/fcitx5-remote"
local options = require("core.options")
for o, v in pairs(options) do
    vim.opt[o] = v
end
require("core.disable")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local maps = require("core.map").maps
for _, list in pairs(maps) do
    local opts = { noremap = true, silent = true }
    vim.api.nvim_set_keymap(list[1], list[2], list[3], opts)
end

require("core.pack")
local compilel_ok, _ = pcall(require, "compiled")
if not compilel_ok then
    vim.notify([[compile don't load]])
end
vim.cmd([[command! PackerCompile lua require('core.pack') require('packer').compile()]])
vim.cmd([[command! PackerInstall lua require('core.pack') require('packer').install()]])
vim.cmd([[command! PackerUpdate lua require('core.pack') require('packer').update()]])
vim.cmd([[command! PackerSync lua require('core.pack') require('packer').sync()]])
vim.cmd([[command! PackerClean lua require('core.pack') require('packer').clean()]])
vim.cmd([[command! PackerSync lua require('core.pack') require('packer').sync()]])
