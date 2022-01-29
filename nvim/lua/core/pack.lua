vim.cmd("packadd packer.nvim")

local present, packer = pcall(require, "packer")

if not present then
    local packer_path = vim.fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"

    print("Cloning packer..")
    -- remove the dir before cloning
    vim.fn.delete(packer_path, "rf")
    vim.fn.system({
        "git",
        "clone",
        "https://github.com/wbthomason/packer.nvim",
        "--depth",
        "20",
        packer_path,
    })

    vim.cmd("packadd packer.nvim")
    present, packer = pcall(require, "packer")

    if present then
        print("Packer cloned successfully.")
    else
        error("Couldn't clone packer !\nPacker path: " .. packer_path)
    end
end

packer.init({
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "single" })
        end,
        prompt_border = "single",
    },
    git = {
        clone_timeout = 600, -- Timeout, in seconds, for git clones
    },
    auto_clean = true,
})

local use = packer.use
return packer.startup(function()
    -------------------------------------
    ------------ Packer -----------------
    -------------------------------------
    use({
        "wbthomason/packer.nvim",
        event = "VimEnter",
    })
    -------------------------------------
    -------------- UI -------------------
    -------------------------------------
    use({
        "rebelot/kanagawa.nvim",
        opt = true,
    })
    use({
        "navarasu/onedark.nvim",
        config = function()
            require("onedark").setup({
                style = "dark",
                -- transparent = true,
                -- toggle_style_key = "", Default keybinding to toggle
            })
            require("onedark").load()
        end,
    })
    use({
        "kyazdani42/nvim-web-devicons",
        -- event = "BufEnter",
        event = "BufRead",
        -- after = "packer.nvim",
    })
    use({
        "hoob3rt/lualine.nvim",
        -- requires = {"kyazdani42/nvim-web-devicons", opt = true},
        config = require("plugins.Lualine"),
        -- after = "nvim-web-devicons",
        event = "BufRead",
    })
    use({
        "akinsho/bufferline.nvim",
        config = require("plugins.Bufferline"),
        -- after = "nvim-web-devicons",
        event = "BufRead",
        -- event = "User ActuallyEditing",
    })
    use({
        "lukas-reineke/indent-blankline.nvim",
        config = require("plugins.Indent-blankline"),
        event = "BufRead",
        -- after = "nvim-treesitter",
    })
    -------------------------------------
    -------------- LSP ------------------
    -------------------------------------
    -- use({
    --     "ray-x/lsp_signature.nvim",
    --     event = { "BufReadPre", "BufNewFile" },
    -- })
    use({
        "neovim/nvim-lspconfig",
        config = require("plugins.Nvim-lspconfig"),
        -- after = "lsp-status",
        -- after = "lsp_signature.nvim",
        -- requires = {
        --     {"ray-x/lsp_signature.nvim",}
        -- },
        -- opt = true,
        event = { "BufReadPre", "BufNewFile" },
        -- event = "BufRead",
    })
    use({
        "tami5/lspsaga.nvim",
        config = require("plugins.Lspsaga"),
        -- opt = true,
        after = "nvim-lspconfig",
        -- cmd = "Lspsaga",
    })
    use({
        "rafamadriz/friendly-snippets",
        event = "InsertEnter",
    })
    use({
        "hrsh7th/nvim-cmp",
        requires = {
            { "L3MON4D3/LuaSnip", after = "nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp", after = "nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp-document-symbol", after = "nvim-cmp" },
            { "hrsh7th/cmp-cmdline", after = "nvim-cmp" },
            -- {"onsails/lspkind-nvim"},
            { "hrsh7th/cmp-buffer", after = "nvim-cmp" },
            { "hrsh7th/cmp-nvim-lua", after = "nvim-cmp" },
            { "hrsh7th/cmp-path", after = "nvim-cmp" },
            { "octaltree/cmp-look", after = "nvim-cmp" },
            { "f3fora/cmp-spell", after = "nvim-cmp" },
            { "saadparwaiz1/cmp_luasnip", after = "LuaSnip" },
            { "hrsh7th/cmp-nvim-lua", after = "nvim-cmp" },
        },
        config = require("plugins.Nvim-cmp"),
        after = "friendly-snippets",
        -- event = "InsertEnter *",
    })
    use({
        "williamboman/nvim-lsp-installer",
        opt = true,
        after = "nvim-lspconfig",
    })
    use({
        "nathom/filetype.nvim",
        config = function()
            vim.g.did_load_filetypes = 1
            require("filetype").setup({
                overrides = {},
            })
        end,
    })
    use({
        "mfussenegger/nvim-dap",
        after = "nvim-lspconfig",
        config = require("plugins.Nvim-dap"),
        -- module = "dap",
    })
    use({
        "rcarriga/nvim-dap-ui",
        after = "nvim-dap",
        config = require("plugins.Nvim-dap-ui"),
        -- after = "nvim-dap",
        -- module = "dapui",
    })
    use({
        "theHamsta/nvim-dap-virtual-text",
        config = require("plugins.Nvim-dap-virtual-text"),
        after = "nvim-dap",
    })
    use({
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        -- after = "nvim-lspconfig",
        opt = true,
        cmd = { "Trouble", "TroubleToggle", "TroubleRefresh" },
        config = require("plugins.Trouble"),
        -- config = function()
        --     require("trouble").setup({})
        -- end,
    })
    use({
        "simrat39/symbols-outline.nvim",
        -- opt = true,
        -- cmd = {"SymbolsOutline", "SymbolsOutlineOpen"},
        config = require("plugins.Symbolsoutline"),
        after = "nvim-lspconfig",
    })
    use({
        "mhartington/formatter.nvim",
        config = require("plugins.Formatter"),
        after = "nvim-lspconfig",
    })
    -------------------------------------
    ------------- Tools -----------------
    -------------------------------------
    -- use { "nvim-lua/popup.nvim" }
    use({
        "h-hg/fcitx.nvim",
        event = { "BufReadPre", "BufNewFile" },
    })
    use({
        "lewis6991/gitsigns.nvim",
        config = require("plugins.Gitsigns"),
        event = { "BufReadPre", "BufRead" },
        -- ft = {"lua", "python","cpp","c"},
        -- opt = true,
    })
    use({
        "rhysd/accelerated-jk",
        event = "BufRead",
        -- opt = true,
    })
    use({
        "max397574/better-escape.nvim",
        config = function()
            require("better_escape").setup()
        end,
        event = "InsertEnter",
    })
    use({
        "kyazdani42/nvim-tree.lua",
        requires = "kyazdani42/nvim-web-devicons",
        config = require("plugins.Nvim-tree"),
        cmd = { "NvimTreeToggle", "NvimTreeFindFile" },
    })
    use({
        "nvim-telescope/telescope.nvim",
        requires = {
            { "nvim-lua/plenary.nvim", opt = false },
            { "nvim-lua/popup.nvim", opt = false },
        },
        config = require("plugins.Telescope"),
        cmd = "Telescope",
    })
    use({
        "nvim-treesitter/nvim-treesitter",
        config = require("plugins.Nvim-treesitter"),
        opt = true,
        run = ":TSUpdate",
        -- after = "impatient.nvim",
        event = "BufRead",
    })
    use({
        "nvim-treesitter/playground",
        opt = true,
        after = "nvim-treesitter",
        -- requires = "nvim-treesitter",
    })
    use({
        "nvim-treesitter/completion-treesitter",
        opt = true,
        after = "nvim-treesitter",
        -- requires = "nvim-treesitter",
    })
    use({
        "nvim-treesitter/nvim-treesitter-refactor",
        opt = true,
        after = "nvim-treesitter",
        -- requires = "nvim-treesitter",
    })
    use({
        "nvim-treesitter/nvim-treesitter-textobjects",
        opt = true,
        after = "nvim-treesitter",
        -- requires = "nvim-treesitter",
    })
    -- use {
    --     "dstein64/vim-startuptime",
    --     cmd = "StartupTime",
    --     opt = true,
    -- }
    -------------------------------------
    --------------- Keys ----------------
    -------------------------------------
    use({
        "folke/which-key.nvim",
        config = require("plugins.Which-key"),
        event = "VimEnter",
    })
    use({
        "phaazon/hop.nvim",
        -- as = "hop",
        config = function()
            require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
            -- vim.api.nvim_set_keymap("n", "<leader><leader>w", "<cmd>lua require"hop".hint_words()<cr>", {})
        end,
        cmd = {
            "HopLine",
            "HopLineStart",
            "HopWord",
            "HopPattern",
            "HopChar1",
            "HopChar2",
        },
    })
    -- "tabout" is incompatible with "nvim-autopairs"

    -------------------------------------
    --------------- Edit ----------------
    -------------------------------------
    use({
        "machakann/vim-highlightedyank",
        event = "TextYankPost *",
    })
    use({
        "windwp/nvim-autopairs",
        config = require("plugins.Nvim-autopairs"),
        after = "nvim-cmp",
        -- event = "InsertEnter",
    })
    use({
        "b3nj5m1n/kommentary",
        config = require("plugins.Kommentary"),
        event = { "BufReadPre", "BufNewFile" },
    })
    use({
        "blackCauldron7/surround.nvim",
        config = function()
            require("surround").setup({ mappings_style = "sandwich" })
        end,
        event = "BufRead",
        --- add: sa{motion/textobject}{delimiter}
        --- delete: sd{delimiter}
        --- replace: sr{old}{new}
        --- ss repeats last surround command.
    })

    -------------------------------------
    ------------- discard ---------------
    -------------------------------------
    -- use {
    --     "goolord/alpha-nvim",
    --     config = require("plugins.alpha"),
    -- }
    -- use {
    --     "numToStr/Comment.nvim",
    --     config = function()
    --         require("Comment").setup()
    --     end
    -- }
    -- use {
    --     "norcalli/nvim-colorizer.lua",
    --     ft = { "css", "javascript", "vim", "html" },
    --     config = [[require("colorizer").setup {"css", "javascript", "vim", "html"}]],
    --     -- event = "BufRead",
    -- }
    -- [[ use {
    --     "NTBBloodbath/doom-one.nvim",
    --     config = function()
    --         require("doom-one").setup()
    --     end
    -- } ]]
    -- use {
    --     "folke/tokyonight.nvim",
    --     config = function()
    --         vim.g.tokyonight_style = "night"
    --         vim.cmd[[colorscheme tokyonight]]
    --     end
    -- }
    -- use {
    --     "yamatsum/nvim-cursorline",
    --     event={ "BufReadPre", "BufNewFile"},
    -- }
    -- use {
    --     "ray-x/lsp_signature.nvim",
    --     opt = true,
    --     after = "nvim-lspconfig",
    --     -- disable = true,
    -- }
end)
