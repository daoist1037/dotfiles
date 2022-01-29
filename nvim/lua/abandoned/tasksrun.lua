-- return function()
local function tasksrun()
    -- local filetype = vim.api.nvim_buf_get_option(0, 'filetype')
    local filetype = vim.fn.expand("%:e")
    local filepath = vim.fn.expand("%:p")
    local outputFile = vim.fn.expand("%:p:r") .. ".out"
    if filetype == "cpp" then
        vim.api.nvim_command("!clang++ -g " .. filepath .. " -o " .. outputFile)
        -- print("!clang++ -g " .. filepath .. " -o " .. outputFile)
    elseif filetype == "c" then
        vim.api.nvim_command("!clang -g " .. filepath .. " -o " .. outputFile)
    elseif filetype == "lua" then
        print("Is lua")
    end
end
tasksrun()
