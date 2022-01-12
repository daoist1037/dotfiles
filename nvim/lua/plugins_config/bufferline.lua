return function()
  require('bufferline').setup({
    options = {
      show_buffer_icons = true,
      show_close_icon = false,
      show_buffer_close_icons = false,
      diagnostics = "nvim_lsp",
      diagnostics_indicator = function(count, level, diagnostics_dict, context)
        local s = " "
        for e, n in pairs(diagnostics_dict) do
          local sym = e == "error" and "" or
                          (e == "warning" and "" or "")
          s = s .. sym .. n
        end
        return s
      end,
      offsets = {
          {
              filetype = "NvimTree",
              text = "File Explorer",
              highlight = "Directory",
              text_align = "left"
          },
      }
    },
    highlights = {
        fill = {
            guifg = '#282c34',
            guibg = '#202328',
        },
        indicator_selected = {
            guifg = '#51afef',
            guibg = '#282c34'
        },
    }
  })
end
