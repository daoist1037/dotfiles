-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/daoist/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/daoist/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/daoist/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/daoist/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/daoist/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    after = { "cmp_luasnip" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["accelerated-jk"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/accelerated-jk",
    url = "https://github.com/rhysd/accelerated-jk"
  },
  ["better-escape.nvim"] = {
    config = { "\27LJ\1\2;\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\18better_escape\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/better-escape.nvim",
    url = "https://github.com/max397574/better-escape.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\1\2}\0\4\14\0\a\0\21%\4\0\0004\5\1\0\16\6\2\0>\5\2\4D\b\r€\a\b\2\0T\n\2€%\n\3\0T\v\5€\a\b\4\0T\n\2€%\n\5\0T\v\1€%\n\6\0\16\v\n\0\16\f\t\0\16\r\4\0$\4\r\vB\b\3\3N\bñH\4\2\0\bïª\bï±\fwarning\bï—\nerror\npairs\6 ×\5\1\0\6\0\17\0\0234\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\t\0003\3\3\0001\4\4\0:\4\5\0032\4\3\0003\5\6\0;\5\1\0043\5\a\0;\5\2\4:\4\b\3:\3\n\0023\3\f\0003\4\v\0:\4\r\0033\4\14\0:\4\15\3:\3\16\2>\1\2\1G\0\1\0\15highlights\23indicator_selected\1\0\2\nguibg\f#282c34\nguifg\f#51afef\tfill\1\0\0\1\0\2\nguibg\f#202328\nguifg\f#282c34\foptions\1\0\1\20separator_style\nthick\foffsets\1\0\4\ttext\24ïš¦ Symbols Outline\15text_align\tleft\14highlight\14Directory\rfiletype\fOutline\1\0\4\ttext\22ï“ File Explorer\15text_align\tleft\14highlight\14Directory\rfiletype\rNvimTree\26diagnostics_indicator\0\1\0\r\24right_mouse_command\16bdelete! %d\22left_trunc_marker\bï‚¨\15close_icon\bï€\22show_buffer_icons\2\fnumbers\tnone\28show_buffer_close_icons\2\18modified_icon\bâ—\23right_trunc_marker\bï‚©\16diagnostics\rnvim_lsp\23left_mouse_command\14buffer %d\20show_close_icon\2\19indicator_icon\bâ–Ž\22buffer_close_icon\bï™•\nsetup\15bufferline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    after_files = { "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-cmdline/after/plugin/cmp_cmdline.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-look"] = {
    after_files = { "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-look/after/plugin/cmp_look.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-look",
    url = "https://github.com/octaltree/cmp-look"
  },
  ["cmp-nvim-lsp"] = {
    after_files = { "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-document-symbol"] = {
    after_files = { "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp-document-symbol/after/plugin/cmp_nvim_lsp_document_symbol.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp-document-symbol",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-document-symbol"
  },
  ["cmp-nvim-lua"] = {
    after_files = { "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after_files = { "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-rg"] = {
    after_files = { "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-rg/after/plugin/cmp-rg.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-rg",
    url = "https://github.com/lukas-reineke/cmp-rg"
  },
  ["cmp-spell"] = {
    after_files = { "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-spell/after/plugin/cmp-spell.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  cmp_luasnip = {
    after_files = { "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    load_after = {
      LuaSnip = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["completion-treesitter"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/completion-treesitter",
    url = "https://github.com/nvim-treesitter/completion-treesitter"
  },
  edge = {
    config = { "\27LJ\1\2„\2\0\0\2\0\n\0\0214\0\0\0007\0\1\0%\1\3\0:\1\2\0004\0\0\0007\0\1\0'\1\1\0:\1\4\0004\0\0\0007\0\1\0%\1\6\0:\1\5\0004\0\0\0007\0\a\0%\1\b\0>\0\2\0014\0\0\0007\0\a\0%\1\t\0>\0\2\1G\0\1\0>highlight HighlightedyankRegion cterm=reverse gui=reverse\21colorscheme edge\bcmd\fcolored!edge_diagnostic_virtual_text#edge_diagnostic_text_highlight\taura\15edge_style\6g\bvim\0" },
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/edge",
    url = "https://github.com/sainnhe/edge"
  },
  ["fcitx.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/fcitx.nvim",
    url = "https://github.com/h-hg/fcitx.nvim"
  },
  ["filetype.nvim"] = {
    config = { "\27LJ\1\2x\0\0\3\0\b\0\r4\0\0\0007\0\1\0'\1\1\0:\1\2\0004\0\3\0%\1\4\0>\0\2\0027\0\5\0003\1\6\0002\2\0\0:\2\a\1>\0\2\1G\0\1\0\14overrides\1\0\0\nsetup\rfiletype\frequire\23did_load_filetypes\6g\bvim\0" },
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\1\2â\1\0\0\4\0\n\1\0163\0\0\0003\1\1\0004\2\2\0007\2\3\0027\2\4\2'\3\0\0>\2\2\0<\2\0\0:\1\5\0004\1\2\0007\1\6\0017\1\a\1%\2\b\0>\1\2\2:\1\t\0H\0\2\0\bcwd\n%:p:h\vexpand\afn\targs\22nvim_buf_get_name\bapi\bvim\1\3\0\0005--style='{BasedOnStyle: google, IndentWidth: 4}'\22--assume-filename\1\0\2\bexe\17clang-format\nstdin\2\a€€À™\4à\1\0\0\5\0\b\1\0143\0\0\0003\1\1\0004\2\2\0007\2\3\0027\2\4\0024\3\2\0007\3\5\0037\3\6\3'\4\0\0>\3\2\0=\2\0\0<\2\0\0:\1\a\0H\0\2\0\targs\22nvim_buf_get_name\bapi\16fnameescape\afn\bvim\1\2\0\0)--in-place --aggressive --aggressive\1\0\2\nstdin\1\bexe:/home/daoist/.conda/envs/tools/bin/python -m autopep8\5€€À™\4³\1\0\0\4\0\6\1\n3\0\0\0003\1\1\0004\2\2\0007\2\3\0027\2\4\2'\3\0\0>\2\2\0<\2\0\0:\1\5\0H\0\2\0\targs\22nvim_buf_get_name\bapi\bvim\1\5\0\0\18--indent-type\vSpaces\19--indent-width\3\4\1\0\2\nstdin\1\bexe+/home/daoist/dotfiles/formatter/stylua\v€€À™\4”\1\1\0\6\0\f\0\0214\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\n\0003\3\4\0002\4\3\0001\5\3\0;\5\1\4:\4\5\0032\4\3\0001\5\6\0;\5\1\4:\4\a\0032\4\3\0001\5\b\0;\5\1\4:\4\t\3:\3\v\2>\1\2\1G\0\1\0\rfiletype\1\0\0\blua\0\vpython\0\bcpp\1\0\0\0\nsetup\14formatter\frequire\0" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["friendly-snippets"] = {
    after = { "nvim-cmp" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\1\2Ü\a\0\0\5\0\27\0\0314\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\14\0003\3\4\0003\4\3\0:\4\5\0033\4\6\0:\4\a\0033\4\b\0:\4\t\0033\4\n\0:\4\v\0033\4\f\0:\4\r\3:\3\15\0022\3\0\0:\3\16\0023\3\17\0:\3\18\0023\3\19\0:\3\20\0023\3\21\0:\3\22\0023\3\23\0:\3\24\0023\3\25\0:\3\26\2>\1\2\1G\0\1\0\tyadm\1\0\1\venable\1\19preview_config\1\0\5\brow\3\0\rrelative\vcursor\nstyle\fminimal\bcol\3\1\vborder\vsingle&current_line_blame_formatter_opts\1\0\1\18relative_time\1\28current_line_blame_opts\1\0\4\14virt_text\2\ndelay\3ô\3\18virt_text_pos\beol\22ignore_whitespace\1\17watch_gitdir\1\0\2\rinterval\3è\a\17follow_files\2\fkeymaps\nsigns\1\0\t\vlinehl\1\24attach_to_untracked\2\20update_debounce\3d\nnumhl\1\18sign_priority\3\6\15signcolumn\2\23current_line_blame\2\20max_file_length\3À¸\2\14word_diff\1\17changedelete\1\0\4\ttext\6~\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\14topdelete\1\0\4\ttext\bâ€¾\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vdelete\1\0\4\ttext\6_\nnumhl\21GitSignsDeleteNr\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vchange\1\0\4\ttext\bâ”‚\nnumhl\21GitSignsChangeNr\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\badd\1\0\0\1\0\4\ttext\bâ”‚\nnumhl\18GitSignsAddNr\vlinehl\18GitSignsAddLn\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    commands = { "HopLine", "HopLineStart", "HopWord", "HopPattern", "HopChar1", "HopChar2" },
    config = { "\27LJ\1\2U\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\1\2ý\4\0\0\4\0\19\0 4\0\0\0007\0\1\0)\1\2\0:\1\2\0004\0\0\0007\0\1\0)\1\2\0:\1\3\0004\0\0\0007\0\1\0007\0\4\0\16\1\0\0007\0\5\0%\2\6\0>\0\3\0014\0\0\0007\0\a\0)\1\2\0:\1\b\0004\0\t\0%\1\n\0>\0\2\0027\1\v\0003\2\f\0003\3\r\0:\3\14\0023\3\15\0:\3\16\0023\3\17\0:\3\18\2>\1\2\1G\0\1\0\27context_highlight_list\1\3\0\0\nError\fWarning\20buftype_exclude\1\3\0\0\rterminal\nalpha\21filetype_exclude\1\14\0\0\nvista\thelp\nalpha\rterminal\vpacker\flspinfo\20TelescopePrompt\21TelescopeResults\fOutline\fTrouble\18lsp-installer\rNvimtree\5\1\0\b\19use_treesitter\2\21show_end_of_line\1\31show_current_context_start\2\tchar\bâ–\23indentLine_enabled\3\1#show_trailing_blankline_indent\1\25show_current_context\2\28show_first_indent_level\1\nsetup\21indent_blankline\frequire$indent_blankline_use_treesitter\6g\feol:â†´\vappend\14listchars\tlist\18termguicolors\bopt\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  kommentary = {
    config = { "\27LJ\1\2µ\1\0\0\4\0\b\0\f4\0\0\0007\0\1\0)\1\1\0:\1\2\0004\0\3\0%\1\4\0>\0\2\0027\1\5\0%\2\6\0003\3\a\0>\1\3\1G\0\1\0\1\0\1 prefer_single_line_comments\2\fdefault\23configure_language\22kommentary.config\frequire'kommentary_create_default_mappings\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/kommentary",
    url = "https://github.com/b3nj5m1n/kommentary"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\1\2¦\5\0\0\4\0\r\0\0174\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\3\0003\3\4\0:\3\5\0023\3\6\0:\3\a\0023\3\b\0:\3\t\0023\3\n\0:\3\v\0022\3\0\0:\3\f\2>\1\2\1G\0\1\0\24server_filetype_map\23rename_action_keys\1\0\2\tquit\n<C-c>\texec\t<CR>\21code_action_keys\1\0\2\tquit\6q\texec\t<CR>\23finder_action_keys\1\0\6\tquit\6q\16scroll_down\n<C-f>\vvsplit\6s\topen\6o\14scroll_up\n<C-b>\nsplit\6i\23code_action_prompt\1\0\4\18sign_priority\3(\17virtual_text\2\tsign\2\venable\2\1\0\15\28definition_preview_icon\nï”¸  \ndebug\1\17border_style\vsingle\15error_sign\bï™™\29use_saga_diagnostic_sign\2\14hint_sign\bï µ\27diagnostic_header_icon\v ï†ˆ  \25rename_prompt_prefix\bâž¤\29diagnostic_prefix_format\t%d. \15infor_sign\bï‘‰\26finder_reference_icon\nïŒ‘  \14warn_sign\bï”©\22max_preview_lines\3\n\21code_action_icon\tï ´ \27finder_definition_icon\nïŒ‘  \nsetup\flspsaga\frequire\0" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim",
    url = "https://github.com/tami5/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\1\2±\5\0\0\6\0#\00074\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\n\0003\3\3\0003\4\4\0:\4\5\0033\4\6\0:\4\a\0033\4\b\0:\4\t\3:\3\v\0023\3\r\0003\4\f\0:\4\14\0033\4\15\0:\4\16\0032\4\3\0003\5\17\0;\5\1\4:\4\18\0033\4\20\0003\5\19\0;\5\1\0043\5\21\0;\5\3\0043\5\22\0;\5\4\4:\4\23\0033\4\24\0:\4\25\0033\4\26\0:\4\27\3:\3\28\0023\3\29\0002\4\0\0:\4\14\0032\4\0\0:\4\16\0033\4\30\0:\4\18\0033\4\31\0:\4\23\0032\4\0\0:\4\25\0032\4\0\0:\4\27\3:\3 \0022\3\0\0:\3!\0022\3\0\0:\3\"\2>\1\2\1G\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\rfiletype\1\2\0\0\15fileformat\1\3\0\0\0\rencoding\1\2\0\0\18os.date('%a')\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\2\0\0\vbranch\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\1\5\0\0\15toggleterm\rNvimTree\fOutline\fTrouble\23section_separators\1\0\2\tleft\bî‚°\nright\bî‚²\25component_separators\1\0\2\tleft\bî‚±\nright\bî‚³\1\0\2\ntheme\tauto\18icons_enabled\2\nsetup\flualine\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/hoob3rt/lualine.nvim"
  },
  ["material.nvim"] = {
    config = { "\27LJ\1\2­\1\0\0\2\0\a\0\r4\0\0\0007\0\1\0%\1\3\0:\1\2\0004\0\0\0007\0\4\0%\1\5\0>\0\2\0014\0\0\0007\0\4\0%\1\6\0>\0\2\1G\0\1\0>highlight HighlightedyankRegion cterm=reverse gui=reverse\25colorscheme material\bcmd\14palenight\19material_style\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/material.nvim",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  ["nvim-autopairs"] = {
    config = { '\27LJ\1\2­\2\0\0\t\0\r\0\0284\0\0\0004\1\1\0%\2\2\0>\0\3\0034\2\0\0004\3\1\0%\4\3\0>\2\3\3\15\0\0\0T\4\17€\15\0\2\0T\4\15€7\4\4\0013\5\6\0003\6\5\0:\6\a\5>\4\2\0014\4\1\0%\5\b\0>\4\2\0027\5\t\4\16\6\5\0007\5\n\5%\a\v\0007\b\f\3>\b\1\0=\5\2\1G\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\bcmp\21disable_filetype\1\0\1\22ignored_next_char\17[%w%.%(%{%[]\1\3\0\0\20TelescopePrompt\bvim\nsetup"nvim-autopairs.completion.cmp\19nvim-autopairs\frequire\npcall\0' },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "cmp-spell", "cmp-nvim-lsp", "nvim-autopairs", "cmp-nvim-lua", "cmp-nvim-lsp-document-symbol", "cmp-look", "cmp-cmdline", "LuaSnip", "cmp-rg", "cmp-buffer", "cmp-path" },
    config = { "\27LJ\1\2Æ\1\0\2\a\1\b\0\0154\2\1\0007\2\2\2%\3\3\0007\4\0\1+\5\0\0007\6\0\0016\5\6\5>\2\4\2:\2\0\0013\2\5\0007\3\6\0007\3\a\0036\2\3\2:\2\4\1H\1\2\0\0À\tname\vsource\1\0\6\tpath\v[Path]\rnvim_lua\n[Lua]\rnvim_lsp\n[LSP]\vbuffer\r[Buffer]\arg\t[Rg]\fluasnip\14[LuaSnip]\tmenu\n%s %s\vformat\vstring\tkindC\0\1\3\0\4\0\a4\1\0\0%\2\1\0>\1\2\0027\1\2\0017\2\3\0>\1\2\1G\0\1\0\tbody\15lsp_expand\fluasnip\frequire’\2\0\1\a\1\f\0!+\1\0\0007\1\0\1>\1\1\2\15\0\1\0T\2\4€+\1\0\0007\1\1\1>\1\1\1T\1\23€4\1\2\0%\2\3\0>\1\2\0027\1\4\1>\1\1\2\15\0\1\0T\2\14€4\1\5\0007\1\6\0017\1\a\0014\2\5\0007\2\b\0027\2\t\2%\3\n\0)\4\2\0)\5\2\0)\6\2\0>\2\5\2%\3\v\0>\1\3\1T\1\2€\16\1\0\0>\1\1\1G\0\1\0\1À\5!<Plug>luasnip-expand-or-jump\27nvim_replace_termcodes\bapi\rfeedkeys\afn\bvim\23expand_or_jumpable\fluasnip\frequire\21select_next_item\fvisible‡\2\0\1\a\1\f\0\"+\1\0\0007\1\0\1>\1\1\2\15\0\1\0T\2\4€+\1\0\0007\1\1\1>\1\1\1T\1\24€4\1\2\0%\2\3\0>\1\2\0027\1\4\1'\2ÿÿ>\1\2\2\15\0\1\0T\2\14€4\1\5\0007\1\6\0017\1\a\0014\2\5\0007\2\b\0027\2\t\2%\3\n\0)\4\2\0)\5\2\0)\6\2\0>\2\5\2%\3\v\0>\1\3\1T\1\2€\16\1\0\0>\1\1\1G\0\1\0\1À\5\28<Plug>luasnip-jump-prev\27nvim_replace_termcodes\bapi\rfeedkeys\afn\bvim\rjumpable\fluasnip\frequire\21select_prev_item\fvisible¬\b\1\0\a\0000\0G3\0\0\0004\1\1\0%\2\2\0>\1\2\0027\2\3\0013\3\t\0003\4\5\0003\5\4\0:\5\6\0041\5\a\0:\5\b\4:\4\n\0033\4\r\0007\5\v\0017\5\f\5:\5\14\4:\4\15\0033\4\16\0:\4\17\0033\4\19\0003\5\18\0:\5\20\4:\4\21\0033\4\23\0001\5\22\0:\5\24\4:\4\25\0033\4\28\0007\5\26\0017\5\27\5'\6üÿ>\5\2\2:\5\29\0047\5\26\0017\5\27\5'\6\4\0>\5\2\2:\5\30\0047\5\26\0017\5\31\5>\5\1\2:\5 \0047\5\26\0017\5!\0053\6\"\0>\5\2\2:\5#\0041\5$\0:\5%\0041\5&\0:\5'\4:\4\26\0032\4\b\0003\5(\0;\5\1\0043\5)\0;\5\2\0043\5*\0;\5\3\0043\5+\0;\5\4\0043\5,\0;\5\5\0043\5-\0;\5\6\0043\5.\0;\5\a\4:\4/\3>\2\2\0010\0\0€G\0\1\0\fsources\1\0\1\tname\arg\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\fcmdline\1\0\1\tname\15treesitter\1\0\1\tname\rnvim_lsp\f<S-Tab>\0\n<Tab>\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nclose\n<C-f>\n<C-d>\1\0\0\16scroll_docs\fmapping\fsnippet\vexpand\1\0\0\0\18documentation\vborder\1\0\0\1\t\0\0\bâ•­\bâ”€\bâ•®\bâ”‚\bâ•¯\bâ”€\bâ•°\bâ”‚\15completion\1\0\1\16completeopt\26menu,menuone,noinsert\17confirm_opts\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\15formatting\1\0\0\vformat\0\vfields\1\0\0\1\4\0\0\tabbr\tkind\tmenu\nsetup\bcmp\frequire\1\0\25\tText\tï¾ \rFunction\tïž” \rOperator\tïš” \nColor\tï£— \nClass\tï – \vModule\tï’‡ \rConstant\tï£¾ \rProperty\tï‚­ \vMethod\tïš¦ \15EnumMember\tï… \tUnit\tï¥¬ \14Interface\tïƒ¨ \vStruct\bï­„\rVariable\tï”ª \fSnippet\tïƒ„ \vFolder\tïŠ \nEvent\tïƒ§ \nField\bï° \18TypeParameter\tï™± \tFile\tïœ˜ \nValue\tï¢Ÿ \16Constructor\tï¥ \tEnum\tï… \fKeyword\tï Š \14Reference\tïœ† \0" },
    load_after = {
      ["friendly-snippets"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    after = { "nvim-dap-virtual-text", "nvim-dap-ui" },
    config = { "\27LJ\1\2ù\1\0\0\4\0\a\1#4\0\0\0007\0\1\0007\0\2\0>\0\1\0024\1\0\0007\1\1\0017\1\3\1\16\2\0\0%\3\4\0$\2\3\2>\1\2\2\t\1\0\0T\1\5€\16\1\0\0%\2\4\0$\1\2\1H\1\2\0T\1\16€4\1\0\0007\1\1\0017\1\3\1\16\2\0\0%\3\5\0$\2\3\2>\1\2\2\t\1\0\0T\1\5€\16\1\0\0%\2\5\0$\1\2\1H\1\2\0T\1\2€%\1\6\0H\1\2\0G\0\1\0-/home/daoist/.conda/envs/d2l/bin/python3\22/.venv/bin/python\21/venv/bin/python\15executable\vgetcwd\afn\bvim\2·\6\1\0\a\0\29\0/4\0\0\0%\1\1\0>\0\2\0027\1\2\0007\1\3\1%\2\5\0:\2\4\0017\1\6\0003\2\b\0:\2\a\0017\1\6\0003\2\n\0:\2\t\0017\1\v\0002\2\3\0003\3\r\0004\4\14\0007\4\15\0047\4\16\4>\4\1\2%\5\17\0%\6\18\0$\4\6\4:\4\19\3;\3\1\2:\2\f\0017\1\v\0007\2\v\0007\2\f\2:\2\20\0017\1\v\0007\2\v\0007\2\f\2:\2\21\0017\1\6\0003\2\23\0003\3\24\0:\3\25\2:\2\22\0017\1\v\0002\2\3\0003\3\26\0001\4\27\0:\4\28\3;\3\1\2:\2\22\1G\0\1\0\15pythonPath\0\1\0\5\frequest\vlaunch\tname\16Launch file\fprogram\f${file}\ttype\vpython\fconsole\23integratedTerminal\targs\1\3\0\0\a-m\20debugpy.adapter\1\0\2\fcommand./home/daoist/.conda/envs/tools/bin/python\ttype\15executable\vpython\trust\6c\fprogram\31${fileBasenameNoExtension}\6/\vgetcwd\afn\bvim\1\0\6\16stopOnEntry\1\tname\16Launch file\ttype\tlldb\bcwd\19${fileDirname}\frequest\vlaunch\18runInTerminal\1\bcpp\19configurations\1\0\3\tname\tlldb\fcommand\25/usr/bin/lldb-vscode\ttype\15executable\tlldb\1\0\2\fcommand\\/home/daoist/.vscode/extensions/ms-vscode.cpptools-1.7.1/debugAdapters/bin/OpenDebugAD7\ttype\15executable\vcppdbg\radapters\01610split new\21terminal_win_cmd\rfallback\rdefaults\bdap\frequire\0" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\1\2ü\3\0\0\6\0\26\0%4\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\4\0003\3\3\0:\3\5\0023\3\a\0003\4\6\0:\4\b\3:\3\t\0023\3\14\0002\4\5\0003\5\n\0;\5\1\0043\5\v\0;\5\2\0043\5\f\0;\5\3\0043\5\r\0;\5\4\4:\4\15\3:\3\16\0023\3\17\0002\4\0\0:\4\15\3:\3\18\0023\3\19\0003\4\21\0003\5\20\0:\5\22\4:\4\t\3:\3\23\0023\3\24\0:\3\25\2>\1\2\1G\0\1\0\fwindows\1\0\1\vindent\3\1\rfloating\nclose\1\0\0\1\3\0\0\6q\n<Esc>\1\0\1\vborder\vsingle\ttray\1\0\0\fsidebar\relements\1\0\2\tsize\3(\rposition\tleft\1\0\2\aid\fwatches\tsize\4\0€€Àþ\3\1\0\2\aid\vstacks\tsize\4\0€€Àþ\3\1\0\2\aid\16breakpoints\tsize\4\0€€Àþ\3\1\0\2\aid\vscopes\tsize\4\0€€Àþ\3\rmappings\vexpand\1\0\4\topen\6o\trepl\6r\tedit\6e\vremove\6d\1\3\0\0\t<CR>\18<2-LeftMouse>\nicons\1\0\0\1\0\2\14collapsed\bâ–¸\rexpanded\bâ–¾\nsetup\ndapui\frequire\0" },
    load_after = {
      ["nvim-dap"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    config = { "\27LJ\1\2ã\1\0\0\3\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\3\0>\1\2\1G\0\1\0\1\0\t\fenabled\2\15all_frames\2\18virt_text_pos\beol\15virt_lines\1\14commented\1\29highlight_new_as_changed\1 highlight_changed_variables\1\21show_stop_reason\2\21enabled_commands\2\nsetup\26nvim-dap-virtual-text\frequire\0" },
    load_after = {
      ["nvim-dap"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-dap-virtual-text",
    url = "https://github.com/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-lsp-installer"] = {
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    after = { "nvim-dap", "nvim-lsp-installer", "formatter.nvim", "lspsaga.nvim", "symbols-outline.nvim" },
    config = { "\27LJ\1\2ï\1\0\2\a\0\n\0\0173\2\1\0003\3\0\0:\3\2\0024\3\3\0007\3\4\0037\3\5\0034\4\3\0007\4\4\0047\4\a\0044\5\3\0007\5\4\0057\5\b\0057\5\t\5\16\6\2\0>\4\3\2:\4\6\3G\0\1\0\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\blsp\bvim\17virtual_text\1\0\3\14underline\2\nsigns\2\21update_in_insert\1\1\0\2\fspacing\3\0\vprefix\bâ—‚\f\1\0\f\0A\0„\0014\0\0\0007\0\1\0007\0\2\0007\0\3\0>\0\1\0027\1\4\0007\1\5\0017\1\6\1)\2\2\0:\2\a\0017\1\4\0007\1\5\0017\1\6\1)\2\2\0:\2\b\0017\1\4\0007\1\5\0017\1\6\1)\2\2\0:\2\t\0017\1\4\0007\1\5\0017\1\6\1)\2\2\0:\2\n\0017\1\4\0007\1\5\0017\1\6\1)\2\2\0:\2\v\0017\1\4\0007\1\5\0017\1\6\1)\2\2\0:\2\f\0014\1\r\0%\2\14\0>\1\2\0021\2\15\0%\3\16\0007\4\17\0017\4\18\0043\5\21\0003\6\20\0\16\a\3\0%\b\19\0$\a\b\a;\a\1\6:\6\22\5:\2\23\5:\0\24\0053\6\25\0:\6\26\0057\6\27\0017\6\28\6%\a\29\0%\b\30\0%\t\31\0>\6\4\2:\6 \5>\4\2\0017\4!\0017\4\18\0043\5\"\0:\2\23\0053\6#\0:\6\22\0053\6$\0:\6\26\0057\6\27\0017\6\28\6%\a%\0%\b&\0%\t\30\0%\n\31\0>\6\5\2:\6 \5>\4\2\0017\4'\0017\4\18\0043\5(\0:\2\23\0053\6*\0\16\a\3\0%\b)\0$\a\b\a;\a\1\6\16\a\3\0%\b+\0$\a\b\a;\a\3\6:\6\22\0057\6\27\0017\6\28\6%\a\30\0%\b\31\0>\6\3\2:\6 \0053\6,\0:\6-\0053\6>\0003\a/\0003\b.\0:\b0\a3\b1\0003\t2\0:\t3\b:\b4\a3\b9\0002\t\0\b4\n\0\0007\n5\n7\n6\n%\v7\0>\n\2\2)\v\2\0009\v\n\t4\n\0\0007\n5\n7\n6\n%\v8\0>\n\2\2)\v\2\0009\v\n\t:\t:\b:\b;\a3\b<\0:\b=\a:\a?\6:\6@\5>\4\2\1G\0\1\0\rsettings\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\2\15maxPreload\3 \6\20preloadFileSize\3N\28$VIMRUNTIME/lua/vim/lsp\20$VIMRUNTIME/lua\vexpand\afn\16diagnostics\fglobals\1\3\0\0\bvim\19packer_plugins\1\0\1\venable\2\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\14filetypes\1\2\0\0\blua//sumneko_lua/extension/server/bin/main.lua\1\3\0\0\0\a-E:/sumneko_lua/extension/server/bin/lua-language-server\1\0\1\24single_file_support\2\16sumneko_lua\22compile_flags.txt\26compile_commands.json\1\0\1\26debounce_text_changes\3–\1\1\6\0\0\vclangd\23--background-index\31--suggest-missing-includes\17--clang-tidy\28--header-insertion=iwyu\1\0\0\vclangd\rroot_dir\f.vscode\t.git\16__pycache__\17root_pattern\tutil\nflags\1\0\1\26debounce_text_changes\3–\1\17capabilities\14on_attach\bcmd\1\0\0\1\3\0\0\0\f--stdio1/python/node_modules/.bin/pyright-langserver\nsetup\fpyright//home/daoist/.local/share/nvim/lsp_servers\0\14lspconfig\frequire\28commitCharactersSupport\22deprecatedSupport\24labelDetailsSupport\25insertReplaceSupport\21preselectSupport\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle", "NvimTreeFindFile" },
    config = { "\27LJ\1\2ê\t\0\0\a\0005\0D4\0\0\0007\0\1\0'\1\0\0:\1\2\0'\1\3\0:\1\3\0'\1\0\0:\1\4\0'\1\1\0:\1\5\0'\1\1\0:\1\6\0003\1\t\0003\2\b\0:\2\n\0013\2\v\0:\2\f\1:\1\a\0004\1\14\0007\1\15\0013\2\16\0004\3\17\0007\3\18\3%\4\19\0'\5è\3>\3\3\2;\3\2\2>\1\2\2:\1\r\0003\1\21\0:\1\20\0004\1\22\0%\2\23\0>\1\2\0027\2\24\0013\3\25\0003\4\26\0:\4\27\0033\4\28\0:\4\29\0033\4\30\0002\5\0\0:\5\31\4:\4 \0033\4!\0002\5\0\0:\5\"\4:\4#\0033\4$\0003\5%\0:\5&\4:\4'\0033\4(\0:\4)\0033\4+\0003\5*\0:\5,\4:\4-\0033\4.\0003\5/\0002\6\0\0:\0060\5:\0051\4:\0042\0033\0043\0:\0044\3>\2\2\1G\0\1\0\ntrash\1\0\2\bcmd\ntrash\20require_confirm\2\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\6\nwidth\3\25\tside\tleft\16auto_resize\2\19relativenumber\1\15signcolumn\byes\vnumber\1\ffilters\vcustom\1\0\0\1\a\0\0\t.git\17node_modules\v.cache\16__pycache__\f.vscode\23.ipynb_checkpoints\bgit\1\0\3\vignore\1\ftimeout\3ô\3\venable\2\16diagnostics\nicons\1\0\4\tinfo\bïš\thint\bïª\nerror\bï—\fwarning\bï±\1\0\1\venable\2\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\2\venable\2\22update_to_buf_dir\1\0\2\14auto_open\2\venable\2\23ignore_ft_on_setup\1\2\0\0\5\1\0\a\16open_on_tab\1\15auto_close\1\18open_on_setup\1\15update_cwd\2\18disable_netrw\2\18hijack_cursor\2\17hijack_netrw\2\nsetup\14nvim-tree\frequire\1\0\3\ffolders\3\1\nfiles\3\1\18folder_arrows\3\1\25nvim_tree_show_icons\6 \brep\vstring\1\4\0\0\16:t:gs?$?/..\0\r?:gs?^??\vconcat\ntable#nvim_tree_root_folder_modifier\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\15vista_kind\fOutline\fTrouble$nvim_tree_window_picker_exclude\21nvim_tree_git_hl\29nvim_tree_indent_markers\27nvim_tree_quit_on_open%nvim_tree_highlight_opened_files\27nvim_tree_add_trailing\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "completion-treesitter", "nvim-treesitter-textobjects", "nvim-treesitter-refactor", "playground" },
    config = { "\27LJ\1\2€\6\0\0\6\0\25\0\0294\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\4\0003\3\3\0:\3\5\0023\3\6\0:\3\a\0023\3\r\0003\4\b\0003\5\t\0:\5\n\0043\5\v\0:\5\f\4:\4\14\0033\4\15\0003\5\16\0:\5\17\4:\4\18\3:\3\19\0023\3\20\0002\4\0\0:\4\21\0033\4\22\0:\4\23\3:\3\24\2>\1\2\1G\0\1\0\15playground\16keybindings\1\0\n\21toggle_hl_groups\6i\vupdate\6R\19focus_language\6f\21unfocus_language\6F\14goto_node\t<cr>\30toggle_injected_languages\6t\14show_help\6?\27toggle_anonymous_nodes\6a\28toggle_language_display\6I\24toggle_query_editor\6o\fdisable\1\0\3\20persist_queries\1\15updatetime\3\25\venable\2\16textobjects\vselect\fkeymaps\1\0\2\aaq\21@parameter.outer\aiq\21@parameter.inner\1\0\2\14lookahead\2\venable\2\tmove\1\0\0\20goto_next_start\1\0\1\a]]\21@parameter.inner\24goto_previous_start\1\0\1\a[[\21@parameter.inner\1\0\2\14set_jumps\2\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\1\17sync_install\1\1\t\0\0\tbash\6c\15commonlisp\bcpp\tjson\blua\vpython\bvim\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-refactor",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-refactor"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["nvim-window.git"] = {
    config = { "\27LJ\1\2²\1\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\1>\0\2\1G\0\1\0\nchars\1\0\3\vborder\vsingle\14normal_hl\vNormal\fhint_hl\tBold\1\27\0\0\6a\6b\6c\6d\6e\6f\6g\6h\6i\6j\6k\6l\6m\6n\6o\6p\6q\6r\6s\6t\6u\6v\6w\6x\6y\6z\nsetup\16nvim-window\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-window.git",
    url = "https://gitlab.com/yorickpeterse/nvim-window"
  },
  ["onedark.nvim"] = {
    config = { "\27LJ\1\2`\0\0\2\0\5\0\f4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\0014\0\0\0%\1\1\0>\0\2\0027\0\4\0>\0\1\1G\0\1\0\tload\1\0\1\nstyle\tdark\nsetup\fonedark\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  sonokai = {
    config = { "\27LJ\1\2ª\1\0\0\2\0\a\0\r4\0\0\0007\0\1\0%\1\3\0:\1\2\0004\0\0\0007\0\4\0%\1\5\0>\0\2\0014\0\0\0007\0\4\0%\1\6\0>\0\2\1G\0\1\0>highlight HighlightedyankRegion cterm=reverse gui=reverse\24colorscheme sonokai\bcmd\ratlantis\18sonokai_style\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/sonokai",
    url = "https://github.com/sainnhe/sonokai"
  },
  ["surround.nvim"] = {
    config = { "\27LJ\1\2U\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\1\19mappings_style\rsandwich\nsetup\rsurround\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/surround.nvim",
    url = "https://github.com/blackCauldron7/surround.nvim"
  },
  ["symbols-outline.nvim"] = {
    config = { "\27LJ\1\2È\1\0\0\3\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\3\0>\1\2\1G\0\1\0\1\0\b\16show_guides\1\17show_numbers\1\27highlight_hovered_item\1\26show_relative_numbers\1\24show_symbol_details\1\rposition\nright\nwidth\3#\17auto_preview\1\nsetup\20symbols-outline\frequire\0" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { "\27LJ\1\2È\1\0\0\5\0\f\0\0174\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\4\0003\3\3\0:\3\5\0023\3\a\0003\4\6\0:\4\b\0032\4\0\0:\4\t\0032\4\0\0:\4\n\3:\3\v\2>\1\2\1G\0\1\0\fpickers\14live_grep\roldfiles\15find_files\1\0\0\1\0\2\vhidden\2\14no_ignore\2\rdefaults\1\0\0\1\0\1\26dynamic_preview_title\2\nsetup\14telescope\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    commands = { "Trouble", "TroubleToggle", "TroubleRefresh" },
    config = { "\27LJ\1\2Î\5\0\0\5\0\26\0\0294\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\3\0003\3\4\0003\4\5\0:\4\6\0033\4\a\0:\4\b\0033\4\t\0:\4\n\0033\4\v\0:\4\f\0033\4\r\0:\4\14\0033\4\15\0:\4\16\0033\4\17\0:\4\18\0033\4\19\0:\4\20\3:\3\21\0023\3\22\0:\3\23\0023\3\24\0:\3\25\2>\1\2\1G\0\1\0\nsigns\1\0\5\fwarning\bï”©\nother\bï« \16information\bï‘‰\thint\bï µ\nerror\bï™™\14auto_jump\1\2\0\0\20lsp_definitions\16action_keys\16toggle_fold\1\3\0\0\azA\aza\15open_folds\1\3\0\0\azR\azr\16close_folds\1\3\0\0\azM\azm\15jump_close\1\2\0\0\6o\ropen_tab\1\2\0\0\n<c-t>\16open_vsplit\1\2\0\0\n<c-v>\15open_split\1\2\0\0\n<c-x>\tjump\1\3\0\0\t<cr>\n<tab>\1\0\t\rprevious\6k\frefresh\6r\nclose\6q\19toggle_preview\6P\fpreview\6p\tnext\6j\nhover\6K\vcancel\n<esc>\16toggle_mode\6m\1\0\15\vheight\3\n\14fold_open\bï‘¼\tmode\26workspace_diagnostics\rposition\vbottom\fpadding\2\15auto_close\1\17indent_lines\1\ngroup\2\nicons\2\17auto_preview\2\14auto_open\1\25use_diagnostic_signs\1\16fold_closed\bï‘ \14auto_fold\1\nwidth\0032\nsetup\ftrouble\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-highlightedyank"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/vim-highlightedyank",
    url = "https://github.com/machakann/vim-highlightedyank"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\1\2×\31\0\0\5\0“\1\0œ\0014\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\4\0003\3\3\0:\3\5\0023\3\6\0003\4\a\0:\4\b\3:\3\t\0023\3\n\0:\3\v\0023\3\f\0003\4\r\0:\4\14\0033\4\15\0:\4\16\3:\3\17\0023\3\19\0003\4\18\0:\4\20\0033\4\21\0:\4\22\3:\3\23\2>\1\2\0017\1\24\0003\2\26\0003\3\25\0:\3\27\0023\3\28\0:\3\29\0023\3\30\0:\3\31\0023\3 \0:\3!\0023\3\"\0:\3#\0023\3$\0:\3%\0023\3&\0:\3'\0023\3(\0:\3)\0023\3*\0:\3+\0023\3,\0:\3-\0023\3.\0:\3/\0023\0030\0:\0031\0023\0032\0:\0033\0023\0034\0:\0035\0023\0036\0:\0037\0023\0038\0:\0039\0023\3:\0:\3;\0023\3<\0:\3=\0023\3>\0:\3?\0023\3@\0:\3A\0023\3B\0:\3C\0023\3D\0:\3E\0023\3F\0:\3G\0023\3H\0:\3I\0023\3J\0:\3K\0023\3L\0:\3M\0023\3N\0:\3O\0023\3P\0:\3Q\0023\3R\0:\3S\0023\3T\0:\3U\0023\3V\0:\3W\0023\3X\0:\3Y\0023\3Z\0:\3[\0023\3\\\0:\3]\0023\3^\0:\3_\0023\3`\0:\3a\0023\3b\0:\3c\0023\3d\0:\3e\0023\3f\0:\3g\0023\3h\0:\3i\0023\3j\0:\3k\0023\3l\0:\3m\0023\3n\0:\3o\0023\3p\0:\3q\0023\3r\0:\3s\0023\3t\0:\3u\0023\3v\0:\3w\0023\3x\0:\3y\0023\3z\0:\3{\0023\3|\0:\3}\0023\3~\0:\3\0023\3€\0:\3\0023\3‚\0:\3ƒ\0023\3„\0:\3…\0023\3†\0:\3‡\0023\3ˆ\0:\3‰\0023\3Š\0:\3‹\0023\3Œ\0:\3\2>\1\2\0017\1\24\0003\2\0003\3Ž\0:\3‰\0023\3\0:\3‹\0023\3‘\0:\3\0023\3’\0>\1\3\1G\0\1\0\1\0\1\tmode\6v\1\3\0\0%<plug>kommentary_visual_decrease\rdecrease\1\3\0\0%<Plug>kommentary_visual_increase\rincrease\1\0\0\1\0\1\tname\fcomment\15<leader>cd\1\3\0\0#<Plug>kommentary_line_decrease\rdecrease\15<leader>ci\1\3\0\0#<Plug>kommentary_line_increase\rincrease\14<leader>c\1\0\1\tname\fcomment\15<leader>lf\1\3\0\0\25<cmd>FormatWrite<CR>\16FormatWrite\15<leader>lp\1\3\0\0*<cmd>Lspsaga diagnostic_jump_prev<CR>\25diagnostic jump prev\15<leader>ln\1\3\0\0*<cmd>Lspsaga diagnostic_jump_next<CR>\25diagnostic jump next\15<leader>lo\1\3\0\0+<cmd>Lspsaga show_line_diagnostics<CR>\26show line diagnostics\15<leader>ld\1\3\0\0(<cmd>Lspsaga preview_definition<CR>\23preview definition\15<leader>lr\1\3\0\0\28<cmd>Lspsaga rename<CR>\vrename\15<leader>ls\1\3\0\0$<cmd>Lspsaga signature_help<CR>\19signature help\15<leader>la\1\3\0\0!<cmd>Lspsaga code_action<CR>\16code action\15<leader>lh\1\3\0\0 <cmd>Lspsaga lsp_finder<CR>\15lsp finder\14<leader>l\1\0\1\tname\flspsaga\15<leader>st\1\3\0\0\28<cmd>SymbolsOutline<cr>\19SymbolsOutline\14<leader>s\1\0\1\tname\fSymbols\15<leader>tr\1\3\0\0\28<cmd>TroubleRefresh<cr>\19TroubleRefresh\15<leader>tt\1\3\0\0\27<cmd>TroubleToggle<cr>\24TroubleToggle Close\15<leader>tf\1\3\0\0\21<cmd>Trouble<cr>\18Trouble Focus\14<leader>t\1\0\1\tname\fTrouble\22<leader><Leader>l\1\3\0\0\21<cmd>HopLine<cr>\fHopLine\22<leader><Leader>p\1\3\0\0\24<cmd>HopPattern<cr>\15HopPattern\22<leader><Leader>w\1\3\0\0\21<cmd>HopWord<cr>\fHopWord\21<leader><leader>\1\0\1\tname\bhop\15<leader>pu\1\3\0\0@<Cmd>lua require 'core.pack' require('packer').update()<CR>\17PackerUpdate\15<leader>pS\1\3\0\0><Cmd>lua require 'core.pack' require('packer').sync()<CR>\15PackerSync\15<leader>ps\1\3\0\0@<Cmd>lua require 'core.pack' require('packer').status()<CR>\17PackerStatus\15<leader>pC\1\3\0\0?<Cmd>lua require 'core.pack' require('packer').clean()<CR>\16PackerClean\15<leader>pc\1\3\0\0A<Cmd>lua require 'core.pack' require('packer').compile()<CR>\18PackerCompile\15<leader>pi\1\3\0\0A<Cmd>lua require 'core.pack' require('packer').install()<CR>\18PackerInstall\14<leader>p\1\0\1\tname\vPacker\15<leader>nf\1\3\0\0\30<Cmd>NvimTreeFindFile<CR>\22NvimTree FindFile\15<leader>nt\1\3\0\0\28<Cmd>NvimTreeToggle<CR>\20NvimTree Toggle\14<leader>n\1\0\1\tname\rnvimtree\15<leader>w\\\1\3\0\0\23<Cmd>vsp<CR><C-w>l\vvsplit\15<leader>w-\1\3\0\0\22<Cmd>sp<CR><C-w>j\nsplit\15<leader>wn\1\3\0\0/<cmd>lua require('nvim-window').pick()<CR>\tpick\15<leader>wl\1\3\0\0\v<C-w>l\17window right\15<leader>wk\1\3\0\0\v<C-w>k\14window up\15<leader>wj\1\3\0\0\v<C-w>j\16window down\15<leader>wh\1\3\0\0\v<C-w>h\16window left\15<leader>ww\1\3\0\0\v<C-w>w\16window next\15<leader>wc\1\3\0\0\19<Cmd>quit!<CR>\19window conceal\15<leader>wq\1\3\0\0\19<Cmd>qall!<CR>\16window Exit\14<leader>w\1\0\1\tname\vwindow\15<leader>fd\1\3\0\0+<cmd>edit ~/dotfiles/nvim/init.lua<cr>\18Edit init.lua\15<leader>fn\1\3\0\0\18<cmd>enew<cr>\rNew File\15<leader>fs\1\3\0\0\16<cmd>w!<cr>\14Save File\15<leader>fp\1\3\0\0 <cmd>Telescope projects<cr>\rprojects\15<leader>fh\1\3\0\0!<cmd>Telescope help_tags<cr>\14help tags\15<leader>fg\1\3\0\0!<cmd>Telescope live_grep<cr>\14Live grep\15<leader>fb\1\3\0\0\31<cmd>Telescope buffers<cr>\17Find buffers\15<leader>fr\1\3\0\0 <cmd>Telescope oldfiles<cr>\21Open Recent File\15<leader>fl\1\3\0\0001<cmd>Telescope current_buffer_fuzzy_find<cr>\17fuzzy search\15<leader>ff\1\3\0\0\"<cmd>Telescope find_files<cr>\14Find File\14<leader>f\1\0\1\tname\14telescope\15<leader>bc\1\3\0\0!<cmd>BufferLinePickClose<cr>\14PickClose\15<leader>bo\1\3\0\0\28<cmd>BufferLinePick<cr>\tPick\14<leader>b\1\0\0\1\0\1\tname\15bufferline\rregister\vlayout\nwidth\1\0\2\bmax\3-\bmin\3\20\vheight\1\0\2\fspacing\3\3\nalign\tleft\1\0\2\bmax\3\6\bmin\3\1\vwindow\fpadding\1\5\0\0\3\1\3\1\3\1\3\1\vmargin\1\5\0\0\3\0\3\0\3\0\3\0\1\0\2\rposition\vbottom\vborder\tnone\nicons\1\0\3\ngroup\6+\14separator\tâžœ \15breadcrumb\aÂ»\fplugins\rspelling\1\0\2\fenabled\1\16suggestions\3\20\1\0\2\14registers\2\nmarks\2\rtriggers\1\0\0\1\2\0\0\r<leader>\nsetup\14which-key\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: edge
time([[Config for edge]], true)
try_loadstring("\27LJ\1\2„\2\0\0\2\0\n\0\0214\0\0\0007\0\1\0%\1\3\0:\1\2\0004\0\0\0007\0\1\0'\1\1\0:\1\4\0004\0\0\0007\0\1\0%\1\6\0:\1\5\0004\0\0\0007\0\a\0%\1\b\0>\0\2\0014\0\0\0007\0\a\0%\1\t\0>\0\2\1G\0\1\0>highlight HighlightedyankRegion cterm=reverse gui=reverse\21colorscheme edge\bcmd\fcolored!edge_diagnostic_virtual_text#edge_diagnostic_text_highlight\taura\15edge_style\6g\bvim\0", "config", "edge")
time([[Config for edge]], false)
-- Config for: filetype.nvim
time([[Config for filetype.nvim]], true)
try_loadstring("\27LJ\1\2x\0\0\3\0\b\0\r4\0\0\0007\0\1\0'\1\1\0:\1\2\0004\0\3\0%\1\4\0>\0\2\0027\0\5\0003\1\6\0002\2\0\0:\2\a\1>\0\2\1G\0\1\0\14overrides\1\0\0\nsetup\rfiletype\frequire\23did_load_filetypes\6g\bvim\0", "config", "filetype.nvim")
time([[Config for filetype.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeFindFile lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeFindFile", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TroubleRefresh lua require("packer.load")({'trouble.nvim'}, { cmd = "TroubleRefresh", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopLineStart lua require("packer.load")({'hop.nvim'}, { cmd = "HopLineStart", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopWord lua require("packer.load")({'hop.nvim'}, { cmd = "HopWord", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TroubleToggle lua require("packer.load")({'trouble.nvim'}, { cmd = "TroubleToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopPattern lua require("packer.load")({'hop.nvim'}, { cmd = "HopPattern", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopChar1 lua require("packer.load")({'hop.nvim'}, { cmd = "HopChar1", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopLine lua require("packer.load")({'hop.nvim'}, { cmd = "HopLine", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopChar2 lua require("packer.load")({'hop.nvim'}, { cmd = "HopChar2", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Trouble lua require("packer.load")({'trouble.nvim'}, { cmd = "Trouble", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufNewFile * ++once lua require("packer.load")({'nvim-lspconfig', 'kommentary', 'fcitx.nvim'}, { event = "BufNewFile *" }, _G.packer_plugins)]]
vim.cmd [[au TextYankPost * ++once lua require("packer.load")({'vim-highlightedyank'}, { event = "TextYankPost *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'surround.nvim', 'nvim-treesitter', 'indent-blankline.nvim', 'accelerated-jk', 'gitsigns.nvim', 'bufferline.nvim', 'lualine.nvim', 'nvim-window.git'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'gitsigns.nvim', 'nvim-lspconfig', 'kommentary', 'fcitx.nvim'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'better-escape.nvim', 'friendly-snippets'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'which-key.nvim', 'packer.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
