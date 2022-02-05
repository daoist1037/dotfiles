return function()
    -- vim.cmd([[packadd vim-illuminate]])
    if not packer_plugins["cmp-nvim-lsp"].loaded then
        vim.cmd([[packadd cmp-nvim-lsp]])
    end
    vim.api.nvim_command([[ hi def link LspReferenceText CursorLine ]])
    vim.api.nvim_command([[ hi def link LspReferenceWrite CursorLine ]])
    vim.api.nvim_command([[ hi def link LspReferenceRead CursorLine ]])

    -- local custom_capabilities = vim.lsp.protocol.make_client_capabilities()
    -- custom_capabilities.textDocument.completion.completionItem.snippetSupport = true
    -- custom_capabilities.textDocument.completion.completionItem.preselectSupport = true
    -- custom_capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
    -- custom_capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
    -- custom_capabilities.textDocument.completion.completionItem.deprecatedSupport = true
    -- custom_capabilities.textDocument.completion.completionItem.commitCharactersSupport = true

    local custom_capabilities = vim.lsp.protocol.make_client_capabilities()
    custom_capabilities = require("cmp_nvim_lsp").update_capabilities(custom_capabilities)
    custom_capabilities.textDocument.completion.completionItem.snippetSupport = true
    custom_capabilities.textDocument.completion.completionItem.preselectSupport = true
    custom_capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
    custom_capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
    custom_capabilities.textDocument.completion.completionItem.deprecatedSupport = true
    custom_capabilities.textDocument.completion.completionItem.commitCharactersSupport = true

    vim.lsp.handlers["textDocument/formatting"] = function(err, result, ctx)
        if err ~= nil or result == nil then
            return
        end
        if
            vim.api.nvim_buf_get_var(ctx.bufnr, "init_changedtick")
            == vim.api.nvim_buf_get_var(ctx.bufnr, "changedtick")
        then
            local view = vim.fn.winsaveview()
            vim.lsp.util.apply_text_edits(result, ctx.bufnr, "utf-8")
            vim.fn.winrestview(view)
            if ctx.bufnr == vim.api.nvim_get_current_buf() then
                vim.b.saving_format = true
                vim.cmd([[update]])
                vim.b.saving_format = false
            end
        end
    end
    local lspconfig = require("lspconfig")

    local custom_attach = function(client, bufnr)
        local lsp_publish_diagnostics_options = {
            virtual_text = {
                prefix = "»",
                spacing = 0,
            },
            signs = true,
            underline = false,
            update_in_insert = false, -- update diagnostics insert mode
        }
        if client.resolved_capabilities.document_formatting then
            vim.cmd([[augroup _Format]])
            vim.cmd([[autocmd! * <buffer>]])
            vim.cmd([[autocmd BufWritePost <buffer> FormatWrite]])
            vim.cmd([[augroup END]])
        end
        vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
            vim.lsp.diagnostic.on_publish_diagnostics,
            lsp_publish_diagnostics_options
        )
    end

    local server_path = "/home/daoist/.local/share/nvim/lsp_servers"

    lspconfig["pyright"].setup({
        cmd = {
            server_path .. "/python/node_modules/.bin/pyright-langserver",
            "--stdio",
        },
        -- on_attach = custom_attach,
        on_attach = function(client, bufnr)
            -- if not packer_plugins["vim-illuminate"].loaded then
            --     vim.cmd([[packadd vim-illuminate]])
            --     require("illuminate").on_attach(client)
            -- end
            custom_attach(client, bufnr)
        end,
        capabilities = custom_capabilities,
        flags = {
            debounce_text_changes = 150,
        },
        root_dir = lspconfig.util.root_pattern("__pycache__", ".git", ".vscode"),
    })
    lspconfig["clangd"].setup({
        on_attach = function(client, bufnr)
            client.resolved_capabilities.document_formatting = false
            -- if not packer_plugins["vim-illuminate"].loaded then
            --     vim.cmd([[packadd vim-illuminate]])
            --     require("illuminate").on_attach(client)
            -- end
            custom_attach(client, bufnr)
        end,
        capabilities = custom_capabilities,
        cmd = {
            server_path .. "/clangd/clangd/bin/clangd",
            -- "clangd",
        },
        args = {
            "--background-index",
            "-std=c++20",
            "--pch-storage=memory",
            "--clang-tidy",
            "--suggest-missing-includes",
            "--header-insertion=iwyu",
        },
        flags = {
            debounce_text_changes = 150,
        },
        root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git", ".vscode"),
    })
    local runtime_path = vim.split(package.path, ";")
    table.insert(runtime_path, "lua/?.lua")
    table.insert(runtime_path, "lua/?/init.lua") -- table.insert(runtime_path, "lua/?/init.lua")
    lspconfig["sumneko_lua"].setup({
        on_attach = function(client, bufnr)
            -- if not packer_plugins["vim-illuminate"].loaded then
            --     vim.cmd([[packadd vim-illuminate]])
            --     require("illuminate").on_attach(client)
            -- end
            custom_attach(client, bufnr)
        end,
        -- on_attach = custom_attach,
        capabilities = custom_capabilities,
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
                    path = runtime_path,
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
