return function()
    -- local function lsp_highlight_document(client)
    --     if client.resolved_capabilities.document_highlight then
    --         vim.api.nvim_exec(
    --             [[
    --   augroup lsp_document_highlight
    --     autocmd! * <buffer>
    --     autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
    --     autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
    --   augroup END
    -- ]],
    --             false
    --         )
    --     end
    -- end
    vim.g.Illuminate_ftblacklist = { "NvimTree" }
    -- vim.api.nvim_command([[ hi def link LspReferenceText CursorLine ]])
    -- vim.api.nvim_command([[ hi def link LspReferenceWrite CursorLine ]])
    -- vim.api.nvim_command([[ hi def link LspReferenceRead CursorLine ]])
    -- vim.api.nvim_command([[hi link illuminatedWord VisualCursorLine]])
    vim.api.nvim_set_keymap(
        "n",
        "<a-n>",
        '<cmd>lua require"illuminate".next_reference{wrap=true}<cr>',
        { noremap = true }
    )
    vim.api.nvim_set_keymap(
        "n",
        "<a-p>",
        '<cmd>lua require"illuminate".next_reference{reverse=true,wrap=true}<cr>',
        { noremap = true }
    )

    local custom_capabilities = vim.lsp.protocol.make_client_capabilities()
    custom_capabilities = require("cmp_nvim_lsp").update_capabilities(custom_capabilities)
    custom_capabilities.textDocument.completion.completionItem.snippetSupport = true
    custom_capabilities.textDocument.completion.completionItem.preselectSupport = true
    custom_capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
    custom_capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
    custom_capabilities.textDocument.completion.completionItem.deprecatedSupport = true
    custom_capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
    custom_capabilities.textDocument.completion.completionItem.tagSupport = { valueSet = { 1 } }
    custom_capabilities.textDocument.completion.completionItem.resolveSupport = {
        properties = {
            "documentation",
            "detail",
            "additionalTextEdits",
        },
    }
    custom_capabilities.textDocument.completion.completionItem.documentationFormat = { "markdown", "plaintext" }

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
        vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
            vim.lsp.diagnostic.on_publish_diagnostics,
            lsp_publish_diagnostics_options
        )
        require("illuminate").on_attach(client)
        require("lsp_signature").on_attach({
            bind = false, -- This is mandatory, otherwise border config won't get registered.
            floating_window = false,
            hint_enable = false,
            always_trigger = false,
        }, bufnr)
        -- lsp_highlight_document(client)
    end

    local lspconfig = require("lspconfig")
    local server_path = vim.fn.stdpath("data") .. "/lsp_servers"

    local servers = {}
    servers["pyright"] = {
        cmd = {
            server_path .. "/python/node_modules/.bin/pyright-langserver",
            "--stdio",
        },
        on_attach = function(client, bufnr)
            custom_attach(client, bufnr)
        end,
        -- capabilities = custom_capabilities,
        flags = {
            debounce_text_changes = 150,
        },
        root_dir = lspconfig.util.root_pattern("__pycache__", ".git", ".vscode"),
    }
    servers["clangd"] = {
        on_attach = function(client, bufnr)
            client.resolved_capabilities.document_formatting = false
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
            -- "--compile-commands-dir=build",
            "--clang-tidy",
            -- "--clang-tidy-checks=performance-*,bugprone-*",
            -- "--all-scopes-completion",
            -- "--completion-style=detailed",
            -- "--query-driver=/usr/bin/clang++",
            "--suggest-missing-includes",
            -- "--header-insertion=iwyu",
        },
        flags = {
            debounce_text_changes = 150,
        },
        filetypes = { "c", "cpp", "objc", "objcpp" },
        single_file_support = true,
        root_dir = function()
            return vim.fn.getcwd()
        end,
        -- root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git", ".vscode"),
    }
    local runtime_path = vim.split(package.path, ";")
    table.insert(runtime_path, "lua/?.lua")
    table.insert(runtime_path, "lua/?/init.lua") -- table.insert(runtime_path, "lua/?/init.lua")
    servers["sumneko_lua"] = {
        on_attach = function(client, bufnr)
            custom_attach(client, bufnr)
        end,
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
                    version = "LuaJIT",
                    path = runtime_path,
                },
                diagnostics = {
                    enable = true,
                    globals = { "vim", "packer_plugins" },
                },
                workspace = {
                    -- Make the server aware of Neovim runtime files
                    -- library = vim.api.nvim_get_runtime_file("", true),
                    library = {
                        [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                        [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
                        -- [vim.fn.stdpath("config") .. "/lua"] = true,
                        -- [vim.fn.expand "$HOME/dotfiles/nvim/lua"] = true,
                        -- [vim.fn.expand "$HOME/.local/share/nvim/site/pack/packer/"] = true,
                    },
                    maxPreload = 1000,
                    preloadFileSize = 100000,
                },
                telemetry = {
                    enable = false,
                },
            },
        },
    }
    local lsp_installer = require("nvim-lsp-installer")
    lsp_installer.on_server_ready(function(server)
        local opts = servers[server.name]
        if opts then
            server:setup(opts)
        end
    end)
end
