local daps = {}
daps["mfussenegger/nvim-dap"] = {
    config = require("configs.dap.clients"),
    ft = { "python", "cpp", "c" },
    -- after = "nvim-lspconfig",
    -- module = "dap",
}
daps["rcarriga/nvim-dap-ui"] = {
    after = "nvim-dap",
    config = require("configs.dap.ui"),
    -- after = "nvim-dap",
    -- module = "dapui",
}
daps["theHamsta/nvim-dap-virtual-text"] = {
    config = require("configs.others").virtualtext,
    after = "nvim-dap",
}
daps["pianocomposer321/yabs.nvim"] = {
    config = require("configs.yabs"),
    ft = { "cpp" },
    wants = { "plenary.nvim" },
}

return daps
