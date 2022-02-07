return function()
  --   vim.cmd([[
  -- augroup _alpha
  --   autocmd!
  --   autocmd User AlphaReady set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
  -- augroup end
  --   ]])
    local alpha = require("alpha")
    local startify = require("alpha.themes.startify")
    -- local dashboard = require("alpha.themes.dashboard")
    --         startify.section.header.val = {
    -- [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠔⡍⡮⡢⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    -- [[⠀⠀⣐⢒⢐⠤⡀⢀⡀⠀⠀⢎⢜⠜⠉⠘⢆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    -- [[⠀⠀⡘⡔⠡⡂⡊⡕⢌⠢⣙⡐⡄⡇⠀⠀⡀⠤⢒⠢⡱⠢⡀⡤⠄⢄⠤⠤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    -- [[⠀⠀⢇⠪⠨⡐⢬⢣⢑⣔⡆⠷⣝⡴⢔⢕⢣⠫⢦⣑⢐⠩⡎⡂⢅⠅⡢⢱⠅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    -- [[⠀⠀⡑⢅⢑⢌⠞⡊⡡⠠⡊⡪⡲⢱⢑⢌⠢⠣⡑⠔⢍⢓⢇⠪⡐⡡⠨⡂⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    -- [[⠀⠀⡪⢂⠗⢁⠐⡈⢌⢪⠨⡢⠊⡢⡑⢔⢑⠕⢅⢍⠈⡢⡑⡹⢔⠨⡂⡢⡃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    -- [[⠀⠀⡇⡏⢨⢀⢂⢐⠔⠡⡑⢔⠠⢨⠠⡱⢡⢑⠔⠅⢆⠆⡕⢌⢪⢳⢢⢪⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    -- [[⠀⠤⠜⢔⢹⠨⡆⡅⢽⠨⡨⡂⡊⡢⡑⡜⢆⠕⢌⠪⡲⡑⢌⠆⢕⢱⢣⠳⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    -- [[⠀⠀⢣⢀⠀⢌⣒⡌⣎⡎⠔⢌⠢⡒⢜⢜⠔⠻⣒⢅⢇⡇⠥⡑⡑⡌⡞⡅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    -- [[⠀⢸⠸⡑⢕⡇⡆⣎⠇⠺⢑⠅⢅⠳⡱⡍⣀⠀⣊⡮⡪⡎⡪⡨⡊⡂⡇⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    -- [[⠀⢸⢑⢌⠢⡣⣣⢷⠦⠬⢕⠍⡣⠗⠙⠂⢊⠭⡭⢝⢧⢱⢱⢸⢐⠅⣇⢗⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    -- [[⠀⡧⡑⠔⡕⢼⡟⣁⡩⠑⢵⠀⠀⠀⠠⠀⢗⢄⢤⢑⠸⢱⢱⢱⠡⡑⣕⢕⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    -- [[⠀⢧⢹⢨⢸⡢⢗⠐⠕⡆⠜⠀⢀⣀⡀⡄⠀⢁⢁⢁⠀⡗⡵⡣⢣⠱⡸⡱⣅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    -- [[⢸⢸⢼⠰⡢⡹⢊⠥⡀⡂⠄⠀⣃⠢⡊⢌⡃⠀⠠⠀⠎⠝⡸⡬⡳⡑⡌⡧⡫⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    -- [[⢸⢪⡎⢌⢗⢝⣄⠈⠒⢄⡀⠀⠑⠊⠒⠅⣀⣀⡤⡊⣀⠠⠗⣏⡪⡢⡣⡯⡪⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    -- [[⢸⢪⢗⢕⠼⠁⠄⢐⠉⠕⢽⠙⠉⢇⠅⡃⠅⢠⠋⠅⠠⠁⣂⢘⢮⢮⢏⢗⢝⢼⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    -- [[⢸⢸⢺⡝⢜⢢⠩⡂⡢⢅⠎⠉⣒⠢⡧⢪⢂⠪⡨⡐⢍⠢⢢⢣⢣⡫⡎⡇⢧⢹⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    -- }
    alpha.setup(startify.config)
    -- alpha.setup(dashboard.config)
end
