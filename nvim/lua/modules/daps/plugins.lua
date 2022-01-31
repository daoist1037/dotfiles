local M = {}

M.dap = {
    "mfussenegger/nvim-dap",
    after = "nvim-lspconfig",
    config = require("modules.daps.Nvim-dap"),
    -- module = "dap",
}

M.dapui = {
    "rcarriga/nvim-dap-ui",
    after = "nvim-dap",
    config = require("modules.daps.Nvim-dap-ui"),
    -- after = "nvim-dap",
    -- module = "dapui",
}

M.virtualtext = {
    "theHamsta/nvim-dap-virtual-text",
    config = require("modules.daps.Nvim-dap-virtual-text"),
    after = "nvim-dap",
}

return M
