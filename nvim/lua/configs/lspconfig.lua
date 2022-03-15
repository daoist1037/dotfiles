return function()
    local function custom_cwd()
        if vim.loop.cwd() == vim.loop.os_homedir() then
            return vim.fn.expand("%:p:h")
        end
        return vim.loop.cwd()
    end
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
    vim.g.Illuminate_ftblacklist = { "NvimTree", "Outline" }
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
        -- cmd = {
        --     server_path .. "/python/node_modules/.bin/pyright-langserver",
        --     "--stdio",
        -- },
        on_attach = function(client, bufnr)
            custom_attach(client, bufnr)
        end,
        -- capabilities = custom_capabilities,
        flags = {
            debounce_text_changes = 150,
        },
        root_dir = custom_cwd,
        -- root_dir = lspconfig.util.root_pattern("__pycache__", ".git", ".vscode"),
        settings = {
            python = {
                analysis = {
                    useLibraryCodeForTypes = false,
                    autoImportCompletions = true,
                    autoSearchPaths = true,
                    diagnosticMode = "openFilesOnly",
                    -- diagnosticMode = "workspace",
                    typeCheckingMode = "basic",
                },
            },
        },
    }
    servers["clangd"] = {
        on_attach = function(client, bufnr)
            client.resolved_capabilities.document_formatting = false
            custom_attach(client, bufnr)
        end,
        capabilities = custom_capabilities,
        -- cmd = {
        --     server_path .. "/clangd/clangd/bin/clangd",
        -- },
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
        root_dir = custom_cwd,
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
        cmd = { "lua-language-server", string.format("--logpath=%s/.cache/nvim/sumneko_lua", vim.loop.os_homedir()) },
        -- cmd = {
        --     server_path .. "/sumneko_lua/extension/server/bin/lua-language-server",
        --     "-E",
        --     server_path .. "/sumneko_lua/extension/server/bin/main.lua",
        -- },
        -- root_dir = lspconfig.util.root_pattern(".git", ".vscode"),
        root_dir = custom_cwd,
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
                    -- globals = { "vim", "packer_plugins", "awesome", "use", "client", "root", "s", "screen" },
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

    lsp_installer.settings({
        ui = {
            icons = {
                server_installed = "✓ ",
                server_pending = "➜ ",
                server_uninstalled = "✗ ",
            },
            -- icons = {
            --     -- The list icon to use for installed servers.
            --     server_installed = "◍",
            --     -- The list icon to use for servers that are pending installation.
            --     server_pending = "◍",
            --     -- The list icon to use for servers that are not installed.
            --     server_uninstalled = "◍",
            -- },
            keymaps = {
                -- Keymap to expand a server in the UI
                toggle_server_expand = "<CR>",
                -- Keymap to install a server
                install_server = "i",
                -- Keymap to reinstall/update a server
                update_server = "u",
                -- Keymap to update all installed servers
                update_all_servers = "U",
                -- Keymap to uninstall a server
                uninstall_server = "X",
            },
        },

        -- The directory in which to install all servers.
        install_root_dir = vim.fn.stdpath("data") .. "/lsp_servers",

        pip = {
            -- These args will be added to `pip install` calls. Note that setting extra args might impact intended behavior
            -- and is not recommended.
            --
            -- Example: { "--proxy", "https://proxyserver" }
            install_args = {},
        },

        -- Controls to which degree logs are written to the log file. It's useful to set this to vim.log.levels.DEBUG when
        -- debugging issues with server installations.
        log_level = vim.log.levels.INFO,

        -- Limit for the maximum amount of servers to be installed at the same time. Once this limit is reached, any further
        -- servers that are requested to be installed will be put in a queue.
        max_concurrent_installers = 4,
    })
    lsp_installer.on_server_ready(function(server)
        local opts = servers[server.name]
        if opts then
            server:setup(opts)
        end
    end)
end
