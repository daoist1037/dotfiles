-- 复制到windows剪贴板 
-- https://stackoverflow.com/questions/44480829/how-to-copy-to-clipboard-in-vim-of-bash-on-windows 
-- vim.cmd "autocmd TextYankPost * if v:event.operator ==# 'y' | call system('/mnt/c/Windows/System32/clip.exe', @0) | endif"
vim.cmd [[au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]]
vim.g.python_host_skip_check=1
vim.g.python3_host_skip_check=1
-- vim.g.python3_host_prog = '/usr/bin/python'
-- vim.g.python3_host_prog = '/home/daoist/Programs/miniconda3/bin/python3'
-- vim.g.python3_host_prog = '/home/daoist/.conda/envs/neovim/bin/python3'
vim.g.python3_host_prog = "/home/daoist/.conda/envs/tools/bin/python"
local options = require('core.options')
for o,v in pairs(options) do
   vim.opt[o] = v
end
local disable = require('core.disable')

local function map(mode, lhs, rhs, opts)
   local options = { noremap = true, silent = true }
   if opts then
      options = vim.tbl_extend("force", options, opts)
   end
   vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '
vim.g.maplocalleader = ','


mappings = require('core.mappings')
for _,list in pairs(mappings) do
	map(list[1], list[2], list[3])
end

--[[ if vim.o.ft == 'clap_input' and vim.o.ft == 'guihua' and vim.o.ft == 'guihua_rust' then
  require'cmp'.setup.buffer { completion = {enable = false} }
end ]]
require('core.pack')
-- vim.cmd[[autocmd FileType dashboard set list=false]]

--[[ vim.cmd "silent! command PackerCompile lua require 'daoist1037.pack' require('packer').compile()"
vim.cmd "silent! command PackerInstall lua require 'daoist1037.pack' require('packer').install()"
vim.cmd "silent! command PackerStatus lua require 'daoist1037.pack' require('packer').status()"
vim.cmd "silent! command PackerSync lua require 'daoist1037.pack' require('packer').sync()"
vim.cmd "silent! command PackerUpdate lua require 'daoist1037.pack' require('packer').update()"
vim.cmd "silent! command PackerClean lua require 'daoist1037.pack' require('packer').clean()" ]]
