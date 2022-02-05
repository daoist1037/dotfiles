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
local package_path_str = "/home/daoist/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/daoist/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/daoist/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/daoist/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/daoist/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    after = { "cmp_luasnip", "cmp-nvim-lua" },
    config = { "\27LJ\2\nµ\1\0\0\3\0\a\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0005\2\4\0B\0\2\0016\0\0\0'\2\5\0B\0\2\0029\0\6\0B\0\1\1K\0\1\0\14lazy_load luasnip.loaders.from_vscode\1\0\2\17updateevents\29TextChanged,TextChangedI\fhistory\2\15set_config\vconfig\fluasnip\frequire\0" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["accelerated-jk"] = {
    config = { "\27LJ\2\nÖ\1\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0f            nmap j <Plug>(accelerated_jk_gj)\n            nmap k <Plug>(accelerated_jk_gk)\n       \bcmd\bvim\0" },
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/accelerated-jk",
    url = "https://github.com/rhysd/accelerated-jk"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n`\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0009\4\4\1B\2\2\1K\0\1\0\vconfig\nsetup\26alpha.themes.startify\nalpha\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["better-escape.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18better_escape\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/better-escape.nvim",
    url = "https://github.com/max397574/better-escape.nvim"
  },
  ["close-buffers.nvim"] = {
    config = { "\27LJ\2\n±\1\0\1\v\0\b\0\0236\1\0\0'\3\1\0B\1\2\0029\1\2\1)\3\1\0B\1\2\0016\1\3\0009\1\4\0019\1\5\1B\1\1\0026\2\6\0\18\4\0\0B\2\2\4X\5\6Ä6\a\3\0009\a\4\a9\a\a\a\18\t\6\0\18\n\1\0B\a\3\1E\5\3\3R\5¯K\0\1\0\21nvim_win_set_buf\vipairs\25nvim_get_current_buf\bapi\bvim\ncycle\15bufferline\frequireÉ\1\1\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\0033\4\6\0=\4\a\3B\1\2\1K\0\1\0\20next_buffer_cmd\0\27preserve_window_layout\1\0\0\1\2\0\0\tthis\nsetup\18close_buffers\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/close-buffers.nvim",
    url = "https://github.com/kazhala/close-buffers.nvim"
  },
  ["cmp-buffer"] = {
    after = { "cmp-rg", "cmp-cmdline", "cmp-nvim-lsp-document-symbol" },
    after_files = { "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["cmp-spell"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    after_files = { "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-cmdline/after/plugin/cmp_cmdline.lua" },
    load_after = {
      ["cmp-buffer"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-latex-symbols"] = {
    after_files = { "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-latex-symbols/after/plugin/cmp_latex.lua" },
    load_after = {
      ["cmp-nvim-lsp-document-symbol"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-latex-symbols",
    url = "https://github.com/kdheepak/cmp-latex-symbols"
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
    after = { "cmp-path" },
    after_files = { "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {
      cmp_luasnip = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-document-symbol"] = {
    after = { "cmp-latex-symbols" },
    after_files = { "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp-document-symbol/after/plugin/cmp_nvim_lsp_document_symbol.lua" },
    load_after = {
      ["cmp-buffer"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp-document-symbol",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-document-symbol"
  },
  ["cmp-nvim-lua"] = {
    after_files = { "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {
      LuaSnip = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after = { "cmp-spell" },
    after_files = { "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {
      ["cmp-nvim-lsp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-rg"] = {
    after_files = { "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-rg/after/plugin/cmp-rg.lua" },
    load_after = {
      ["cmp-buffer"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-rg",
    url = "https://github.com/lukas-reineke/cmp-rg"
  },
  ["cmp-spell"] = {
    after = { "cmp-buffer" },
    after_files = { "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-spell/after/plugin/cmp-spell.lua" },
    load_after = {
      ["cmp-path"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  ["cmp-under-comparator"] = {
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/cmp-under-comparator",
    url = "https://github.com/lukas-reineke/cmp-under-comparator"
  },
  cmp_luasnip = {
    after = { "cmp-nvim-lsp" },
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
    config = { "\27LJ\2\nÑ\2\0\0\3\0\n\0\0216\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0006\0\0\0009\0\a\0'\2\b\0B\0\2\0016\0\0\0009\0\a\0'\2\t\0B\0\2\1K\0\1\0>highlight HighlightedyankRegion cterm=reverse gui=reverse\21colorscheme edge\bcmd\fcolored!edge_diagnostic_virtual_text#edge_diagnostic_text_highlight\taura\15edge_style\6g\bvim\0" },
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
  ["fidget.nvim"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vfidget\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["filetype.nvim"] = {
    config = { "\27LJ\2\nx\0\0\4\0\b\0\r6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\6\0004\3\0\0=\3\a\2B\0\2\1K\0\1\0\14overrides\1\0\0\nsetup\rfiletype\frequire\23did_load_filetypes\6g\bvim\0" },
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\2\nÂ\1\0\0\5\0\n\1\0165\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\2)\4\0\0B\2\2\0?\2\0\0=\1\5\0006\1\2\0009\1\6\0019\1\a\1'\3\b\0B\1\2\2=\1\t\0L\0\2\0\bcwd\n%:p:h\vexpand\afn\targs\22nvim_buf_get_name\bapi\bvim\1\3\0\0008--style='{BasedOnStyle: Microsoft, IndentWidth: 4}'\22--assume-filename\1\0\2\nstdin\2\bexe\17clang-format\aÄÄ¿ô\4Â\1\0\0\5\0\n\1\0165\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\2)\4\0\0B\2\2\0?\2\0\0=\1\5\0006\1\2\0009\1\6\0019\1\a\1'\3\b\0B\1\2\2=\1\t\0L\0\2\0\bcwd\n%:p:h\vexpand\afn\targs\22nvim_buf_get_name\bapi\bvim\1\3\0\0008--style='{BasedOnStyle: Microsoft, IndentWidth: 4}'\22--assume-filename\1\0\2\nstdin\2\bexe\17clang-format\aÄÄ¿ô\4‡\1\0\0\a\0\b\1\0145\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\0026\4\2\0009\4\5\0049\4\6\4)\6\0\0B\4\2\0A\2\0\0?\2\0\0=\1\a\0L\0\2\0\targs\22nvim_buf_get_name\bapi\16fnameescape\afn\bvim\1\2\0\0)--in-place --aggressive --aggressive\1\0\2\nstdin\1\bexe:/home/daoist/.conda/envs/tools/bin/python -m autopep8\5ÄÄ¿ô\4≥\1\0\0\5\0\6\1\n5\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\2)\4\0\0B\2\2\0?\2\0\0=\1\5\0L\0\2\0\targs\22nvim_buf_get_name\bapi\bvim\1\5\0\0\18--indent-type\vSpaces\19--indent-width\3\4\1\0\2\nstdin\1\bexe+/home/daoist/dotfiles/formatter/stylua\vÄÄ¿ô\4ß\1\1\0\a\0\14\0\0256\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\f\0005\4\4\0004\5\3\0003\6\3\0>\6\1\5=\5\5\0044\5\3\0003\6\6\0>\6\1\5=\5\a\0044\5\3\0003\6\b\0>\6\1\5=\5\t\0044\5\3\0003\6\n\0>\6\1\5=\5\v\4=\4\r\3B\1\2\1K\0\1\0\rfiletype\1\0\0\blua\0\vpython\0\6c\0\bcpp\1\0\0\0\nsetup\14formatter\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
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
  ["fzy-lua-native"] = {
    load_after = {
      ["wilder.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/fzy-lua-native",
    url = "https://github.com/romgrk/fzy-lua-native"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n‹\a\0\0\6\0\27\0\0316\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\14\0005\4\4\0005\5\3\0=\5\5\0045\5\6\0=\5\a\0045\5\b\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0=\5\r\4=\4\15\0034\4\0\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\0035\4\25\0=\4\26\3B\1\2\1K\0\1\0\tyadm\1\0\1\venable\1\19preview_config\1\0\5\nstyle\fminimal\rrelative\vcursor\vborder\vsingle\brow\3\0\bcol\3\1&current_line_blame_formatter_opts\1\0\1\18relative_time\1\28current_line_blame_opts\1\0\4\18virt_text_pos\beol\22ignore_whitespace\1\ndelay\3Ù\3\14virt_text\2\17watch_gitdir\1\0\2\rinterval\3Ë\a\17follow_files\2\fkeymaps\nsigns\1\0\t\18sign_priority\3\6\20update_debounce\3d\vlinehl\1\23current_line_blame\2\24attach_to_untracked\2\nnumhl\1\14word_diff\1\20max_file_length\3¿∏\2\15signcolumn\2\17changedelete\1\0\4\nnumhl\21GitSignsChangeNr\ttext\6~\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\14topdelete\1\0\4\nnumhl\21GitSignsDeleteNr\ttext\b‚Äæ\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vdelete\1\0\4\nnumhl\21GitSignsDeleteNr\ttext\6_\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vchange\1\0\4\nnumhl\21GitSignsChangeNr\ttext\b‚îÇ\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\badd\1\0\0\1\0\4\nnumhl\18GitSignsAddNr\ttext\b‚îÇ\vlinehl\18GitSignsAddLn\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    commands = { "HopLine", "HopLineStart", "HopWord", "HopPattern", "HopChar1", "HopChar2" },
    config = { "\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nÜ\6\0\0\5\0\19\0 6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0006\0\0\0009\0\1\0009\0\4\0\18\2\0\0009\0\5\0'\3\6\0B\0\3\0016\0\a\0'\2\b\0B\0\2\0029\1\t\0005\3\n\0005\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\3B\1\2\0016\1\0\0009\1\17\1'\3\18\0B\1\2\1K\0\1\0001autocmd CursorMoved * IndentBlanklineRefresh\bcmd\21context_patterns\1\15\0\0\nclass\rfunction\vmethod\nblock\17list_literal\rselector\b^if\v^table\17if_statement\nwhile\bfor\ttype\bvar\vimport\20buftype_exclude\1\4\0\0\rterminal\nalpha\vnofile\21filetype_exclude\1\18\0\0\nvista\thelp\nalpha\rterminal\vpacker\flspinfo\20TelescopePrompt\21TelescopeResults\fOutline\fTrouble\18lsp-installer\rNvimTree\17dapui_scopes\17dapui_stacks\18dapui_watches\22dapui_breakpoints\5\1\0\a\23indentLine_enabled\3\1\28show_first_indent_level\2#show_trailing_blankline_indent\1\25show_current_context\2\25space_char_blankline\6 \tchar\b‚ñè\19use_treesitter\2\nsetup\21indent_blankline\frequire\feol:‚Ü¥\vappend\14listchars\tlist\18termguicolors\bopt\bvim\0" },
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  kommentary = {
    config = { "\27LJ\2\nµ\1\0\0\5\0\b\0\f6\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\3\0'\2\4\0B\0\2\0029\1\5\0'\3\6\0005\4\a\0B\1\3\1K\0\1\0\1\0\1 prefer_single_line_comments\2\fdefault\23configure_language\22kommentary.config\frequire'kommentary_create_default_mappings\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/kommentary",
    url = "https://github.com/b3nj5m1n/kommentary"
  },
  ["lspkind-nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n¶\5\0\0\5\0\r\0\0176\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0034\4\0\0=\4\f\3B\1\2\1K\0\1\0\24server_filetype_map\23rename_action_keys\1\0\2\texec\t<CR>\tquit\n<C-c>\21code_action_keys\1\0\2\texec\t<CR>\tquit\6q\23finder_action_keys\1\0\6\nsplit\6i\16scroll_down\n<C-f>\vvsplit\6s\14scroll_up\n<C-b>\tquit\6q\topen\6o\23code_action_prompt\1\0\4\18sign_priority\3(\tsign\2\venable\2\17virtual_text\2\1\0\15\17border_style\vsingle\28definition_preview_icon\nÔî∏  \25rename_prompt_prefix\b‚û§\22max_preview_lines\3\n\26finder_reference_icon\nÔåë  \ndebug\1\27finder_definition_icon\nÔåë  \21code_action_icon\tÔ†¥ \27diagnostic_header_icon\v ÔÜà  \15infor_sign\bÔëâ\14hint_sign\bÔ†µ\29diagnostic_prefix_format\t%d. \14warn_sign\bÔî©\15error_sign\bÔôô\29use_saga_diagnostic_sign\2\nsetup\flspsaga\frequire\0" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim",
    url = "https://github.com/tami5/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n\28\0\0\1\0\1\0\2'\0\0\0L\0\2\0\17dapui_scopes!\0\0\1\0\1\0\2'\0\0\0L\0\2\0\22dapui_breakpoints\28\0\0\1\0\1\0\2'\0\0\0L\0\2\0\17dapui_stacks\29\0\0\1\0\1\0\2'\0\0\0L\0\2\0\18dapui_watches\24\0\0\1\0\1\0\2'\0\0\0L\0\2\0\rquickfixŸ\v\1\0\19\0I\0Ö\0016\0\0\0009\0\1\0+\1\2\0=\1\2\0003\0\3\0003\1\4\0003\2\5\0003\3\6\0005\4\t\0005\5\a\0004\6\3\0>\0\1\6=\6\b\5=\5\n\0045\5\v\0=\5\f\0045\5\14\0005\6\r\0004\a\3\0>\1\1\a=\a\b\6=\6\n\0055\6\15\0=\6\f\0055\6\17\0005\a\16\0004\b\3\0>\2\1\b=\b\b\a=\a\n\0065\a\18\0=\a\f\0065\a\20\0005\b\19\0004\t\3\0>\3\1\t=\t\b\b=\b\n\a5\b\21\0=\b\f\a3\b\22\0005\t\26\0005\n\23\0004\v\3\0>\b\1\v=\v\b\n5\v\24\0=\v\25\n=\n\n\t5\n\27\0=\n\f\t5\n\28\0005\v\29\0=\v\30\n5\v\31\0005\f \0=\f!\v5\f\"\0=\f\n\v5\f#\0=\f$\v6\f%\0'\14&\0B\f\2\0029\r'\f5\15/\0005\16(\0005\17)\0=\17*\0165\17+\0=\17,\0165\17-\0=\17.\16=\0160\0155\0161\0004\17\3\0>\n\1\17=\17\b\0165\0172\0=\0173\0165\0174\0=\0175\0164\17\0\0=\0176\0164\17\0\0=\0177\0165\0178\0=\17\25\16=\0169\0155\16;\0005\17:\0=\17\b\0165\17<\0>\v\3\17=\0173\0164\17\3\0005\18=\0>\18\1\17=\0175\0165\17>\0005\18?\0>\18\2\0175\18@\0>\18\3\17=\0176\0165\17A\0=\0177\0165\17B\0=\17\25\16=\16\n\0155\16C\0004\17\0\0=\17\b\0164\17\0\0=\0173\0165\17D\0=\0175\0165\17E\0=\0176\0164\17\0\0=\0177\0164\17\0\0=\17\25\16=\16F\0155\16G\0>\4\4\16>\5\5\16>\a\6\16>\6\a\16>\t\b\16=\16H\15B\r\2\1K\0\1\0\15extensions\1\4\0\0\14nvim-tree\20symbols-outline\15toggleterm\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\1\2\0\0\rlocation\1\2\0\0\rprogress\1\2\0\0\rfiletype\1\2\0\0\15fileformat\1\2\0\0\rencoding\1\2\0\0\rfilename\1\3\0\0\vbranch\tdiff\1\0\0\1\2\0\0\tmode\ftabline\1\2\0\0\ttabs\14lualine_y\14lualine_x\14lualine_c\1\2\0\0\5\14lualine_b\1\2\0\0\5\1\0\0\foptions\1\0\0\23disabled_filetypes\1\2\0\0\rcodelldb\23section_separators\1\0\2\nright\bÓÇ≤\tleft\bÓÇ∞\25component_separators\1\0\2\nright\bÓÇ≥\tleft\bÓÇ±\1\0\2\ntheme\tauto\18icons_enabled\2\nsetup\flualine\frequire\22diagnostics_color\1\0\4\twarn\19DiagnosticWarn\nerror\20DiagnosticError\tinfo\19DiagnosticInfo\thint\19DiagnosticHint\1\5\0\0\nerror\twarn\tinfo\thint\fsources\1\3\0\0\20nvim_diagnostic\rnvim_lsp\1\2\3\0\16diagnostics\fcolored\1\21update_in_insert\1\19always_visible\1\19filetype_names\1\0\3\nalpha\nAlpha\20TelescopePrompt\14Telescope\vpacker\vPacker\1\2\0\0\fbuffers\1\2\0\0\aqf\1\0\0\14lualine_z\1\2\0\0\rlocation\1\0\0\0\1\2\0\0\18dapui_watches\1\0\0\1\0\0\1\2\0\0\17dapui_stacks\1\0\0\1\0\0\1\2\0\0\22dapui_breakpoints\1\0\0\1\0\0\14filetypes\1\2\0\0\17dapui_scopes\rsections\1\0\0\14lualine_a\1\0\0\0\0\0\0\26qf_disable_statusline\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n≠\2\0\0\v\0\r\0\0286\0\0\0006\2\1\0'\3\2\0B\0\3\0036\2\0\0006\4\1\0'\5\3\0B\2\3\3\15\0\0\0X\4\17Ä\15\0\2\0X\4\15Ä9\4\4\0015\6\6\0005\a\5\0=\a\a\6B\4\2\0016\4\1\0'\6\b\0B\4\2\0029\5\t\4\18\a\5\0009\5\n\5'\b\v\0009\t\f\3B\t\1\0A\5\2\1K\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\bcmp\21disable_filetype\1\0\1\22ignored_next_char\17[%w%.%(%{%[]\1\3\0\0\20TelescopePrompt\bvim\nsetup\"nvim-autopairs.completion.cmp\19nvim-autopairs\frequire\npcall\0" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-bqf",
    url = "https://github.com/kevinhwang91/nvim-bqf"
  },
  ["nvim-cmp"] = {
    after = { "tabout.nvim", "nvim-autopairs", "cmp-look", "LuaSnip", "cmp-under-comparator" },
    config = { "\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2Ó\2\0\2\b\0\17\0002\18\4\0\0009\2\0\0B\2\2\0029\3\1\0009\3\2\0036\4\3\0'\6\4\0B\4\2\0029\4\5\0049\4\6\0049\4\a\4\5\3\4\0X\3\aÄ6\3\b\0009\3\5\0039\3\t\0039\3\n\3\18\5\2\0B\3\2\2\18\2\3\0006\3\3\0'\5\v\0B\3\2\0029\3\f\3\18\5\2\0B\3\2\2\18\2\3\0009\3\1\0009\3\2\0036\4\3\0'\6\4\0B\4\2\0029\4\5\0049\4\6\0049\4\a\4\5\3\4\0X\3\vÄ6\3\r\0009\3\14\0039\5\15\1)\6ˇˇ)\aˇˇB\3\4\2\a\3\16\0X\3\3Ä\18\3\2\0'\4\16\0&\2\4\3=\2\15\1L\1\2\0\6~\tabbr\bsub\vstring\foneline\18cmp.utils.str\18parse_snippet\tutil\bvim\fSnippet\21InsertTextFormat\blsp\14cmp.types\frequire\21insertTextFormat\20completion_item\20get_insert_textC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireΩ\2\0\1\t\2\r\0)-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\31Ä6\1\2\0'\3\3\0B\1\2\0029\1\4\1B\1\1\2\15\0\1\0X\2\14Ä6\1\5\0009\1\6\0019\1\a\0016\3\5\0009\3\b\0039\3\t\3'\5\n\0+\6\2\0+\a\2\0+\b\2\0B\3\5\2'\4\v\0B\1\3\1X\1\nÄ-\1\1\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\f\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\3¿\0¿\rcomplete\5!<Plug>luasnip-expand-or-jump\27nvim_replace_termcodes\bapi\rfeedkeys\afn\bvim\23expand_or_jumpable\fluasnip\frequire\21select_next_item\fvisibleá\2\0\1\t\1\f\0\"-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\24Ä6\1\2\0'\3\3\0B\1\2\0029\1\4\1)\3ˇˇB\1\2\2\15\0\1\0X\2\14Ä6\1\5\0009\1\6\0019\1\a\0016\3\5\0009\3\b\0039\3\t\3'\5\n\0+\6\2\0+\a\2\0+\b\2\0B\3\5\2'\4\v\0B\1\3\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\3¿\5\28<Plug>luasnip-jump-prev\27nvim_replace_termcodes\bapi\rfeedkeys\afn\bvim\rjumpable\fluasnip\frequire\21select_prev_item\fvisible•\18\1\0\r\0`\0‘\0016\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\0016\0\0\0009\0\1\0'\2\t\0B\0\2\0016\0\0\0009\0\1\0'\2\n\0B\0\2\0016\0\0\0009\0\1\0'\2\v\0B\0\2\0016\0\0\0009\0\1\0'\2\f\0B\0\2\0016\0\0\0009\0\1\0'\2\r\0B\0\2\0013\0\14\0006\1\15\0009\1\16\0019\1\17\1\14\0\1\0X\1\4Ä6\1\0\0009\1\1\1'\3\18\0B\1\2\0016\1\19\0'\3\20\0B\1\2\0026\2\19\0'\4\21\0B\2\2\0026\3\15\0009\3\22\0039\3\17\3\14\0\3\0X\3\4Ä6\3\0\0009\3\1\3'\5\23\0B\3\2\0016\3\19\0'\5\24\0B\3\2\0029\4\25\0035\6!\0005\a\31\0009\b\26\0015\n\27\0=\2\28\n3\v\29\0=\v\30\nB\b\2\2=\b \a=\a\"\0065\a-\0004\b\t\0009\t#\0039\t$\t9\t%\t>\t\1\b9\t#\0039\t$\t9\t&\t>\t\2\b9\t#\0039\t$\t9\t'\t>\t\3\b6\t\19\0'\v\22\0B\t\2\0029\t(\t>\t\4\b9\t#\0039\t$\t9\t)\t>\t\5\b9\t#\0039\t$\t9\t*\t>\t\6\b9\t#\0039\t$\t9\t+\t>\t\a\b9\t#\0039\t$\t9\t,\t>\t\b\b=\b.\a=\a/\0065\a2\0009\b0\0039\b1\b=\b3\a=\a4\0065\a5\0=\a6\0065\a8\0005\b7\0=\b9\a=\a:\0065\a<\0003\b;\0=\b=\a=\a>\0065\aB\0009\b?\0039\n?\0039\n@\n)\f¸ˇB\n\2\0025\vA\0B\b\3\2=\bC\a9\b?\0039\n?\0039\n@\n)\f\4\0B\n\2\0025\vD\0B\b\3\2=\bE\a9\b?\0035\nG\0009\v?\0039\vF\vB\v\1\2=\vH\n9\v?\0039\vI\vB\v\1\2=\vJ\nB\b\2\2=\bK\a9\b?\0039\bL\b5\nM\0009\v0\0039\v1\v=\v3\nB\b\2\2=\bN\a9\b?\0033\nO\0005\vP\0B\b\3\2=\bQ\a9\b?\0033\nR\0005\vS\0B\b\3\2=\bT\a=\a?\0064\a\v\0005\bU\0>\b\1\a5\bV\0>\b\2\a5\bW\0>\b\3\a5\bX\0>\b\4\a5\bY\0>\b\5\a5\bZ\0>\b\6\a5\b[\0>\b\a\a5\b\\\0>\b\b\a5\b]\0>\b\t\a5\b^\0>\b\n\a=\a_\6B\4\2\0012\0\0ÄK\0\1\0\fsources\1\0\1\tname\arg\1\0\1\tname\tpath\1\0\1\tname\18latex_symbols\1\0\1\tname\nspell\1\0\1\tname\rnvim_lua\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\fcmdline\1\0\1\tname\15treesitter\1\0\1\tname\rnvim_lsp\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-f>\1\3\0\0\6i\6c\n<C-d>\1\0\0\1\3\0\0\6i\6c\16scroll_docs\fmapping\fsnippet\vexpand\1\0\0\0\18documentation\vborder\1\0\0\1\t\0\0\b‚ï≠\b‚îÄ\b‚ïÆ\b‚îÇ\b‚ïØ\b‚îÄ\b‚ï∞\b‚îÇ\15completion\1\0\1\16completeopt\26menu,menuone,noinsert\17confirm_opts\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fsorting\16comparators\1\0\0\norder\vlength\14sort_text\tkind\nunder\nscore\nexact\voffset\fcompare\vconfig\15formatting\1\0\0\vformat\1\0\0\vbefore\0\15symbol_map\1\0\2\rmaxwidth\3\30\tmode\16symbol_text\15cmp_format\nsetup\bcmp!packadd cmp-under-comparator\25cmp-under-comparator\20configs.Lspkind\flspkind\frequire\25packadd lspkind-nvim\vloaded\17lspkind-nvim\19packer_plugins\0009highlight CmpItemKindMethod guifg=#B48EAD guibg=NONE;highlight CmpItemKindFunction guifg=#B48EAD guibg=NONE7highlight CmpItemKindText guifg=#81A1C1 guibg=NONE<highlight CmpItemKindInterface guifg=#88C0D0 guibg=NONE;highlight CmpItemKindVariable guifg=#8FBCBB guibg=NONE=highlight CmpItemAbbrMatchFuzzy guifg=#5E81AC guibg=NONE8highlight CmpItemAbbrMatch guifg=#5E81AC guibg=NONE:highlight CmpItemKindKeyword guifg=#EBCB8B guibg=NONE;highlight CmpItemKindProperty guifg=#A3BE8C guibg=NONE7highlight CmpItemKindUnit guifg=#D08770 guibg=NONE:highlight CmpItemKindSnippet guifg=#BF616A guibg=NONEOhighlight CmpItemAbbrDeprecated guifg=#D8DEE9 guibg=NONE gui=strikethrough\bcmd\bvim\0" },
    load_after = {
      ["friendly-snippets"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    after = { "nvim-dap-ui", "nvim-dap-virtual-text" },
    config = { "\27LJ\2\nÄ\1\0\1\5\3\3\1\19-\1\0\0\18\3\1\0009\1\0\1B\1\2\1-\1\1\0\18\3\1\0009\1\0\1B\1\2\1-\1\2\0\18\3\1\0009\1\0\1B\1\2\1\b\0\0\0X\1\4Ä6\1\1\0'\3\2\0\18\4\0\0B\1\3\1K\0\1\0\1¿\2¿\4Ä\30codelldb exited with code\nprint\nclose\0F\0\0\4\2\2\0\6-\0\0\0005\2\0\0-\3\1\0=\3\1\2B\0\2\1K\0\1\0\0\0\2¿\tport\1\0\2\ttype\vserver\thost\014127.0.0.1=\0\0\3\1\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0-\2\0\0B\0\2\1K\0\1\0\1¿\vappend\rdap.repl\frequireù\1\1\2\6\1\a\0\0246\2\0\0\19\4\0\0\18\5\0\0B\2\3\1\15\0\1\0X\2\16Ä\18\4\1\0009\2\1\1'\5\2\0B\2\3\2\15\0\2\0X\3\5Ä6\3\3\0009\3\4\0033\5\5\0B\3\2\1X\3\4Ä6\3\3\0009\3\4\0033\5\6\0B\3\2\0012\2\0Ä2\0\0ÄK\0\1\0\0¿\0\0\rschedule\bvim\28Listening on port (%d+)\nmatch\vassert=\0\0\3\1\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0-\2\0\0B\0\2\1K\0\1\0\1¿\vappend\rdap.repl\frequireL\1\2\6\0\4\0\f6\2\0\0\19\4\0\0\18\5\0\0B\2\3\1\15\0\1\0X\2\4Ä6\2\1\0009\2\2\0023\4\3\0B\2\2\0012\0\0ÄK\0\1\0\0\rschedule\bvim\vassertË\2\1\1\14\0\15\0,6\1\0\0009\1\1\0019\1\2\1+\3\1\0B\1\2\0026\2\0\0009\2\1\0029\2\2\2+\4\1\0B\2\2\2'\3\3\0,\4\5\0005\6\5\0005\a\4\0>\1\2\a>\2\3\a=\a\6\0066\a\0\0009\a\1\a9\a\a\a\18\t\3\0\18\n\6\0003\v\b\0B\a\4\3\18\5\b\0\18\4\a\0006\a\t\0\18\t\4\0'\n\n\0006\v\v\0\18\r\5\0B\v\2\2&\n\v\nB\a\3\1\18\t\1\0009\a\f\0013\n\r\0B\a\3\1\18\t\2\0009\a\f\0023\n\14\0B\a\3\0012\0\0ÄK\0\1\0\0\0\15read_start\rtostring\29Error running codelldb: \vassert\0\nspawn\nstdio\1\0\1\rdetached\2\1\0\0P/home/daoist/.vscode/extensions/vadimcn.vscode-lldb-1.6.10/adapter/codelldb\rnew_pipe\tloop\bvim˘\1\0\0\5\0\a\1#6\0\0\0009\0\1\0009\0\2\0B\0\1\0026\1\0\0009\1\1\0019\1\3\1\18\3\0\0'\4\4\0&\3\4\3B\1\2\2\t\1\0\0X\1\5Ä\18\1\0\0'\2\4\0&\1\2\1L\1\2\0X\1\16Ä6\1\0\0009\1\1\0019\1\3\1\18\3\0\0'\4\5\0&\3\4\3B\1\2\2\t\1\0\0X\1\5Ä\18\1\0\0'\2\5\0&\1\2\1L\1\2\0X\1\2Ä'\1\6\0L\1\2\0K\0\1\0-/home/daoist/.conda/envs/d2l/bin/python3\22/.venv/bin/python\21/venv/bin/python\15executable\vgetcwd\afn\bvim\2Ö\a\1\0\a\0 \00066\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\1'\2\5\0=\2\4\0019\1\2\0009\1\3\1+\2\2\0=\2\6\0019\1\a\0003\2\t\0=\2\b\0019\1\a\0005\2\v\0=\2\n\0019\1\a\0005\2\r\0=\2\f\0019\1\14\0004\2\3\0005\3\16\0006\4\17\0009\4\18\0049\4\19\4B\4\1\2'\5\20\0'\6\21\0&\4\6\4=\4\22\3>\3\1\2=\2\15\0019\1\14\0009\2\14\0009\2\15\2=\2\23\0019\1\14\0009\2\14\0009\2\15\2=\2\24\0019\1\a\0005\2\26\0005\3\27\0=\3\28\2=\2\25\0019\1\14\0004\2\3\0005\3\29\0003\4\30\0=\4\31\3>\3\1\2=\2\25\1K\0\1\0\15pythonPath\0\1\0\5\ttype\vpython\tname\16Launch file\frequest\vlaunch\fprogram\f${file}\fconsole\23integratedTerminal\targs\1\3\0\0\a-m\20debugpy.adapter\1\0\2\ttype\15executable\fcommand./home/daoist/.conda/envs/tools/bin/python\vpython\trust\6c\fprogram\31${fileBasenameNoExtension}\6/\vgetcwd\afn\bvim\1\0\6\ttype\rcodelldb\rterminal\15integrated\bcwd\23${workspaceFolder}\16stopOnEntry\1\tname\16Launch file\frequest\vlaunch\bcpp\19configurations\1\0\3\ttype\15executable\fcommand\25/usr/bin/lldb-vscode\tname\tlldb\tlldb\1\0\3\ttype\15executable\fcommand\\/home/daoist/.vscode/extensions/ms-vscode.cpptools-1.7.1/debugAdapters/bin/OpenDebugAD7\tname\vcppdbg\vcppdbg\0\rcodelldb\radapters\19focus_terminal\01610split new\21terminal_win_cmd\rfallback\rdefaults\bdap\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\2\n„\3\0\0\a\0\25\0#6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\0035\4\a\0005\5\6\0=\5\b\4=\4\t\0035\4\r\0004\5\4\0005\6\n\0>\6\1\0055\6\v\0>\6\2\0055\6\f\0>\6\3\5=\5\14\4=\4\15\0035\4\16\0004\5\0\0=\5\14\4=\4\17\0035\4\18\0005\5\20\0005\6\19\0=\6\21\5=\5\t\4=\4\22\0035\4\23\0=\4\24\3B\1\2\1K\0\1\0\fwindows\1\0\1\vindent\3\1\rfloating\nclose\1\0\0\1\3\0\0\6q\n<Esc>\1\0\1\vborder\frounded\ttray\1\0\0\fsidebar\relements\1\0\2\tsize\3(\rposition\tleft\1\0\2\aid\vstacks\tsize\4üäÆè\5∏Ω‘˛\3\1\0\2\aid\fwatches\tsize\4üäÆè\5∏Ω‘˛\3\1\0\2\aid\vscopes\tsize\4√Î£·\5èÖ◊˛\3\rmappings\vexpand\1\0\4\trepl\6r\tedit\6e\vremove\6d\topen\6o\1\3\0\0\t<CR>\18<2-LeftMouse>\nicons\1\0\0\1\0\2\14collapsed\b‚ñ∏\rexpanded\b‚ñæ\nsetup\ndapui\frequire\0" },
    load_after = {
      ["nvim-dap"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    config = { "\27LJ\2\n„\1\0\0\4\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0B\1\2\1K\0\1\0\1\0\t highlight_changed_variables\1\21enabled_commands\2\fenabled\2\15virt_lines\1\15all_frames\2\18virt_text_pos\beol\14commented\1\21show_stop_reason\2\29highlight_new_as_changed\1\nsetup\26nvim-dap-virtual-text\frequire\0" },
    load_after = {
      ["nvim-dap"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-dap-virtual-text",
    url = "https://github.com/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-lsp-installer"] = {
    commands = { "LspInstall" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    after = { "lspsaga.nvim" },
    config = { "\27LJ\2\né\3\0\3\t\0\18\0008\v\0\0\0X\3\2Ä\v\1\0\0X\3\1ÄK\0\1\0006\3\0\0009\3\1\0039\3\2\0039\5\3\2'\6\4\0B\3\3\0026\4\0\0009\4\1\0049\4\2\0049\6\3\2'\a\5\0B\4\3\2\5\3\4\0X\3$Ä6\3\0\0009\3\6\0039\3\a\3B\3\1\0026\4\0\0009\4\b\0049\4\t\0049\4\n\4\18\6\1\0009\a\3\2'\b\v\0B\4\4\0016\4\0\0009\4\6\0049\4\f\4\18\6\3\0B\4\2\0019\4\3\0026\5\0\0009\5\1\0059\5\r\5B\5\1\2\5\4\5\0X\4\fÄ6\4\0\0009\4\14\4+\5\2\0=\5\15\0046\4\0\0009\4\16\4'\6\17\0B\4\2\0016\4\0\0009\4\14\4+\5\1\0=\5\15\4K\0\1\0\vupdate\bcmd\18saving_format\6b\25nvim_get_current_buf\16winrestview\nutf-8\21apply_text_edits\tutil\blsp\16winsaveview\afn\16changedtick\21init_changedtick\nbufnr\21nvim_buf_get_var\bapi\bvim∆\3\0\2\b\0\17\0%5\2\1\0005\3\0\0=\3\2\0029\3\3\0009\3\4\3\15\0\3\0X\4\16Ä6\3\5\0009\3\6\3'\5\a\0B\3\2\0016\3\5\0009\3\6\3'\5\b\0B\3\2\0016\3\5\0009\3\6\3'\5\t\0B\3\2\0016\3\5\0009\3\6\3'\5\n\0B\3\2\0016\3\5\0009\3\v\0039\3\f\0036\4\5\0009\4\v\0049\4\14\0046\6\5\0009\6\v\0069\6\15\0069\6\16\6\18\a\2\0B\4\3\2=\4\r\3K\0\1\0\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\blsp\16augroup END.autocmd BufWritePost <buffer> FormatWrite\24autocmd! * <buffer>\20augroup _Format\bcmd\bvim\24document_formatting\26resolved_capabilities\17virtual_text\1\0\3\nsigns\2\14underline\1\21update_in_insert\1\1\0\2\fspacing\3\0\vprefix\a¬ª∫\1\0\2\6\1\t\0\0206\2\0\0009\2\1\0029\2\2\2\14\0\2\0X\2\nÄ6\2\3\0009\2\4\2'\4\5\0B\2\2\0016\2\6\0'\4\a\0B\2\2\0029\2\b\2\18\4\0\0B\2\2\1-\2\0\0\18\4\0\0\18\5\1\0B\2\3\1K\0\1\0\2¿\14on_attach\15illuminate\frequire\27packadd vim-illuminate\bcmd\bvim\vloaded\19vim-illuminate\19packer_plugins\1\0\2\6\1\v\0\0239\2\0\0+\3\1\0=\3\1\0026\2\2\0009\2\3\0029\2\4\2\14\0\2\0X\2\nÄ6\2\5\0009\2\6\2'\4\a\0B\2\2\0016\2\b\0'\4\t\0B\2\2\0029\2\n\2\18\4\0\0B\2\2\1-\2\0\0\18\4\0\0\18\5\1\0B\2\3\1K\0\1\0\2¿\14on_attach\15illuminate\frequire\27packadd vim-illuminate\bcmd\bvim\vloaded\19vim-illuminate\19packer_plugins\24document_formatting\26resolved_capabilities∫\1\0\2\6\1\t\0\0206\2\0\0009\2\1\0029\2\2\2\14\0\2\0X\2\nÄ6\2\3\0009\2\4\2'\4\5\0B\2\2\0016\2\6\0'\4\a\0B\2\2\0029\2\b\2\18\4\0\0B\2\2\1-\2\0\0\18\4\0\0\18\5\1\0B\2\3\1K\0\1\0\2¿\14on_attach\15illuminate\frequire\27packadd vim-illuminate\bcmd\bvim\vloaded\19vim-illuminate\19packer_pluginsé\17\1\0\15\0^\0À\0016\0\0\0009\0\1\0009\0\2\0\14\0\0\0X\0\4Ä6\0\3\0009\0\4\0'\2\5\0B\0\2\0016\0\3\0009\0\6\0009\0\a\0'\2\b\0B\0\2\0016\0\3\0009\0\6\0009\0\a\0'\2\t\0B\0\2\0016\0\3\0009\0\6\0009\0\a\0'\2\n\0B\0\2\0016\0\3\0009\0\v\0009\0\f\0009\0\r\0B\0\1\0026\1\14\0'\3\15\0B\1\2\0029\1\16\1\18\3\0\0B\1\2\2\18\0\1\0009\1\17\0009\1\18\0019\1\19\1+\2\2\0=\2\20\0019\1\17\0009\1\18\0019\1\19\1+\2\2\0=\2\21\0019\1\17\0009\1\18\0019\1\19\1+\2\2\0=\2\22\0019\1\17\0009\1\18\0019\1\19\1+\2\2\0=\2\23\0019\1\17\0009\1\18\0019\1\19\1+\2\2\0=\2\24\0019\1\17\0009\1\18\0019\1\19\1+\2\2\0=\2\25\0016\1\3\0009\1\v\0019\1\26\0013\2\28\0=\2\27\0016\1\14\0'\3\29\0B\1\2\0023\2\30\0006\3\3\0009\3\31\0039\3 \3'\5!\0B\3\2\2'\4\"\0&\3\4\0039\4#\0019\4$\0045\6'\0005\a&\0\18\b\3\0'\t%\0&\b\t\b>\b\1\a=\a\4\0063\a(\0=\a)\6=\0*\0065\a+\0=\a,\0069\a-\0019\a.\a'\t/\0'\n0\0'\v1\0B\a\4\2=\a2\6B\4\2\0019\0043\0019\4$\0045\0065\0003\a4\0=\a)\6=\0*\0064\a\3\0\18\b\3\0'\t6\0&\b\t\b>\b\1\a=\a\4\0065\a7\0=\a8\0065\a9\0=\a,\0069\a-\0019\a.\a'\t:\0'\n;\0'\v0\0'\f1\0B\a\5\2=\a2\6B\4\2\0016\4\3\0009\4<\0046\6=\0009\6>\6'\a?\0B\4\3\0026\5@\0009\5A\5\18\a\4\0'\bB\0B\5\3\0016\5@\0009\5A\5\18\a\4\0'\bC\0B\5\3\0019\5D\0019\5$\0055\aF\0003\bE\0=\b)\a=\0*\a5\bH\0\18\t\3\0'\nG\0&\t\n\t>\t\1\b\18\t\3\0'\nI\0&\t\n\t>\t\3\b=\b\4\a9\b-\0019\b.\b'\n0\0'\v1\0B\b\3\2=\b2\a5\bJ\0=\bK\a5\b[\0005\tM\0005\nL\0=\4>\n=\nN\t5\nO\0005\vP\0=\vQ\n=\nR\t5\nV\0004\v\0\b6\f\3\0009\f\31\f9\fS\f'\14T\0B\f\2\2+\r\2\0<\r\f\v6\f\3\0009\f\31\f9\fS\f'\14U\0B\f\2\2+\r\2\0<\r\f\v=\vW\n=\nX\t5\nY\0=\nZ\t=\t\\\b=\b]\aB\5\2\0012\0\0ÄK\0\1\0\rsettings\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\2\20preloadFileSize\3êN\15maxPreload\3†ç\6\28$VIMRUNTIME/lua/vim/lsp\20$VIMRUNTIME/lua\vexpand\16diagnostics\fglobals\1\3\0\0\bvim\19packer_plugins\1\0\1\venable\2\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\14filetypes\1\2\0\0\blua//sumneko_lua/extension/server/bin/main.lua\1\3\0\0\0\a-E:/sumneko_lua/extension/server/bin/lua-language-server\1\0\1\24single_file_support\2\0\16sumneko_lua\19lua/?/init.lua\14lua/?.lua\vinsert\ntable\6;\tpath\fpackage\nsplit\22compile_flags.txt\26compile_commands.json\1\0\1\26debounce_text_changes\3ñ\1\targs\1\a\0\0\23--background-index\15-std=c++20\25--pch-storage=memory\17--clang-tidy\31--suggest-missing-includes\28--header-insertion=iwyu\30/clangd/clangd/bin/clangd\1\0\0\0\vclangd\rroot_dir\f.vscode\t.git\16__pycache__\17root_pattern\tutil\nflags\1\0\1\26debounce_text_changes\3ñ\1\17capabilities\14on_attach\0\1\0\0\1\3\0\0\0\f--stdio1/python/node_modules/.bin/pyright-langserver\nsetup\fpyright\17/lsp_servers\tdata\fstdpath\afn\0\14lspconfig\0\28textDocument/formatting\rhandlers\28commitCharactersSupport\22deprecatedSupport\24labelDetailsSupport\25insertReplaceSupport\21preselectSupport\19snippetSupport\19completionItem\15completion\17textDocument\24update_capabilities\17cmp_nvim_lsp\frequire\29make_client_capabilities\rprotocol\blsp. hi def link LspReferenceRead CursorLine / hi def link LspReferenceWrite CursorLine . hi def link LspReferenceText CursorLine \17nvim_command\bapi\25packadd cmp-nvim-lsp\bcmd\bvim\vloaded\17cmp-nvim-lsp\19packer_plugins\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\n\1\0\0\5\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\3B\1\2\0016\1\6\0=\0\1\1K\0\1\0\bvim\nicons\1\0\5\nTRACE\b‚úé\nERROR\bÔÅó\tWARN\bÔÅ™\tINFO\bÔÅö\nDEBUG\bÔÜà\1\0\6\ftimeout\3à'\vrender\fdefault\vstages\22fade_in_slide_out\14max_width\3P\18minimum_width\0032\22background_colour\vNormal\nsetup\vnotify\frequire\0" },
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nﬂ\t\0\0\b\0005\0D6\0\0\0009\0\1\0)\1\0\0=\1\2\0)\1\3\0=\1\3\0)\1\0\0=\1\4\0)\1\1\0=\1\5\0)\1\1\0=\1\6\0005\1\t\0005\2\b\0=\2\n\0015\2\v\0=\2\f\1=\1\a\0006\1\14\0009\1\15\0015\3\16\0006\4\17\0009\4\18\4'\6\19\0)\aË\3B\4\3\2>\4\2\3B\1\2\2=\1\r\0005\1\21\0=\1\20\0006\1\22\0'\3\23\0B\1\2\0029\2\24\0015\4\25\0005\5\26\0=\5\27\0045\5\28\0=\5\29\0045\5\30\0004\6\0\0=\6\31\5=\5 \0045\5!\0004\6\0\0=\6\"\5=\5#\0045\5$\0005\6%\0=\6&\5=\5'\0045\5(\0=\5)\0045\5+\0005\6*\0=\6,\5=\5-\0045\5.\0005\6/\0004\a\0\0=\a0\6=\0061\5=\0052\0045\0053\0=\0054\4B\2\2\1K\0\1\0\ntrash\1\0\2\bcmd\ntrash\20require_confirm\2\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\6\19relativenumber\1\vnumber\1\15signcolumn\byes\nwidth\3\30\16auto_resize\2\tside\tleft\ffilters\vcustom\1\0\0\1\a\0\0\t.git\17node_modules\v.cache\16__pycache__\f.vscode\23.ipynb_checkpoints\bgit\1\0\3\vignore\1\ftimeout\3Ù\3\venable\2\16diagnostics\nicons\1\0\4\fwarning\bÔÅ±\tinfo\bÔÅö\nerror\bÔÅó\thint\bÔ†¥\1\0\1\venable\1\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\2\venable\2\22update_to_buf_dir\1\0\2\venable\2\14auto_open\2\23ignore_ft_on_setup\1\2\0\0\nalpha\1\0\a\15update_cwd\2\18hijack_cursor\2\16open_on_tab\1\15auto_close\1\18open_on_setup\1\17hijack_netrw\2\18disable_netrw\2\nsetup\14nvim-tree\frequire\1\0\2\ffolders\3\1\nfiles\3\1\25nvim_tree_show_icons\6 \brep\vstring\1\4\0\0\16:t:gs?$?/..\0\r?:gs?^??\vconcat\ntable#nvim_tree_root_folder_modifier\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\15vista_kind\fOutline\fTrouble$nvim_tree_window_picker_exclude\21nvim_tree_git_hl\29nvim_tree_indent_markers\27nvim_tree_quit_on_open%nvim_tree_highlight_opened_files\27nvim_tree_add_trailing\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-treesitter-textobjects", "nvim-treesitter-refactor", "indent-blankline.nvim", "playground", "completion-treesitter" },
    config = { "\27LJ\2\nŒ\a\0\0\a\0\29\0!6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\v\0005\5\b\0005\6\t\0=\6\n\5=\5\f\0045\5\r\0005\6\14\0=\6\15\0055\6\16\0=\6\17\0055\6\18\0=\6\19\0055\6\20\0=\6\21\5=\5\22\4=\4\23\0035\4\24\0004\5\0\0=\5\25\0045\5\26\0=\5\27\4=\4\28\3B\1\2\1K\0\1\0\15playground\16keybindings\1\0\n\vupdate\6R\14show_help\6?\14goto_node\t<cr>\21unfocus_language\6F\19focus_language\6f\28toggle_language_display\6I\27toggle_anonymous_nodes\6a\30toggle_injected_languages\6t\21toggle_hl_groups\6i\24toggle_query_editor\6o\fdisable\1\0\3\15updatetime\3\25\venable\2\20persist_queries\1\16textobjects\tmove\22goto_previous_end\1\0\2\a[]\20@function.outer\a[M\17@class.outer\24goto_previous_start\1\0\2\a[m\17@class.outer\a[[\20@function.outer\18goto_next_end\1\0\2\a]]\20@function.outer\a]M\17@class.outer\20goto_next_start\1\0\2\a]m\17@class.outer\a][\20@function.outer\1\0\2\venable\2\14set_jumps\2\vselect\1\0\0\fkeymaps\1\0\4\aif\20@function.inner\aaf\20@function.outer\aac\17@class.outer\aic\17@class.inner\1\0\1\venable\2\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\1\17sync_install\1\1\14\0\0\tbash\6c\15commonlisp\ncmake\bcpp\thtml\tjava\15javascript\tjson\nlatex\blua\vpython\bvim\nsetup\28nvim-treesitter.configs\frequire\0" },
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
    config = { "\27LJ\2\n≤\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\nchars\1\0\3\14normal_hl\vNormal\fhint_hl\tBold\vborder\vsingle\1\27\0\0\6a\6b\6c\6d\6e\6f\6g\6h\6i\6j\6k\6l\6m\6n\6o\6p\6q\6r\6s\6t\6u\6v\6w\6x\6y\6z\nsetup\16nvim-window\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-window.git",
    url = "https://gitlab.com/yorickpeterse/nvim-window"
  },
  ["onedark.nvim"] = {
    config = { "\27LJ\2\n`\0\0\3\0\5\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\4\0B\0\1\1K\0\1\0\tload\1\0\1\nstyle\tdark\nsetup\fonedark\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/packer.nvim",
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
  ["specs.nvim"] = {
    config = { "\27LJ\2\nü\2\0\0\a\0\r\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0006\4\0\0'\6\1\0B\4\2\0029\4\5\4=\4\6\0036\4\0\0'\6\1\0B\4\2\0029\4\a\4=\4\b\3=\3\t\0024\3\0\0=\3\n\0025\3\v\0=\3\f\2B\0\2\1K\0\1\0\20ignore_buftypes\1\0\1\vnofile\2\21ignore_filetypes\npopup\fresizer\19shrink_resizer\nfader\16pulse_fader\1\0\5\vinc_ms\3\n\rdelay_ms\3\0\nwinhl\nPMenu\nwidth\3\n\nblend\3\n\1\0\2\rmin_jump\3\n\15show_jumps\2\nsetup\nspecs\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/specs.nvim",
    url = "https://github.com/edluffy/specs.nvim"
  },
  ["surround.nvim"] = {
    config = { "\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\19mappings_style\rsandwich\nsetup\rsurround\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/surround.nvim",
    url = "https://github.com/blackCauldron7/surround.nvim"
  },
  ["symbols-outline.nvim"] = {
    commands = { "SymbolsOutline", "SymbolsOutlineOpen" },
    config = { "\27LJ\2\n»\1\0\0\4\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0B\1\2\1K\0\1\0\1\0\b\nwidth\3#\rposition\nright\26show_relative_numbers\1\17show_numbers\1\24show_symbol_details\1\17auto_preview\1\16show_guides\1\27highlight_hovered_item\1\nsetup\20symbols-outline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["tabout.nvim"] = {
    config = { "\27LJ\2\n÷\2\0\0\5\0\f\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\a\0005\4\4\0>\4\1\0035\4\5\0>\4\2\0035\4\6\0>\4\3\0035\4\a\0>\4\4\0035\4\b\0>\4\5\0035\4\t\0>\4\6\3=\3\n\0024\3\0\0=\3\v\2B\0\2\1K\0\1\0\fexclude\ftabouts\1\0\2\nclose\6}\topen\6{\1\0\2\nclose\6]\topen\6[\1\0\2\nclose\6)\topen\6(\1\0\2\nclose\6`\topen\6`\1\0\2\nclose\6\"\topen\6\"\1\0\2\nclose\6'\topen\6'\1\0\6\21backwards_tabkey\n<A-h>\vtabkey\n<A-l>\15completion\2\20enable_backward\2\15act_as_tab\2\21ignore_beginning\1\nsetup\vtabout\frequire\0" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/tabout.nvim",
    url = "https://github.com/abecodes/tabout.nvim",
    wants = { "nvim-treesitter" }
  },
  ["telescope-fzf-native.nvim"] = {
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    after = { "telescope-fzf-native.nvim" },
    commands = { "Telescope" },
    config = { "\27LJ\2\n§\15\0\0\n\0N\0Å\0016\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0006\2\3\0009\2\4\2'\4\5\0B\2\2\0016\2\3\0009\2\4\2'\4\6\0B\2\2\0016\2\1\0'\4\a\0B\2\2\0029\3\b\0015\0056\0005\6\t\0005\a\23\0005\b\v\0009\t\n\2=\t\f\b9\t\r\2=\t\14\b9\t\15\2=\t\16\b9\t\17\2=\t\18\b9\t\19\2=\t\20\b9\t\21\2=\t\22\b=\b\24\a5\b\25\0009\t\15\2=\t\16\b9\t\17\2=\t\18\b9\t\19\2=\t\20\b9\t\21\2=\t\22\b=\b\26\a=\a\27\0065\a\28\0=\a\29\0065\a\31\0005\b\30\0=\b \a5\b!\0=\b\"\a=\a#\0065\a$\0=\a%\0066\a\1\0'\t&\0B\a\2\0029\a'\a=\a(\0066\a\1\0'\t&\0B\a\2\0029\a)\a=\a*\0066\a\1\0'\t+\0B\a\2\0029\a,\a9\a-\a=\a.\0066\a\1\0'\t+\0B\a\2\0029\a/\a9\a-\a=\a0\0066\a\1\0'\t+\0B\a\2\0029\a1\a9\a-\a=\a2\0066\a\1\0'\t+\0B\a\2\0029\a3\a=\a3\0065\a4\0=\a5\6=\0067\0055\6;\0005\a8\0005\b9\0=\b:\a=\a<\0064\a\0\0=\a=\0065\a>\0=\a?\0064\a\0\0=\a@\0064\a\0\0=\aA\0064\a\0\0=\aB\0064\a\0\0=\aC\0065\aD\0005\bE\0=\b#\a=\aF\6=\6G\0055\6I\0005\aH\0=\aJ\0064\a\0\0=\aK\6=\6L\5B\3\2\0016\3\1\0'\5\2\0B\3\2\0029\3M\3'\5J\0B\3\2\1K\0\1\0\19load_extension\15extensions\rprojects\bfzf\1\0\0\1\0\4\25override_file_sorter\2\28override_generic_sorter\2\nfuzzy\2\14case_mode\15smart_case\fpickers\16diagnostics\1\0\1\vheight\4ö≥ÊÃ\tô≥Ê˛\3\1\0\2\ntheme\bivy\17initial_mode\vnormal\14live_grep\14help_tags\rcommands\30current_buffer_fuzzy_find\fbuffers\1\0\1\17initial_mode\vnormal\roldfiles\15find_files\1\0\0\17find_command\1\5\0\0\afd\16--type=file\r--follow\19--exclude=.git\1\0\2\vhidden\1\14no_ignore\2\rdefaults\1\0\0\22vimgrep_arguments\1\n\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\r--hidden\18--glob=!.git/\27buffer_previewer_maker\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\19generic_sorter\29get_generic_fuzzy_sorter\16file_sorter\19get_fuzzy_file\22telescope.sorters\fset_env\1\0\1\14COLORTERM\14truecolor\18layout_config\rvertical\1\0\1\vmirror\1\15horizontal\1\0\3\vheight\4ÊÃô≥\6ÊÃôˇ\3\nwidth\4ÊÃô≥\6ÊÃôˇ\3\19preview_cutoff\3x\1\0\3\20prompt_position\btop\18results_width\4ö≥ÊÃ\tô≥¶ˇ\3\18preview_width\4ö≥ÊÃ\tô≥Üˇ\3\17path_display\1\2\0\0\rabsolute\rmappings\6i\1\0\0\6n\1\0\0\n<C-k>\28move_selection_previous\n<C-j>\24move_selection_next\n<M-k>\25preview_scrolling_up\n<M-j>\27preview_scrolling_down\6l\14file_edit\6q\1\0\0\nclose\1\0\t\20selection_caret\tÔÅ° \rwinblend\3\0\26dynamic_preview_title\2\15treesitter\1\18prompt_prefix\b¬ª \20layout_strategy\15horizontal\21sorting_strategy\14ascending\23selection_strategy\nreset\17initial_mode\vinsert\nsetup\22telescope.actions\23packadd popup.nvim&packadd telescope-fzf-native.nvim\bcmd\bvim\14telescope\frequire\npcall\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    commands = { "ToggleTerm" },
    config = { "\27LJ\2\ny\0\1\2\0\6\1\0159\1\0\0\a\1\1\0X\1\3Ä)\1\15\0L\1\2\0X\1\bÄ9\1\0\0\a\1\2\0X\1\5Ä6\1\3\0009\1\4\0019\1\5\1\24\1\0\1L\1\2\0K\0\1\0\fcolumns\6o\bvim\rvertical\15horizontal\14directionµÊÃô\19ô≥Ê˛\3ú\3\1\0\5\0\14\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\0024\3\0\0=\3\6\0026\3\a\0009\3\b\0039\3\t\3=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\2B\0\2\1K\0\1\0\15float_opts\15highlights\1\0\2\15background\vNormal\vborder\vNormal\1\0\4\rwinblend\3\0\vborder\vcurved\vheight\3\30\nwidth\3x\nshell\6o\bvim\20shade_filetypes\tsize\1\0\n\17persist_size\2\18close_on_exit\2\22terminal_mappings\2\20insert_mappings\2\20start_in_insert\2\19shading_factor\0061\20shade_terminals\2\17hide_numbers\2\17open_mapping\n<c-\\>\14direction\nfloat\0\nsetup\15toggleterm\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-cool"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/vim-cool",
    url = "https://github.com/romainl/vim-cool"
  },
  ["vim-easy-align"] = {
    config = { "\27LJ\2\nw\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0X            xmap ga <Plug>(EasyAlign)\n            nmap ga <Plug>(EasyAlign)\n       \bcmd\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align"
  },
  ["vim-eft"] = {
    config = { "\27LJ\2\nò\4\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0¯\3          nmap ; <Plug>(eft-repeat)\n          xmap ; <Plug>(eft-repeat)\n          omap ; <Plug>(eft-repeat)\n\n          nmap f <Plug>(eft-f)\n          xmap f <Plug>(eft-f)\n          omap f <Plug>(eft-f)\n          nmap F <Plug>(eft-F)\n          xmap F <Plug>(eft-F)\n          omap F <Plug>(eft-F)\n          \n          nmap t <Plug>(eft-t)\n          xmap t <Plug>(eft-t)\n          omap t <Plug>(eft-t)\n          nmap T <Plug>(eft-T)\n          xmap T <Plug>(eft-T)\n          omap T <Plug>(eft-T)\n       \bcmd\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/vim-eft",
    url = "https://github.com/hrsh7th/vim-eft"
  },
  ["vim-highlightedyank"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/vim-highlightedyank",
    url = "https://github.com/machakann/vim-highlightedyank"
  },
  ["vim-illuminate"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-rooter"] = {
    config = { "\27LJ\2\nB\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\3\0\0\f.vscode\t.git\20rooter_patterns\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/vim-rooter",
    url = "https://github.com/airblade/vim-rooter"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\nπ'\0\0\6\0≠\1\0∂\0016\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0005\5\a\0=\5\b\4=\4\t\0035\4\n\0=\4\v\0035\4\f\0005\5\r\0=\5\14\0045\5\15\0=\5\16\4=\4\17\0035\4\19\0005\5\18\0=\5\20\0045\5\21\0=\5\22\4=\4\23\3B\1\2\0019\1\24\0005\3\26\0005\4\25\0=\4\27\0035\4\28\0=\4\29\0035\4\30\0=\4\31\0035\4 \0=\4!\0035\4\"\0=\4#\0035\4$\0=\4%\0035\4&\0=\4'\0035\4(\0=\4)\0035\4*\0=\4+\0035\4,\0=\4-\0035\4.\0=\4/\0035\0040\0=\0041\0035\0042\0=\0043\0035\0044\0=\0045\0035\0046\0=\0047\0035\0048\0=\0049\0035\4:\0=\4;\0035\4<\0=\4=\0035\4>\0=\4?\0035\4@\0=\4A\0035\4B\0=\4C\0035\4D\0=\4E\0035\4F\0=\4G\0035\4H\0=\4I\0035\4J\0=\4K\0035\4L\0=\4M\0035\4N\0=\4O\0035\4P\0=\4Q\0035\4R\0=\4S\0035\4T\0=\4U\0035\4V\0=\4W\0035\4X\0=\4Y\0035\4Z\0=\4[\0035\4\\\0=\4]\0035\4^\0=\4_\0035\4`\0=\4a\0035\4b\0=\4c\0035\4d\0=\4e\0035\4f\0=\4g\0035\4h\0=\4i\0035\4j\0=\4k\0035\4l\0=\4m\0035\4n\0=\4o\0035\4p\0=\4q\0035\4r\0=\4s\0035\4t\0=\4u\0035\4v\0=\4w\0035\4x\0=\4y\0035\4z\0=\4{\0035\4|\0=\4}\0035\4~\0=\4\0035\4Ä\0=\4Å\0035\4Ç\0=\4É\0035\4Ñ\0=\4Ö\0035\4Ü\0=\4á\0035\4à\0=\4â\0035\4ä\0=\4ã\0035\4å\0=\4ç\0035\4é\0=\4è\0035\4ê\0=\4ë\0035\4í\0=\4ì\0035\4î\0=\4ï\0035\4ñ\0=\4ó\0035\4ò\0=\4ô\0035\4ö\0=\4õ\0035\4ú\0=\4ù\0035\4û\0=\4ü\0035\4†\0=\4°\0035\4¢\0=\4£\0035\4§\0=\4•\0035\4¶\0=\4ß\3B\1\2\0019\1\24\0005\3©\0005\4®\0=\4£\0035\4™\0=\4•\0035\4´\0=\4ß\0035\4¨\0B\1\3\1K\0\1\0\1\0\1\tmode\6v\1\3\0\0%<plug>kommentary_visual_decrease\rdecrease\1\3\0\0%<Plug>kommentary_visual_increase\rincrease\1\0\0\1\0\1\tname\fcomment\15<leader>cd\1\3\0\0#<Plug>kommentary_line_decrease\rdecrease\15<leader>ci\1\3\0\0#<Plug>kommentary_line_increase\rincrease\14<leader>c\1\0\1\tname\fcomment\15<leader>lf\1\3\0\0\25<cmd>FormatWrite<CR>\16FormatWrite\15<leader>lp\1\3\0\0*<cmd>Lspsaga diagnostic_jump_prev<CR>\25diagnostic jump prev\15<leader>ln\1\3\0\0*<cmd>Lspsaga diagnostic_jump_next<CR>\25diagnostic jump next\15<leader>lo\1\3\0\0+<cmd>Lspsaga show_line_diagnostics<CR>\26show line diagnostics\15<leader>ld\1\3\0\0(<cmd>Lspsaga preview_definition<CR>\23preview definition\15<leader>lr\1\3\0\0\28<cmd>Lspsaga rename<CR>\vrename\15<leader>ls\1\3\0\0$<cmd>Lspsaga signature_help<CR>\19signature help\15<leader>la\1\3\0\0!<cmd>Lspsaga code_action<CR>\16code action\15<leader>lh\1\3\0\0 <cmd>Lspsaga lsp_finder<CR>\15lsp finder\14<leader>l\1\0\1\tname\flspsaga\6K\1\3\0\0\31<cmd>Lspsaga hover_doc<CR>\rHoverDoc\15<leader>st\1\3\0\0\28<cmd>SymbolsOutline<cr>\19SymbolsOutline\14<leader>s\1\0\1\tname\fSymbols\15<leader>tt\1\3\0\0\24<cmd>ToggleTerm<cr>\15ToggleTerm\14<leader>t\1\0\1\tname\15ToggleTerm\22<leader><Leader>l\1\3\0\0\21<cmd>HopLine<cr>\fHopLine\22<leader><Leader>p\1\3\0\0\24<cmd>HopPattern<cr>\15HopPattern\22<leader><Leader>w\1\3\0\0\21<cmd>HopWord<cr>\fHopWord\21<leader><leader>\1\0\1\tname\bhop\15<leader>pu\1\3\0\0@<Cmd>lua require 'core.pack' require('packer').update()<CR>\17PackerUpdate\15<leader>pS\1\3\0\0><Cmd>lua require 'core.pack' require('packer').sync()<CR>\15PackerSync\15<leader>ps\1\3\0\0@<Cmd>lua require 'core.pack' require('packer').status()<CR>\17PackerStatus\15<leader>pC\1\3\0\0?<Cmd>lua require 'core.pack' require('packer').clean()<CR>\16PackerClean\15<leader>pc\1\3\0\0A<Cmd>lua require 'core.pack' require('packer').compile()<CR>\18PackerCompile\15<leader>pi\1\3\0\0A<Cmd>lua require 'core.pack' require('packer').install()<CR>\18PackerInstall\14<leader>p\1\0\1\tname\vPacker\15<leader>nf\1\3\0\0\30<Cmd>NvimTreeFindFile<CR>\22NvimTree FindFile\15<leader>nt\1\3\0\0\28<Cmd>NvimTreeToggle<CR>\20NvimTree Toggle\14<leader>n\1\0\1\tname\rnvimtree\15<leader>w\\\1\3\0\0\23<Cmd>vsp<CR><C-w>l\vvsplit\15<leader>w-\1\3\0\0\22<Cmd>sp<CR><C-w>j\nsplit\15<leader>wn\1\3\0\0/<cmd>lua require('nvim-window').pick()<CR>\tpick\15<leader>wl\1\3\0\0\v<C-w>l\17window right\15<leader>wk\1\3\0\0\v<C-w>k\14window up\15<leader>wj\1\3\0\0\v<C-w>j\16window down\15<leader>wh\1\3\0\0\v<C-w>h\16window left\15<leader>ww\1\3\0\0\v<C-w>w\16window next\15<leader>wc\1\3\0\0\19<Cmd>quit!<CR>\19window conceal\15<leader>wq\1\3\0\0\19<Cmd>qall!<CR>\16window Exit\14<leader>w\1\0\1\tname\vwindow\15<leader>fe\1\3\0\0+<cmd>edit ~/dotfiles/nvim/init.lua<cr>\18Edit init.lua\15<leader>fn\1\3\0\0\18<cmd>enew<cr>\rNew File\15<leader>fs\1\3\0\0\16<cmd>w!<cr>\14Save File\15<leader>fd\1\3\0\0#<cmd>Telescope diagnostics<cr>\16diagnostics\15<leader>fp\1\3\0\0 <cmd>Telescope projects<cr>\rprojects\15<leader>fh\1\3\0\0!<cmd>Telescope help_tags<cr>\14help tags\15<leader>fG\1\3\0\0#<cmd>Telescope grep_string<cr>\16grep_string\15<leader>fg\1\3\0\0!<cmd>Telescope live_grep<cr>\14Live grep\15<leader>fb\1\3\0\0\31<cmd>Telescope buffers<cr>\17Find buffers\15<leader>fo\1\3\0\0 <cmd>Telescope oldfiles<cr>\21Open Recent File\15<leader>fl\1\3\0\0001<cmd>Telescope current_buffer_fuzzy_find<cr>\17fuzzy search\15<leader>ff\1\3\0\0\"<cmd>Telescope find_files<cr>\14Find File\15<leader>fc\1\3\0\0 <cmd>Telescope commands<cr>\rcommands\14<leader>f\1\0\1\tname\14telescope\15<leader>bc\1\3\0\0005<cmd>lua require'core.tasks'.bdelete('this')<CR>\tthis\15<leader>bu\1\3\0\0009<cmd>lua require'core.tasks'.bdelete('nameless')<CR>\rnameless\15<leader>bh\1\3\0\0007<cmd>lua require'core.tasks'.bdelete('hidden')<CR>\vhidden\14<leader>b\1\0\1\tname\fBDelete\r<leader>\1\0\1\tname\14which key\n<F12>\1\3\0\0X<cmd>lua require'core.tasks'.dap('disconnect') require'core.tasks'.dap('close')<CR>\14dap close\t<F8>\1\3\0\0006<cmd>lua require'core.tasks'.dap('step_into')<CR>\17dap stepinto\n<F10>\1\3\0\0006<cmd>lua require'core.tasks'.dap('step_over')<CR>\17dap stepover\t<F9>\1\3\0\0><cmd>lua require'core.tasks'.dap('toggle_breakpoint')<CR>\20dap breakpoints\t<F5>\1\3\0\0005<cmd>lua require'core.tasks'.dap('continue')<CR>\17dap continue\t<F4>\1\3\0\0-<cmd>lua require'core.tasks'.dapui()<CR>\17dapui toggle\t<F3>\1\3\0\0007<cmd>lua require'core.tasks'.yabstask('build')<CR>\15yabs build\t<F2>\1\3\0\0005<cmd>lua require'core.tasks'.yabstask('run')<CR>\ryabs run\t<F1>\1\0\0\1\3\0\0\20<cmd>cclose<CR>\19quickfix close\rregister\vlayout\nwidth\1\0\2\bmin\3\20\bmax\3(\vheight\1\0\2\fspacing\3\3\nalign\tleft\1\0\2\bmin\3\1\bmax\3\6\vwindow\fpadding\1\5\0\0\3\1\3\1\3\1\3\1\vmargin\1\5\0\0\3\0\3\0\3\0\3\0\1\0\2\rposition\vbottom\vborder\tnone\nicons\1\0\3\14separator\t‚ûú \15breadcrumb\a¬ª\ngroup\6+\fplugins\rspelling\1\0\2\fenabled\1\16suggestions\3\20\1\0\2\14registers\2\nmarks\2\rtriggers\1\0\0\1\2\0\0\r<leader>\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["wilder.nvim"] = {
    after = { "fzy-lua-native" },
    config = { "\27LJ\2\n⁄\5\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0∫\5call wilder#setup({'modes': [':', '/', '?']})\n    call wilder#set_option('pipeline', [wilder#branch(wilder#cmdline_pipeline({'use_python': 0,'fuzzy': 1, 'fuzzy_filter': wilder#lua_fzy_filter()}),wilder#vim_search_pipeline(), [wilder#check({_, x -> empty(x)}), wilder#history(), wilder#result({'draw': [{_, x -> 'ÔÑ≥ ' . x}]})])])\n    call wilder#set_option('renderer', wilder#renderer_mux({':': wilder#popupmenu_renderer({'highlighter': wilder#lua_fzy_highlighter(), 'left': [wilder#popupmenu_devicons()], 'right': [' ', wilder#popupmenu_scrollbar()]}), '/': wilder#wildmenu_renderer({'highlighter': wilder#lua_fzy_highlighter()})}))\n    call wilder#set_option('use_python_remote_plugin', 0)\n\n\bcmd\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/wilder.nvim",
    url = "https://github.com/gelguy/wilder.nvim"
  },
  ["yabs.nvim"] = {
    config = { "\27LJ\2\np\0\0\6\0\a\0\0166\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\2\1'\3\4\0B\1\2\2'\2\5\0\18\3\0\0'\4\6\0\18\5\1\0&\2\5\2L\2\2\0\t -o \16clang++ -g \n%:p:r\b%:p\vexpand\afn\bvim3\0\0\3\0\4\0\0066\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2L\0\2\0\n%:p:r\vexpand\afn\bvim`\0\2\6\0\6\1\f\t\1\0\0X\2\tÄ6\2\0\0'\4\1\0B\2\2\0029\2\2\0029\2\3\2\18\4\2\0009\2\4\2'\5\5\0B\2\3\1K\0\1\0\brun\rrun_task\bcpp\14languages\tyabs\frequire\0[\1\0\6\0\a\0\v6\0\0\0'\2\1\0B\0\2\2\18\2\0\0009\0\2\0'\3\3\0005\4\5\0003\5\4\0=\5\6\4B\0\4\1K\0\1\0\fon_exit\1\0\0\0\nbuild\rrun_task\tyabs\frequire‹\5\1\0\f\0*\0:6\0\0\0009\0\1\0009\0\2\0\14\0\0\0X\0\4Ä6\0\3\0009\0\4\0'\2\5\0B\0\2\0016\0\6\0'\2\a\0B\0\2\0023\1\b\0003\2\t\0\18\5\0\0009\3\n\0005\6\26\0005\a\24\0005\b\v\0005\t\16\0005\n\f\0=\1\r\n5\v\14\0=\v\15\n=\n\17\t5\n\18\0=\2\r\n=\n\19\t5\n\21\0003\v\20\0=\v\r\n=\n\22\t=\t\23\b=\b\25\a=\a\27\0065\a\29\0005\b\28\0=\b\17\a5\b\30\0=\b\19\a5\b\31\0006\t\6\0'\v \0B\t\2\0029\t!\t'\v\"\0B\t\2\2=\t#\b=\b$\a=\a\23\0065\a(\0005\b&\0005\t%\0=\t'\b=\b)\a=\a\15\6B\3\3\1K\0\1\0\17output_types\1\0\0\rquickfix\1\0\0\1\0\1\16open_on_run\valways\roptional\14condition\17filename.txt\16file_exists\20yabs.conditions\1\0\1\fcommand\27echo runs on condition\1\0\2\voutput\techo\fcommand\28echo running project...\1\0\0\1\0\2\voutput\16consolation\fcommand\29echo building project...\14languages\1\0\0\bcpp\1\0\0\ntasks\18build_and_run\1\0\1\ttype\blua\0\brun\1\0\1\voutput\rquickfix\nbuild\1\0\0\topts\1\0\1\16open_on_run\tauto\fcommand\1\0\1\voutput\rquickfix\1\0\1\17default_task\nbuild\nsetup\0\0\tyabs\frequire\25packadd plenary.nvim\bcmd\bvim\vloaded\17plenary.nvim\19packer_plugins\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/yabs.nvim",
    url = "https://github.com/pianocomposer321/yabs.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\nπ'\0\0\6\0≠\1\0∂\0016\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0005\5\a\0=\5\b\4=\4\t\0035\4\n\0=\4\v\0035\4\f\0005\5\r\0=\5\14\0045\5\15\0=\5\16\4=\4\17\0035\4\19\0005\5\18\0=\5\20\0045\5\21\0=\5\22\4=\4\23\3B\1\2\0019\1\24\0005\3\26\0005\4\25\0=\4\27\0035\4\28\0=\4\29\0035\4\30\0=\4\31\0035\4 \0=\4!\0035\4\"\0=\4#\0035\4$\0=\4%\0035\4&\0=\4'\0035\4(\0=\4)\0035\4*\0=\4+\0035\4,\0=\4-\0035\4.\0=\4/\0035\0040\0=\0041\0035\0042\0=\0043\0035\0044\0=\0045\0035\0046\0=\0047\0035\0048\0=\0049\0035\4:\0=\4;\0035\4<\0=\4=\0035\4>\0=\4?\0035\4@\0=\4A\0035\4B\0=\4C\0035\4D\0=\4E\0035\4F\0=\4G\0035\4H\0=\4I\0035\4J\0=\4K\0035\4L\0=\4M\0035\4N\0=\4O\0035\4P\0=\4Q\0035\4R\0=\4S\0035\4T\0=\4U\0035\4V\0=\4W\0035\4X\0=\4Y\0035\4Z\0=\4[\0035\4\\\0=\4]\0035\4^\0=\4_\0035\4`\0=\4a\0035\4b\0=\4c\0035\4d\0=\4e\0035\4f\0=\4g\0035\4h\0=\4i\0035\4j\0=\4k\0035\4l\0=\4m\0035\4n\0=\4o\0035\4p\0=\4q\0035\4r\0=\4s\0035\4t\0=\4u\0035\4v\0=\4w\0035\4x\0=\4y\0035\4z\0=\4{\0035\4|\0=\4}\0035\4~\0=\4\0035\4Ä\0=\4Å\0035\4Ç\0=\4É\0035\4Ñ\0=\4Ö\0035\4Ü\0=\4á\0035\4à\0=\4â\0035\4ä\0=\4ã\0035\4å\0=\4ç\0035\4é\0=\4è\0035\4ê\0=\4ë\0035\4í\0=\4ì\0035\4î\0=\4ï\0035\4ñ\0=\4ó\0035\4ò\0=\4ô\0035\4ö\0=\4õ\0035\4ú\0=\4ù\0035\4û\0=\4ü\0035\4†\0=\4°\0035\4¢\0=\4£\0035\4§\0=\4•\0035\4¶\0=\4ß\3B\1\2\0019\1\24\0005\3©\0005\4®\0=\4£\0035\4™\0=\4•\0035\4´\0=\4ß\0035\4¨\0B\1\3\1K\0\1\0\1\0\1\tmode\6v\1\3\0\0%<plug>kommentary_visual_decrease\rdecrease\1\3\0\0%<Plug>kommentary_visual_increase\rincrease\1\0\0\1\0\1\tname\fcomment\15<leader>cd\1\3\0\0#<Plug>kommentary_line_decrease\rdecrease\15<leader>ci\1\3\0\0#<Plug>kommentary_line_increase\rincrease\14<leader>c\1\0\1\tname\fcomment\15<leader>lf\1\3\0\0\25<cmd>FormatWrite<CR>\16FormatWrite\15<leader>lp\1\3\0\0*<cmd>Lspsaga diagnostic_jump_prev<CR>\25diagnostic jump prev\15<leader>ln\1\3\0\0*<cmd>Lspsaga diagnostic_jump_next<CR>\25diagnostic jump next\15<leader>lo\1\3\0\0+<cmd>Lspsaga show_line_diagnostics<CR>\26show line diagnostics\15<leader>ld\1\3\0\0(<cmd>Lspsaga preview_definition<CR>\23preview definition\15<leader>lr\1\3\0\0\28<cmd>Lspsaga rename<CR>\vrename\15<leader>ls\1\3\0\0$<cmd>Lspsaga signature_help<CR>\19signature help\15<leader>la\1\3\0\0!<cmd>Lspsaga code_action<CR>\16code action\15<leader>lh\1\3\0\0 <cmd>Lspsaga lsp_finder<CR>\15lsp finder\14<leader>l\1\0\1\tname\flspsaga\6K\1\3\0\0\31<cmd>Lspsaga hover_doc<CR>\rHoverDoc\15<leader>st\1\3\0\0\28<cmd>SymbolsOutline<cr>\19SymbolsOutline\14<leader>s\1\0\1\tname\fSymbols\15<leader>tt\1\3\0\0\24<cmd>ToggleTerm<cr>\15ToggleTerm\14<leader>t\1\0\1\tname\15ToggleTerm\22<leader><Leader>l\1\3\0\0\21<cmd>HopLine<cr>\fHopLine\22<leader><Leader>p\1\3\0\0\24<cmd>HopPattern<cr>\15HopPattern\22<leader><Leader>w\1\3\0\0\21<cmd>HopWord<cr>\fHopWord\21<leader><leader>\1\0\1\tname\bhop\15<leader>pu\1\3\0\0@<Cmd>lua require 'core.pack' require('packer').update()<CR>\17PackerUpdate\15<leader>pS\1\3\0\0><Cmd>lua require 'core.pack' require('packer').sync()<CR>\15PackerSync\15<leader>ps\1\3\0\0@<Cmd>lua require 'core.pack' require('packer').status()<CR>\17PackerStatus\15<leader>pC\1\3\0\0?<Cmd>lua require 'core.pack' require('packer').clean()<CR>\16PackerClean\15<leader>pc\1\3\0\0A<Cmd>lua require 'core.pack' require('packer').compile()<CR>\18PackerCompile\15<leader>pi\1\3\0\0A<Cmd>lua require 'core.pack' require('packer').install()<CR>\18PackerInstall\14<leader>p\1\0\1\tname\vPacker\15<leader>nf\1\3\0\0\30<Cmd>NvimTreeFindFile<CR>\22NvimTree FindFile\15<leader>nt\1\3\0\0\28<Cmd>NvimTreeToggle<CR>\20NvimTree Toggle\14<leader>n\1\0\1\tname\rnvimtree\15<leader>w\\\1\3\0\0\23<Cmd>vsp<CR><C-w>l\vvsplit\15<leader>w-\1\3\0\0\22<Cmd>sp<CR><C-w>j\nsplit\15<leader>wn\1\3\0\0/<cmd>lua require('nvim-window').pick()<CR>\tpick\15<leader>wl\1\3\0\0\v<C-w>l\17window right\15<leader>wk\1\3\0\0\v<C-w>k\14window up\15<leader>wj\1\3\0\0\v<C-w>j\16window down\15<leader>wh\1\3\0\0\v<C-w>h\16window left\15<leader>ww\1\3\0\0\v<C-w>w\16window next\15<leader>wc\1\3\0\0\19<Cmd>quit!<CR>\19window conceal\15<leader>wq\1\3\0\0\19<Cmd>qall!<CR>\16window Exit\14<leader>w\1\0\1\tname\vwindow\15<leader>fe\1\3\0\0+<cmd>edit ~/dotfiles/nvim/init.lua<cr>\18Edit init.lua\15<leader>fn\1\3\0\0\18<cmd>enew<cr>\rNew File\15<leader>fs\1\3\0\0\16<cmd>w!<cr>\14Save File\15<leader>fd\1\3\0\0#<cmd>Telescope diagnostics<cr>\16diagnostics\15<leader>fp\1\3\0\0 <cmd>Telescope projects<cr>\rprojects\15<leader>fh\1\3\0\0!<cmd>Telescope help_tags<cr>\14help tags\15<leader>fG\1\3\0\0#<cmd>Telescope grep_string<cr>\16grep_string\15<leader>fg\1\3\0\0!<cmd>Telescope live_grep<cr>\14Live grep\15<leader>fb\1\3\0\0\31<cmd>Telescope buffers<cr>\17Find buffers\15<leader>fo\1\3\0\0 <cmd>Telescope oldfiles<cr>\21Open Recent File\15<leader>fl\1\3\0\0001<cmd>Telescope current_buffer_fuzzy_find<cr>\17fuzzy search\15<leader>ff\1\3\0\0\"<cmd>Telescope find_files<cr>\14Find File\15<leader>fc\1\3\0\0 <cmd>Telescope commands<cr>\rcommands\14<leader>f\1\0\1\tname\14telescope\15<leader>bc\1\3\0\0005<cmd>lua require'core.tasks'.bdelete('this')<CR>\tthis\15<leader>bu\1\3\0\0009<cmd>lua require'core.tasks'.bdelete('nameless')<CR>\rnameless\15<leader>bh\1\3\0\0007<cmd>lua require'core.tasks'.bdelete('hidden')<CR>\vhidden\14<leader>b\1\0\1\tname\fBDelete\r<leader>\1\0\1\tname\14which key\n<F12>\1\3\0\0X<cmd>lua require'core.tasks'.dap('disconnect') require'core.tasks'.dap('close')<CR>\14dap close\t<F8>\1\3\0\0006<cmd>lua require'core.tasks'.dap('step_into')<CR>\17dap stepinto\n<F10>\1\3\0\0006<cmd>lua require'core.tasks'.dap('step_over')<CR>\17dap stepover\t<F9>\1\3\0\0><cmd>lua require'core.tasks'.dap('toggle_breakpoint')<CR>\20dap breakpoints\t<F5>\1\3\0\0005<cmd>lua require'core.tasks'.dap('continue')<CR>\17dap continue\t<F4>\1\3\0\0-<cmd>lua require'core.tasks'.dapui()<CR>\17dapui toggle\t<F3>\1\3\0\0007<cmd>lua require'core.tasks'.yabstask('build')<CR>\15yabs build\t<F2>\1\3\0\0005<cmd>lua require'core.tasks'.yabstask('run')<CR>\ryabs run\t<F1>\1\0\0\1\3\0\0\20<cmd>cclose<CR>\19quickfix close\rregister\vlayout\nwidth\1\0\2\bmin\3\20\bmax\3(\vheight\1\0\2\fspacing\3\3\nalign\tleft\1\0\2\bmin\3\1\bmax\3\6\vwindow\fpadding\1\5\0\0\3\1\3\1\3\1\3\1\vmargin\1\5\0\0\3\0\3\0\3\0\3\0\1\0\2\rposition\vbottom\vborder\tnone\nicons\1\0\3\14separator\t‚ûú \15breadcrumb\a¬ª\ngroup\6+\fplugins\rspelling\1\0\2\fenabled\1\16suggestions\3\20\1\0\2\14registers\2\nmarks\2\rtriggers\1\0\0\1\2\0\0\r<leader>\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\n\1\0\0\5\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\3B\1\2\0016\1\6\0=\0\1\1K\0\1\0\bvim\nicons\1\0\5\nTRACE\b‚úé\nERROR\bÔÅó\tWARN\bÔÅ™\tINFO\bÔÅö\nDEBUG\bÔÜà\1\0\6\ftimeout\3à'\vrender\fdefault\vstages\22fade_in_slide_out\14max_width\3P\18minimum_width\0032\22background_colour\vNormal\nsetup\vnotify\frequire\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: accelerated-jk
time([[Config for accelerated-jk]], true)
try_loadstring("\27LJ\2\nÖ\1\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0f            nmap j <Plug>(accelerated_jk_gj)\n            nmap k <Plug>(accelerated_jk_gk)\n       \bcmd\bvim\0", "config", "accelerated-jk")
time([[Config for accelerated-jk]], false)
-- Config for: edge
time([[Config for edge]], true)
try_loadstring("\27LJ\2\nÑ\2\0\0\3\0\n\0\0216\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0006\0\0\0009\0\a\0'\2\b\0B\0\2\0016\0\0\0009\0\a\0'\2\t\0B\0\2\1K\0\1\0>highlight HighlightedyankRegion cterm=reverse gui=reverse\21colorscheme edge\bcmd\fcolored!edge_diagnostic_virtual_text#edge_diagnostic_text_highlight\taura\15edge_style\6g\bvim\0", "config", "edge")
time([[Config for edge]], false)
-- Config for: filetype.nvim
time([[Config for filetype.nvim]], true)
try_loadstring("\27LJ\2\nx\0\0\4\0\b\0\r6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\6\0004\3\0\0=\3\a\2B\0\2\1K\0\1\0\14overrides\1\0\0\nsetup\rfiletype\frequire\23did_load_filetypes\6g\bvim\0", "config", "filetype.nvim")
time([[Config for filetype.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SymbolsOutline lua require("packer.load")({'symbols-outline.nvim'}, { cmd = "SymbolsOutline", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SymbolsOutlineOpen lua require("packer.load")({'symbols-outline.nvim'}, { cmd = "SymbolsOutlineOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopLine lua require("packer.load")({'hop.nvim'}, { cmd = "HopLine", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopLineStart lua require("packer.load")({'hop.nvim'}, { cmd = "HopLineStart", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopWord lua require("packer.load")({'hop.nvim'}, { cmd = "HopWord", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopPattern lua require("packer.load")({'hop.nvim'}, { cmd = "HopPattern", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopChar1 lua require("packer.load")({'hop.nvim'}, { cmd = "HopChar1", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopChar2 lua require("packer.load")({'hop.nvim'}, { cmd = "HopChar2", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ToggleTerm lua require("packer.load")({'toggleterm.nvim'}, { cmd = "ToggleTerm", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file LspInstall lua require("packer.load")({'nvim-lsp-installer'}, { cmd = "LspInstall", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType qf ++once lua require("packer.load")({'nvim-bqf'}, { ft = "qf" }, _G.packer_plugins)]]
vim.cmd [[au FileType python ++once lua require("packer.load")({'formatter.nvim', 'nvim-lspconfig', 'nvim-dap', 'fidget.nvim'}, { ft = "python" }, _G.packer_plugins)]]
vim.cmd [[au FileType c ++once lua require("packer.load")({'formatter.nvim', 'nvim-lspconfig', 'nvim-dap', 'fidget.nvim'}, { ft = "c" }, _G.packer_plugins)]]
vim.cmd [[au FileType lua ++once lua require("packer.load")({'formatter.nvim', 'nvim-lspconfig', 'fidget.nvim'}, { ft = "lua" }, _G.packer_plugins)]]
vim.cmd [[au FileType cpp ++once lua require("packer.load")({'formatter.nvim', 'yabs.nvim', 'nvim-lspconfig', 'nvim-dap', 'fidget.nvim'}, { ft = "cpp" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au CmdlineEnter * ++once lua require("packer.load")({'wilder.nvim'}, { event = "CmdlineEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufNewFile * ++once lua require("packer.load")({'gitsigns.nvim', 'kommentary', 'fcitx.nvim'}, { event = "BufNewFile *" }, _G.packer_plugins)]]
vim.cmd [[au CursorMoved * ++once lua require("packer.load")({'specs.nvim', 'vim-cool'}, { event = "CursorMoved *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'alpha-nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'nvim-window.git', 'gitsigns.nvim', 'surround.nvim', 'lualine.nvim', 'vim-easy-align', 'vim-eft', 'vim-rooter', 'nvim-treesitter', 'close-buffers.nvim', 'nvim-tree.lua'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'kommentary', 'fcitx.nvim'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'tabout.nvim', 'vim-cool', 'better-escape.nvim', 'friendly-snippets'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au TextYankPost * ++once lua require("packer.load")({'vim-highlightedyank'}, { event = "TextYankPost *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/daoist/.local/share/nvim/site/pack/packer/opt/yabs.nvim/ftdetect/yabs.vim]], true)
vim.cmd [[source /home/daoist/.local/share/nvim/site/pack/packer/opt/yabs.nvim/ftdetect/yabs.vim]]
time([[Sourcing ftdetect script at: /home/daoist/.local/share/nvim/site/pack/packer/opt/yabs.nvim/ftdetect/yabs.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
