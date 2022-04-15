return function()
    local formatter = require("formatter")
    formatter.setup({
        filetype = {
            cpp = {
                function()
                    return {
                        exe = "clang-format",
                        args = {
                            -- "--style='{BasedOnStyle: Microsoft, IndentWidth: 4}'",
                            "--assume-filename",
                            vim.api.nvim_buf_get_name(0),
                        },
                        stdin = true,
                        cwd = vim.fn.expand("%:p:h"), -- Run clang-format in cwd of the file.
                    }
                end,
            },
            c = {
                function()
                    return {
                        exe = "clang-format",
                        args = {
                            "--style='{BasedOnStyle: Microsoft, IndentWidth: 4}'",
                            "--assume-filename",
                            vim.api.nvim_buf_get_name(0),
                        },
                        stdin = true,
                        cwd = vim.fn.expand("%:p:h"), -- Run clang-format in cwd of the file.
                    }
                end,
            },
            python = {
                function()
                    return {
                        exe = "/home/daoist/.conda/envs/tools/bin/python -m autopep8",
                        args = {
                            "--in-place --aggressive --aggressive",
                            vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
                        },
                        stdin = false,
                    }
                end,
            },
            lua = {
                -- luafmt
                function()
                    return {
                        exe = vim.fn.stdpath('data') .. '/formatter/stylua',
                        args = {
                            "--indent-type",
                            "Spaces",
                            "--indent-width",
                            4,
                            vim.api.nvim_buf_get_name(0),
                        },
                        stdin = false,
                    }
                end,
            },
        },
    })
end
--
