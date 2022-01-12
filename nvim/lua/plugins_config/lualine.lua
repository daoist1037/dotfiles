return function()
    require'lualine'.setup {
        options = {
            icons_enabled = true,
            theme = 'onedark',
            component_separators = {'', ''},
            section_separators = {'', ''},
            disabled_filetypes = {
                "toggleterm",
                "NvimTree",
                "vista_kind",
                "dapui_scopes",
                "dapui_breakpoints",
                "dapui_stacks",
                "dapui_watches",
                "dap-repl"
            }
        },
        sections = {
            lualine_a = {'mode'},
            lualine_b = {'branch'},
            lualine_c = {'filename'},
            lualine_x = {'encoding', 'fileformat', 'filetype'},
            lualine_y = {'progress'},
            lualine_z = {'location'}
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {'filename'},
            lualine_x = {'location'},
            lualine_y = {},
            lualine_z = {}
        },
        tabline = {},
        extensions = {}
    }

end
