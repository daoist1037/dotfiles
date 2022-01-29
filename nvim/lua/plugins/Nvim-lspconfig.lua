return function()
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true
    capabilities.textDocument.completion.completionItem.preselectSupport = true
    capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
    capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
    capabilities.textDocument.completion.completionItem.deprecatedSupport = true
    capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
    local lspconfig = require("lspconfig")

    -- local on_attach = function(client, bufnr)
    --     local cfg = {
    --         bind = true,
    --         floating_window = true, -- show hint in a floating window, set to false for virtual text only mode
    --         -- floating_window_above_cur_line = false, -- try to place the floating above the current line when possible Note:
    --         use_lspsaga = false, -- set to true if you want to use lspsaga popup
    --     }
    --     require("lsp_signature").on_attach(cfg, bufnr)
    -- end

    local server_path = "/home/daoist/.local/share/nvim/lsp_servers"
    -- local server_path = "/home/daoist/dotfiles/lsp_servers"

    lspconfig["pyright"].setup({
        cmd = {
            server_path .. "/python/node_modules/.bin/pyright-langserver",
            "--stdio",
        },
        -- on_attach = on_attach,
        capabilities = capabilities,
        flags = {
            debounce_text_changes = 150,
        },
        root_dir = lspconfig.util.root_pattern("__pycache__", ".git", ".vscode"),
    })
    lspconfig["clangd"].setup({
        -- on_attach = on_attach,
        -- capabilities = capabilities,
        cmd = {
            "clangd",
            "--background-index",
            "--suggest-missing-includes",
            "--clang-tidy",
            "--header-insertion=iwyu",
        },
        flags = {
            debounce_text_changes = 150,
        },
        root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git", ".vscode"),
    })
    -- local runtime_path = vim.split(package.path, ';')
    -- -- local runtime_path = "/home/daoist/dotfiles/nvim"
    -- table.insert(runtime_path, "lua/?.lua")
    -- table.insert(runtime_path, "lua/?/init.lua")
    lspconfig["sumneko_lua"].setup({
        -- on_attach = on_attach,
        cmd = {
            server_path .. "/sumneko_lua/extension/server/bin/lua-language-server",
            "-E",
            server_path .. "/sumneko_lua/extension/server/bin/main.lua",
        },
        root_dir = lspconfig.util.root_pattern(".git", ".vscode"),
        filetypes = { "lua" },
        single_file_support = true,
        settings = {
            Lua = {
                runtime = {
                    -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                    version = "LuaJIT",
                    -- Setup your lua path
                    -- path = runtime_path,
                },
                diagnostics = {
                    -- Get the language server to recognize the `vim` global
                    enable = true,
                    globals = { "vim", "packer_plugins" },
                },
                workspace = {
                    -- Make the server aware of Neovim runtime files
                    library = {
                        [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                        [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
                        -- [vim.fn.expand "$HOME/dotfiles/nvim/lua"] = true,
                        -- [vim.fn.expand "$HOME/.local/share/nvim/site/pack/packer/"] = true,
                    },
                    maxPreload = 100000,
                    preloadFileSize = 10000,
                },
                -- Do not send telemetry data containing a randomized but unique identifier
                telemetry = {
                    enable = false,
                },
            },
        },
    })
end

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer

-- local on_attach = function(client, bufnr)
--     require "lsp_signature".on_attach()
-- local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
-- local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

-- vim.cmd [[highlight link LspSagaFinderSelection guifg=#ff0000 guibg=#00ff00 gui=bold]]
-- vim.cmd("autocmd ColorScheme * highlight NormalFloat guibg=#00ff00")
-- vim.cmd("autocmd ColorScheme * highlight FloatBorder guifg=#ff0000 guibg=#00ff00")
-- local border = {
--     {"┏", "FloatBorder"},
--     {"━", "FloatBorder"},
--     {"┓", "FloatBorder"},
--     {"┃", "FloatBorder"},
--     {"┛", "FloatBorder"},
--     {"━", "FloatBorder"},
--     {"┗", "FloatBorder"},
--     {"┃", "FloatBorder"}
-- }
-- :digraphs ctrl+K 双字母   ctrl+v 十进制
-- vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {border = border})
-- vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.hover, {border = border})

-- vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
-- vim.lsp.diagnostic.on_publish_diagnostics, {
--     -- Enable underline, use default values
--     underline = true,
--     -- Enable virtual text, override spacing to 4
--     virtual_text = true,
--     signs = {
--     enable = true,
--     priority = 20
--     },
--     -- Disable a feature
--     update_in_insert = false,
-- })
-- Enable completion triggered by <c-x><c-o>
-- buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

-- Mappings.
-- local opts = { noremap=true, silent=true }

-- See `:help vim.lsp.*` for documentation on any of the below functions
-- buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
-- buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
-- buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
-- buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
-- buf_set_keymap('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
-- buf_set_keymap('n', 'ga', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
-- buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
-- buf_set_keymap('n', 'gl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
-- buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
-- buf_set_keymap('n', 'gR', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
-- buf_set_keymap('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
-- buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
-- buf_set_keymap('n', 'ge', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
-- buf_set_keymap('n', 'g[', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
-- buf_set_keymap('n', 'g]', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
-- buf_set_keymap('n', 'gq', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
-- buf_set_keymap('n', 'gf', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

-- end
--

--  cfg = {
--   debug = false, -- set to true to enable debug logging
--   log_path = "debug_log_file_path", -- debug log path
--   verbose = false, -- show debug line number
--   bind = true, -- This is mandatory, otherwise border config won't get registered.
--                -- If you want to hook lspsaga or other signature handler, pls set to false
--   doc_lines = 10, -- will show two lines of comment/doc(if there are more than two lines in doc, will be truncated);
--                  -- set to 0 if you DO NOT want any API comments be shown
--                  -- This setting only take effect in insert mode, it does not affect signature help in normal
--                  -- mode, 10 by default
--   floating_window = true, -- show hint in a floating window, set to false for virtual text only mode
--   floating_window_above_cur_line = true, -- try to place the floating above the current line when possible Note:
--   -- will set to true when fully tested, set to false will use whichever side has more space
--   -- this setting will be helpful if you do not want the PUM and floating win overlap
--   fix_pos = false,  -- set to true, the floating window will not auto-close until finish all parameters
--   hint_enable = true, -- virtual hint enable
--   hint_prefix = "🐼 ",  -- Panda for parameter
--   hint_scheme = "String",
--   use_lspsaga = false,  -- set to true if you want to use lspsaga popup
--   hi_parameter = "LspSignatureActiveParameter", -- how your parameter will be highlight
--   max_height = 12, -- max height of signature floating_window, if content is more than max_height, you can scroll down
--                    -- to view the hiding contents
--   max_width = 120, -- max_width of signature floating_window, line will be wrapped if exceed max_width
--   handler_opts = {
--     border = "rounded"   -- double, rounded, single, shadow, none
--   },
--   always_trigger = false, -- sometime show signature on new line or in middle of parameter can be confusing, set it to false for #58
--   auto_close_after = nil, -- autoclose signature float win after x sec, disabled if nil.
--   extra_trigger_chars = {}, -- Array of extra characters that will trigger signature completion, e.g., {"(", ","}
--   zindex = 200, -- by default it will be on top of all floating windows, set to <= 50 send it to bottom
--   padding = '', -- character to pad on left and right of signature can be ' ', or '|'  etc
--   transparency = nil, -- disabled by default, allow floating win transparent value 1~100
--   shadow_blend = 36, -- if you using shadow as border use this set the opacity
--   shadow_guibg = 'Black', -- if you using shadow as border use this set the color e.g. 'Green' or '#121315'
--   timer_interval = 200, -- default timer check interval set to lower value if you want to reduce latency
--   toggle_key = nil -- toggle signature on and off in insert mode,  e.g. toggle_key = '<M-x>'
-- }
-- -- recommanded:
-- require'lsp_signature'.setup(cfg) -- no need to specify bufnr if you don't use toggle_key
-- -- You can also do this inside lsp on_attach
-- -- note: on_attach deprecated
-- require'lsp_signature'.on_attach(cfg, bufnr) -- no need to specify bufnr if you don't use toggle_key
