-- 复制到windows剪贴板
-- https://stackoverflow.com/questions/44480829/how-to-copy-to-clipboard-in-vim-of-bash-on-windows
-- vim.cmd "autocmd TextYankPost * if v:event.operator ==# 'y' | call system('/mnt/c/Windows/System32/clip.exe', @0) | endif"
local function load_disable()
    vim.g.loaded_gzip = 1
    vim.g.loaded_tar = 1
    vim.g.loaded_tarPlugin = 1
    vim.g.loaded_zip = 1
    vim.g.loaded_zipPlugin = 1
    vim.g.loaded_getscript = 1
    vim.g.loaded_getscriptPlugin = 1
    vim.g.loaded_vimball = 1
    vim.g.loaded_vimballPlugin = 1
    vim.g.loaded_matchit = 1
    vim.g.loaded_matchparen = 1
    vim.g.loaded_2html_plugin = 1
    vim.g.loaded_logiPat = 1
    vim.g.loaded_rrhelper = 1
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    vim.g.loaded_netrwSettings = 1
    vim.g.loaded_netrwFileHandlers = 1
    vim.g.loaded_spellfile_plugin = 1
end
local function load_options()
    vim.g.python_host_skip_check = 1
    vim.g.python3_host_skip_check = 1
    vim.g.python3_host_prog = "/home/daoist/.conda/envs/tools/bin/python"
    vim.g.fcitx5_remote = "/usr/bin/fcitx5-remote"
    local options = require("core.options")
    for o, v in pairs(options) do
        vim.opt[o] = v
    end
    vim.cmd([[au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]])
    vim.cmd([[ au TermOpen term://* setlocal nonumber norelativenumber | setfiletype terminal ]])
end
local function load_map()
    vim.g.mapleader = " "
    vim.g.maplocalleader = " "

    local maps = require("core.map").maps
    for _, list in pairs(maps) do
        local opts = { noremap = true, silent = true }
        vim.api.nvim_set_keymap(list[1], list[2], list[3], opts)
    end
end
load_disable()
load_options()
load_map()

local pack = require("core.pack")
--if pack.ensure_installed() then
--    pack.load_compile()
--
--end
pack.ensure_plugins()

pack.load_compile()
-- require("_compiled")
