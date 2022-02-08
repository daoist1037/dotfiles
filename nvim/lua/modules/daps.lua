local M = {}

M.dap = {
    "mfussenegger/nvim-dap",
    config = require("configs.Nvim-dap"),
    ft = { "python", "cpp", "c" },
    -- after = "nvim-lspconfig",
    -- module = "dap",
}

M.dapui = {
    "rcarriga/nvim-dap-ui",
    after = "nvim-dap",
    config = require("configs.Nvim-dap-ui"),
    -- after = "nvim-dap",
    -- module = "dapui",
}

M.virtualtext = {
    "theHamsta/nvim-dap-virtual-text",
    config = require("configs.Nvim-dap-virtual-text"),
    after = "nvim-dap",
}

M.yabs = {
    "pianocomposer321/yabs.nvim",
    config = require("configs.Yabs"),
    ft = { "cpp" },
    wants = { "plenary.nvim" },
}

return M
