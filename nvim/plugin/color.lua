local opt_path = vim.fn.stdpath("data") .. "/site/pack/packer/opt/"
local onedark_path = opt_path .. "onedark.nvim"

local colorscheme = "onedark"
if colorscheme == "onedark" then
    if vim.loop.fs_stat(onedark_path) then
        vim.cmd([[packadd onedark.nvim]])
        require("onedark").setup({
            style = "cool",
            --  **Options:**  dark, darker, cool, deep, warm, warmer, light
            -- transparent = true,
            -- toggle_style_key = "", Default keybinding to toggle
        })
        require("onedark").load()
    end
end
-- vim.cmd([[highlight HighlightedyankRegion cterm=reverse gui=reverse]])
vim.cmd([[
augroup relative_numbser
 autocmd!
 autocmd InsertEnter * :set norelativenumber
 autocmd InsertLeave * :set relativenumber
augroup END
]])
