lua <<EOF

local impatient_path = vim.fn.stdpath("data") .. "/site/pack/packer/opt/impatient.nvim"
if vim.loop.fs_stat(impatient_path) then
    vim.cmd([[packadd impatient.nvim]])
    require('impatient')
end
require('core')

local data_dir = vim.fn.stdpath("data") .. "/site/"
local compile_to_lua = data_dir .. "lua/_compiled.lua"
if vim.fn.empty(vim.fn.glob(compile_to_lua)) == 0 then
    require('_compiled')
end

EOF
