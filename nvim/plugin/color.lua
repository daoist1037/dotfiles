local onedark_path = vim.fn.stdpath("data") .. "/site/pack/packer/opt/onedark.nvim"
local edge_path = vim.fn.stdpath("data") .. "/site/pack/packer/opt/edge"
local colorscheme = "onedark"
if colorscheme == "onedark" then
    -- if vim.fn.empty(vim.fn.glob(onedark_path)) == 0 then
    if vim.loop.fs_stat(onedark_path) then
        vim.cmd([[packadd onedark.nvim]])
        require("configs.Colorscheme").onedark()
    end
elseif colorscheme == "edge" then
    if vim.loop.fs_stat(edge_path) then
        vim.cmd([[packadd edge]])
        require("configs.Colorscheme").edge()
    end
end

