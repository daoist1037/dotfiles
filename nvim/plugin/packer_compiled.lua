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
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/accelerated-jk",
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
    config = { "\27LJ\1\2}\0\4\14\0\a\0\21%\4\0\0004\5\1\0\16\6\2\0>\5\2\4D\b\r€\a\b\2\0T\n\2€%\n\3\0T\v\5€\a\b\4\0T\n\2€%\n\5\0T\v\1€%\n\6\0\16\v\4\0\16\f\n\0\16\r\t\0$\4\r\vB\b\3\3N\bñH\4\2\0\bïª\bï±\fwarning\bï—\nerror\npairs\6 £\3\1\0\6\0\16\0\0214\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\b\0003\3\3\0001\4\4\0:\4\5\0032\4\3\0003\5\6\0;\5\1\4:\4\a\3:\3\t\0023\3\v\0003\4\n\0:\4\f\0033\4\r\0:\4\14\3:\3\15\2>\1\2\1G\0\1\0\15highlights\23indicator_selected\1\0\2\nguibg\f#282c34\nguifg\f#51afef\tfill\1\0\0\1\0\2\nguibg\f#202328\nguifg\f#282c34\foptions\1\0\0\foffsets\1\0\4\ttext\18File Explorer\15text_align\tleft\14highlight\14Directory\rfiletype\rNvimTree\26diagnostics_indicator\0\1\0\4\20show_close_icon\1\22show_buffer_icons\2\16diagnostics\rnvim_lsp\28show_buffer_close_icons\1\nsetup\15bufferline\frequire\0" },
    load_after = {
      ["nvim-web-devicons"] = true
    },
    loaded = false,
    needs_bufread = false,
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
  ["fcitx.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/fcitx.nvim",
    url = "https://github.com/h-hg/fcitx.nvim"
  },
  ["filetype.nvim"] = {
    config = { "\27LJ\1\2O\0\0\3\0\5\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0002\2\0\0:\2\4\1>\0\2\1G\0\1\0\14overrides\1\0\0\nsetup\rfiletype\frequire\0" },
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
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
    config = { "\27LJ\1\2ï\4\0\0\4\0\19\0 4\0\0\0007\0\1\0)\1\2\0:\1\2\0004\0\0\0007\0\1\0)\1\2\0:\1\3\0004\0\0\0007\0\1\0007\0\4\0\16\1\0\0007\0\5\0%\2\6\0>\0\3\0014\0\0\0007\0\a\0)\1\2\0:\1\b\0004\0\t\0%\1\n\0>\0\2\0027\1\v\0003\2\f\0003\3\r\0:\3\14\0023\3\15\0:\3\16\0023\3\17\0:\3\18\2>\1\2\1G\0\1\0\27context_highlight_list\1\3\0\0\nError\fWarning\20buftype_exclude\1\3\0\0\rterminal\nalpha\21filetype_exclude\1\f\0\0\thelp\nalpha\rterminal\vpacker\flspinfo\20TelescopePrompt\21TelescopeResults\fOutline\18lsp-installer\rNvimtree\5\1\0\b\19use_treesitter\2\21show_end_of_line\1\31show_current_context_start\2\tchar\bâ–\23indentLine_enabled\3\1#show_trailing_blankline_indent\1\25show_current_context\2\28show_first_indent_level\1\nsetup\21indent_blankline\frequire$indent_blankline_use_treesitter\6g\feol:â†´\vappend\14listchars\tlist\18termguicolors\bopt\bvim\0" },
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
  ["lsp_signature.nvim"] = {
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
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
    config = { "\27LJ\1\2Õ\4\0\0\5\0 \0/4\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\n\0003\3\3\0003\4\4\0:\4\5\0033\4\6\0:\4\a\0033\4\b\0:\4\t\3:\3\v\0023\3\r\0003\4\f\0:\4\14\0033\4\15\0:\4\16\0033\4\17\0:\4\18\0033\4\19\0:\4\20\0033\4\21\0:\4\22\0033\4\23\0:\4\24\3:\3\25\0023\3\26\0002\4\0\0:\4\14\0032\4\0\0:\4\16\0033\4\27\0:\4\18\0033\4\28\0:\4\20\0032\4\0\0:\4\22\0032\4\0\0:\4\24\3:\3\29\0022\3\0\0:\3\30\0022\3\0\0:\3\31\2>\1\2\1G\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\2\0\0\vbranch\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\1\3\0\0\15toggleterm\rNvimTree\23section_separators\1\3\0\0\bî‚°\bî‚²\25component_separators\1\3\0\0\bî‚±\bî‚³\1\0\2\ntheme\fonedark\18icons_enabled\2\nsetup\flualine\frequire\0" },
    load_after = {
      ["nvim-web-devicons"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/hoob3rt/lualine.nvim"
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
    after = { "cmp-spell", "nvim-autopairs", "cmp-nvim-lua", "cmp-nvim-lsp", "cmp-look", "cmp-cmdline", "LuaSnip", "cmp-buffer", "cmp-path", "cmp-nvim-lsp-document-symbol" },
    config = { "\27LJ\1\2¾\1\0\2\a\1\b\0\0154\2\1\0007\2\2\2%\3\3\0007\4\0\1+\5\0\0007\6\0\0016\5\6\5>\2\4\2:\2\0\0013\2\5\0007\3\6\0007\3\a\0036\2\3\2:\2\4\1H\1\2\0\0À\tname\vsource\1\0\5\tpath\v[Path]\rnvim_lua\n[Lua]\rnvim_lsp\n[LSP]\vbuffer\r[Buffer]\fluasnip\14[LuaSnip]\tmenu\n%s %s\vformat\vstring\tkindC\0\1\3\0\4\0\a4\1\0\0%\2\1\0>\1\2\0027\1\2\0017\2\3\0>\1\2\1G\0\1\0\tbody\15lsp_expand\fluasnip\frequire’\2\0\1\a\1\f\0!+\1\0\0007\1\0\1>\1\1\2\15\0\1\0T\2\4€+\1\0\0007\1\1\1>\1\1\1T\1\23€4\1\2\0%\2\3\0>\1\2\0027\1\4\1>\1\1\2\15\0\1\0T\2\14€4\1\5\0007\1\6\0017\1\a\0014\2\5\0007\2\b\0027\2\t\2%\3\n\0)\4\2\0)\5\2\0)\6\2\0>\2\5\2%\3\v\0>\1\3\1T\1\2€\16\1\0\0>\1\1\1G\0\1\0\1À\5!<Plug>luasnip-expand-or-jump\27nvim_replace_termcodes\bapi\rfeedkeys\afn\bvim\23expand_or_jumpable\fluasnip\frequire\21select_next_item\fvisible‡\2\0\1\a\1\f\0\"+\1\0\0007\1\0\1>\1\1\2\15\0\1\0T\2\4€+\1\0\0007\1\1\1>\1\1\1T\1\24€4\1\2\0%\2\3\0>\1\2\0027\1\4\1'\2ÿÿ>\1\2\2\15\0\1\0T\2\14€4\1\5\0007\1\6\0017\1\a\0014\2\5\0007\2\b\0027\2\t\2%\3\n\0)\4\2\0)\5\2\0)\6\2\0>\2\5\2%\3\v\0>\1\3\1T\1\2€\16\1\0\0>\1\1\1G\0\1\0\1À\5\28<Plug>luasnip-jump-prev\27nvim_replace_termcodes\bapi\rfeedkeys\afn\bvim\rjumpable\fluasnip\frequire\21select_prev_item\fvisible™\b\1\0\a\0/\0E3\0\0\0004\1\1\0%\2\2\0>\1\2\0027\2\3\0013\3\t\0003\4\5\0003\5\4\0:\5\6\0041\5\a\0:\5\b\4:\4\n\0033\4\r\0007\5\v\0017\5\f\5:\5\14\4:\4\15\0033\4\16\0:\4\17\0033\4\19\0003\5\18\0:\5\20\4:\4\21\0033\4\23\0001\5\22\0:\5\24\4:\4\25\0033\4\28\0007\5\26\0017\5\27\5'\6üÿ>\5\2\2:\5\29\0047\5\26\0017\5\27\5'\6\4\0>\5\2\2:\5\30\0047\5\26\0017\5\31\5>\5\1\2:\5 \0047\5\26\0017\5!\0053\6\"\0>\5\2\2:\5#\0041\5$\0:\5%\0041\5&\0:\5'\4:\4\26\0032\4\a\0003\5(\0;\5\1\0043\5)\0;\5\2\0043\5*\0;\5\3\0043\5+\0;\5\4\0043\5,\0;\5\5\0043\5-\0;\5\6\4:\4.\3>\2\2\0010\0\0€G\0\1\0\fsources\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\fcmdline\1\0\1\tname\15treesitter\1\0\1\tname\rnvim_lsp\f<S-Tab>\0\n<Tab>\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nclose\n<C-f>\n<C-d>\1\0\0\16scroll_docs\fmapping\fsnippet\vexpand\1\0\0\0\18documentation\vborder\1\0\0\1\t\0\0\bâ•­\bâ”€\bâ•®\bâ”‚\bâ•¯\bâ”€\bâ•°\bâ”‚\15completion\1\0\1\16completeopt\26menu,menuone,noinsert\17confirm_opts\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\15formatting\1\0\0\vformat\0\vfields\1\0\0\1\4\0\0\tabbr\tkind\tmenu\nsetup\bcmp\frequire\1\0\25\tText\tï¾ \rFunction\tïž” \rOperator\tïš” \nColor\tï£— \nClass\tï – \vModule\tï’‡ \rConstant\tï£¾ \rProperty\tï‚­ \vMethod\tïš¦ \15EnumMember\tï… \tUnit\tï¥¬ \14Interface\tïƒ¨ \vStruct\bï­„\rVariable\tï”ª \fSnippet\tïƒ„ \vFolder\tïŠ \nEvent\tïƒ§ \nField\bï° \18TypeParameter\tï™± \tFile\tïœ˜ \nValue\tï¢Ÿ \16Constructor\tï¥ \tEnum\tï… \fKeyword\tï Š \14Reference\tïœ† \0" },
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
    config = { "\27LJ\1\2ù\1\0\0\4\0\a\1#4\0\0\0007\0\1\0007\0\2\0>\0\1\0024\1\0\0007\1\1\0017\1\3\1\16\2\0\0%\3\4\0$\2\3\2>\1\2\2\t\1\0\0T\1\5€\16\1\0\0%\2\4\0$\1\2\1H\1\2\0T\1\16€4\1\0\0007\1\1\0017\1\3\1\16\2\0\0%\3\5\0$\2\3\2>\1\2\2\t\1\0\0T\1\5€\16\1\0\0%\2\5\0$\1\2\1H\1\2\0T\1\2€%\1\6\0H\1\2\0G\0\1\0-/home/daoist/.conda/envs/d2l/bin/python3\22/.venv/bin/python\21/venv/bin/python\15executable\vgetcwd\afn\bvim\2ð\4\1\0\a\0\23\0*4\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\4\0:\2\3\0017\1\5\0002\2\3\0003\3\a\0004\4\b\0007\4\t\0047\4\n\4>\4\1\2%\5\v\0%\6\f\0$\4\6\4:\4\r\0032\4\0\0:\4\14\3;\3\1\2:\2\6\0017\1\5\0007\2\5\0007\2\6\2:\2\15\0017\1\5\0007\2\5\0007\2\6\2:\2\16\0017\1\2\0003\2\18\0003\3\19\0:\3\14\2:\2\17\0017\1\5\0002\2\3\0003\3\20\0001\4\21\0:\4\22\3;\3\1\2:\2\17\1G\0\1\0\15pythonPath\0\1\0\5\frequest\vlaunch\tname\16Launch file\fprogram\f${file}\ttype\vpython\fconsole\23integratedTerminal\1\3\0\0\a-m\20debugpy.adapter\1\0\2\fcommand./home/daoist/.conda/envs/tools/bin/python\ttype\15executable\vpython\trust\6c\targs\fprogram#${fileBasenameNoExtension}.out\6/\vgetcwd\afn\bvim\1\0\6\16stopOnEntry\1\tname\vLaunch\ttype\tlldb\frequest\vlaunch\bcwd\23${workspaceFolder}\18runInTerminal\2\bcpp\19configurations\1\0\3\tname\tlldb\fcommand\flldb-mi\ttype\15executable\tlldb\radapters\bdap\frequire\0" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\1\2Û\3\0\0\6\0\25\0#4\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\4\0003\3\3\0:\3\5\0023\3\a\0003\4\6\0:\4\b\3:\3\t\0023\3\r\0002\4\4\0003\5\n\0;\5\1\0043\5\v\0;\5\2\0043\5\f\0;\5\3\4:\4\14\3:\3\15\0023\3\16\0002\4\0\0:\4\14\3:\3\17\0023\3\18\0003\4\20\0003\5\19\0:\5\21\4:\4\t\3:\3\22\0023\3\23\0:\3\24\2>\1\2\1G\0\1\0\fwindows\1\0\1\vindent\3\1\rfloating\nclose\1\0\0\1\3\0\0\6q\n<Esc>\1\0\1\vborder\vsingle\ttray\1\0\0\fsidebar\relements\1\0\2\tsize\3(\rposition\tleft\1\0\2\aid\fwatches\tsize\4\0€€€ÿ\3\1\0\2\aid\16breakpoints\tsize\4\0€€Àþ\3\1\0\2\aid\vscopes\tsize\4\0€€Àþ\3\rmappings\vexpand\1\0\4\topen\6o\trepl\6r\tedit\6e\vremove\6d\1\3\0\0\t<CR>\18<2-LeftMouse>\nicons\1\0\0\1\0\2\14collapsed\bâ–¸\rexpanded\bâ–¾\nsetup\ndapui\frequire\0" },
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
    after = { "lsp_signature.nvim", "nvim-dap", "nvim-lsp-installer", "symbols-outline.nvim", "lspsaga.nvim" },
    config = { "\27LJ\1\2\v\0\2\2\0\0\0\1G\0\1\0»\v\1\0\r\0=\0}4\0\0\0007\0\1\0007\0\2\0007\0\3\0>\0\1\0027\1\4\0007\1\5\0017\1\6\1)\2\2\0:\2\a\0017\1\4\0007\1\5\0017\1\6\1)\2\2\0:\2\b\0017\1\4\0007\1\5\0017\1\6\1)\2\2\0:\2\t\0017\1\4\0007\1\5\0017\1\6\1)\2\2\0:\2\n\0017\1\4\0007\1\5\0017\1\6\1)\2\2\0:\2\v\0017\1\4\0007\1\5\0017\1\6\1)\2\2\0:\2\f\0014\1\r\0%\2\14\0>\1\2\0021\2\15\0003\3\16\0004\4\17\0\16\5\3\0>\4\2\4T\a\b€6\t\b\0017\t\18\t3\n\19\0:\2\20\n:\0\21\n3\v\22\0:\v\23\n>\t\2\1A\a\3\3N\aö%\4\24\0007\5\25\0017\5\18\0053\6\28\0003\a\27\0\16\b\4\0%\t\26\0$\b\t\b;\b\1\a:\a\29\6:\2\20\6:\0\21\0063\a\30\0:\a\23\6>\5\2\0017\5\31\0017\5\18\0053\6 \0:\2\20\0063\a!\0:\a\29\0063\a\"\0:\a\23\6>\5\2\0017\5#\0017\5\18\0053\6'\0003\a%\0\16\b\4\0%\t$\0$\b\t\b;\b\1\a\16\b\4\0%\t&\0$\b\t\b;\b\3\a:\a\29\0063\a(\0:\a)\0063\a:\0003\b+\0003\t*\0:\t,\b3\t-\0003\n.\0:\n/\t:\t0\b3\t5\0002\n\0\b4\v\0\0007\v1\v7\v2\v%\f3\0>\v\2\2)\f\2\0009\f\v\n4\v\0\0007\v1\v7\v2\v%\f4\0>\v\2\2)\f\2\0009\f\v\n:\n6\t:\t7\b3\t8\0:\t9\b:\b;\a:\a<\6>\5\2\1G\0\1\0\rsettings\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\2\15maxPreload\3 \6\20preloadFileSize\3N\28$VIMRUNTIME/lua/vim/lsp\20$VIMRUNTIME/lua\vexpand\afn\16diagnostics\fglobals\1\3\0\0\bvim\19packer_plugins\1\0\1\venable\2\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\14filetypes\1\2\0\0\blua\1\0\1\24single_file_support\2//sumneko_lua/extension/server/bin/main.lua\1\3\0\0\0\a-E:/sumneko_lua/extension/server/bin/lua-language-server\16sumneko_lua\1\0\1\26debounce_text_changes\3–\1\1\6\0\0\vclangd\23--background-index\31--suggest-missing-includes\17--clang-tidy\28--header-insertion=iwyu\1\0\0\vclangd\1\0\1\26debounce_text_changes\3–\1\bcmd\1\0\0\1\3\0\0\0\f--stdio1/python/node_modules/.bin/pyright-langserver\fpyright//home/daoist/.local/share/nvim/lsp_servers\nflags\1\0\1\26debounce_text_changes\3–\1\17capabilities\14on_attach\1\0\0\nsetup\vipairs\1\2\0\0\fpyright\0\14lspconfig\frequire\28commitCharactersSupport\22deprecatedSupport\24labelDetailsSupport\25insertReplaceSupport\21preselectSupport\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle", "NvimTreeFindFile" },
    config = { "\27LJ\1\2Æ\t\0\0\a\0005\0D4\0\0\0007\0\1\0003\1\3\0:\1\2\0'\1\0\0:\1\4\0'\1\3\0:\1\5\0'\1\0\0:\1\6\0'\1\0\0:\1\a\0'\1\1\0:\1\b\0003\1\v\0003\2\n\0:\2\f\0013\2\r\0:\2\14\1:\1\t\0004\1\16\0007\1\17\0013\2\18\0004\3\19\0007\3\20\3%\4\21\0'\5è\3>\3\3\2;\3\2\2>\1\2\2:\1\15\0003\1\23\0:\1\22\0004\1\24\0%\2\25\0>\1\2\0027\2\26\0013\3\27\0003\4\28\0:\4\29\0033\4\30\0:\4\31\0033\4 \0002\5\0\0:\5!\4:\4\"\0033\4#\0002\5\0\0:\5$\4:\4%\0033\4&\0003\5'\0:\5(\4:\4)\0033\4*\0:\4+\0033\4-\0003\5,\0:\5.\4:\4/\0033\0040\0003\0051\0002\6\0\0:\0062\5:\0053\4:\0044\3>\2\2\1G\0\1\0\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\6\nwidth\3\30\tside\tleft\16auto_resize\2\19relativenumber\2\15signcolumn\byes\vnumber\2\ffilters\vcustom\1\0\0\1\5\0\0\t.git\17node_modules\v.cache\16__pycache__\bgit\1\0\3\vignore\1\ftimeout\3ô\3\venable\2\16diagnostics\nicons\1\0\4\tinfo\bïš\thint\bïª\nerror\bï—\fwarning\bï±\1\0\1\venable\2\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\1\venable\2\22update_to_buf_dir\1\0\2\14auto_open\2\venable\2\23ignore_ft_on_setup\1\2\0\0\5\1\0\a\16open_on_tab\1\15auto_close\1\18open_on_setup\2\15update_cwd\2\18disable_netrw\2\18hijack_cursor\2\17hijack_netrw\2\nsetup\14nvim-tree\frequire\1\0\3\ffolders\3\1\nfiles\3\1\18folder_arrows\3\1\25nvim_tree_show_icons\6 \brep\vstring\1\4\0\0\16:t:gs?$?/..\0\r?:gs?^??\vconcat\ntable#nvim_tree_root_folder_modifier\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\6\0\0\vnotify\vpacker\aqf\15vista_kind\fOutline$nvim_tree_window_picker_exclude\21nvim_tree_git_hl\29nvim_tree_indent_markers\27nvim_tree_quit_on_open%nvim_tree_highlight_opened_files\27nvim_tree_add_trailing\1\2\0\0\nalpha\29nvim_tree_auto_ignore_ft\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "completion-treesitter", "nvim-treesitter-textobjects", "playground", "nvim-treesitter-refactor" },
    config = { "\27LJ\1\2ó\3\0\0\6\0\22\0\0254\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\3\0003\3\4\0:\3\5\0023\3\6\0003\4\a\0:\4\b\3:\3\t\0023\3\15\0003\4\n\0003\5\v\0:\5\f\0043\5\r\0:\5\14\4:\4\16\0033\4\17\0003\5\18\0:\5\19\4:\4\20\3:\3\21\2>\1\2\1G\0\1\0\16textobjects\vselect\fkeymaps\1\0\2\aaq\21@parameter.outer\aiq\21@parameter.inner\1\0\2\14lookahead\2\venable\2\tmove\1\0\0\20goto_next_start\1\0\1\a]]\21@parameter.inner\24goto_previous_start\1\0\1\a[[\21@parameter.inner\1\0\2\14set_jumps\2\venable\2\14highlight\fdisable\1\3\0\0\6c\trust\1\0\2&additional_vim_regex_highlighting\1\venable\2\19ignore_install\1\2\0\0\15javascript\1\0\2\21ensure_installed\15maintained\17sync_install\1\nsetup\28nvim-treesitter.configs\frequire\0" },
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
    after = { "lualine.nvim", "bufferline.nvim" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    config = { "\27LJ\1\2m\0\0\2\0\5\0\f4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\0014\0\0\0%\1\1\0>\0\2\0027\0\4\0>\0\1\1G\0\1\0\tload\1\0\2\16transparent\2\nstyle\twarm\nsetup\fonedark\frequire\0" },
    loaded = true,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/start/onedark.nvim",
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
    loaded = false,
    needs_bufread = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
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
    config = { "\27LJ\1\2À\1\0\0\3\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\3\0>\1\2\1G\0\1\0\1\0\a\16show_guides\1\17show_numbers\1\27highlight_hovered_item\2\26show_relative_numbers\1\24show_symbol_details\1\rposition\nright\17auto_preview\1\nsetup\20symbols-outline\frequire\0" },
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
    config = { "\27LJ\1\0029\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\ftrouble\frequire\0" },
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
  ["vim-startuptime"] = {
    commands = { "StartupTime" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\1\2¥\24\0\0\5\0u\0~4\0\0\0%\1\1\0>\0\2\0027\1\2\0003\2\4\0003\3\3\0:\3\5\0023\3\6\0003\4\a\0:\4\b\3:\3\t\0023\3\n\0:\3\v\0023\3\f\0003\4\r\0:\4\14\0033\4\15\0:\4\16\3:\3\17\0023\3\19\0003\4\18\0:\4\20\0033\4\21\0:\4\22\3:\3\23\2>\1\2\0017\1\24\0003\2\26\0003\3\25\0:\3\27\0023\3\28\0:\3\29\0023\3\30\0:\3\31\0023\3 \0:\3!\0023\3\"\0:\3#\0023\3$\0:\3%\0023\3&\0:\3'\0023\3(\0:\3)\0023\3*\0:\3+\0023\3,\0:\3-\0023\3.\0:\3/\0023\0030\0:\0031\0023\0032\0:\0033\0023\0034\0:\0035\0023\0036\0:\0037\0023\0038\0:\0039\0023\3:\0:\3;\0023\3<\0:\3=\0023\3>\0:\3?\0023\3@\0:\3A\0023\3B\0:\3C\0023\3D\0:\3E\0023\3F\0:\3G\0023\3H\0:\3I\0023\3J\0:\3K\0023\3L\0:\3M\0023\3N\0:\3O\0023\3P\0:\3Q\0023\3R\0:\3S\0023\3T\0:\3U\0023\3V\0:\3W\0023\3X\0:\3Y\0023\3Z\0:\3[\0023\3\\\0:\3]\0023\3^\0:\3_\0023\3`\0:\3a\0023\3b\0:\3c\0023\3d\0:\3e\0023\3f\0:\3g\0023\3h\0:\3i\0023\3j\0:\3k\0023\3l\0:\3m\0023\3n\0:\3o\2>\1\2\0017\1\24\0003\2q\0003\3p\0:\3k\0023\3r\0:\3m\0023\3s\0:\3o\0023\3t\0>\1\3\1G\0\1\0\1\0\1\tmode\6v\1\3\0\0%<plug>kommentary_visual_decrease\rdecrease\1\3\0\0%<Plug>kommentary_visual_increase\rincrease\1\0\0\1\0\1\tname\16+kommentary\15<leader>cd\1\3\0\0#<Plug>kommentary_line_decrease\rdecrease\15<leader>ci\1\3\0\0#<Plug>kommentary_line_increase\rincrease\14<leader>c\1\0\1\tname\r+comment\15<leader>st\1\3\0\0\28<cmd>SymbolsOutline<cr>\19SymbolsOutline\14<leader>s\1\0\1\tname\r+Symbols\15<leader>tr\1\3\0\0\28<cmd>TroubleRefresh<cr>\19TroubleRefresh\15<leader>tt\1\3\0\0\27<cmd>TroubleToggle<cr>\18TroubleToggle\14<leader>t\1\0\1\tname\r+Trouble\22<leader><Leader>l\1\3\0\0\21<cmd>HopLine<cr>\fHopLine\22<leader><Leader>p\1\3\0\0\24<cmd>HopPattern<cr>\15HopPattern\22<leader><Leader>w\1\3\0\0\21<cmd>HopWord<cr>\fHopWord\21<leader><leader>\1\0\1\tname\t+hop\15<leader>pu\1\3\0\0@<Cmd>lua require 'core.pack' require('packer').update()<CR>\17PackerUpdate\15<leader>pS\1\3\0\0><Cmd>lua require 'core.pack' require('packer').sync()<CR>\15PackerSync\15<leader>ps\1\3\0\0@<Cmd>lua require 'core.pack' require('packer').status()<CR>\17PackerStatus\15<leader>pC\1\3\0\0?<Cmd>lua require 'core.pack' require('packer').clean()<CR>\16PackerClean\15<leader>pc\1\3\0\0A<Cmd>lua require 'core.pack' require('packer').compile()<CR>\18PackerCompile\15<leader>pi\1\3\0\0A<Cmd>lua require 'core.pack' require('packer').install()<CR>\18PackerInstall\14<leader>p\1\0\1\tname\f+Packer\15<leader>nf\1\3\0\0\30<Cmd>NvimTreeFindFile<CR>\22NvimTree FindFile\15<leader>nt\1\3\0\0\28<Cmd>NvimTreeToggle<CR>\20NvimTree Toggle\14<leader>n\1\0\1\tname\14+nvimtree\15<leader>w\\\1\3\0\0\23<Cmd>vsp<CR><C-w>l\vvsplit\15<leader>w-\1\3\0\0\22<Cmd>sp<CR><C-w>j\nsplit\15<leader>wl\1\3\0\0\v<C-w>l\17window right\15<leader>wk\1\3\0\0\v<C-w>k\14window up\15<leader>wj\1\3\0\0\v<C-w>j\16window down\15<leader>wh\1\3\0\0\v<C-w>h\16window left\15<leader>ww\1\3\0\0\v<C-w>w\16window next\15<leader>wc\1\3\0\0\19<Cmd>quit!<CR>\19window conceal\15<leader>wq\1\3\0\0\19<Cmd>qall!<CR>\16window Exit\14<leader>w\1\0\1\tname\f+window\15<leader>fd\1\3\0\0+<cmd>edit ~/dotfiles/nvim/init.lua<cr>\18Edit init.lua\15<leader>fn\1\3\0\0\18<cmd>enew<cr>\rNew File\15<leader>fs\1\3\0\0\16<cmd>w!<cr>\14Save File\15<leader>ft\1\3\0\0\30<cmd>Telescope notify<cr>\vnotify\15<leader>fh\1\3\0\0!<cmd>Telescope help_tags<cr>\14help tags\15<leader>fg\1\3\0\0!<cmd>Telescope live_grep<cr>\14Live grep\15<leader>fb\1\3\0\0\31<cmd>Telescope buffers<cr>\17Find buffers\15<leader>fr\1\3\0\0 <cmd>Telescope oldfiles<cr>\21Open Recent File\15<leader>fl\1\3\0\0001<cmd>Telescope current_buffer_fuzzy_find<cr>\17fuzzy search\15<leader>ff\1\3\0\0\"<cmd>Telescope find_files<cr>\14Find File\14<leader>f\1\0\0\1\0\1\tname\n+file\rregister\vlayout\nwidth\1\0\2\bmax\0032\bmin\3\20\vheight\1\0\2\fspacing\3\3\nalign\tleft\1\0\2\bmax\3\25\bmin\3\1\vwindow\fpadding\1\5\0\0\3\1\3\1\3\1\3\1\vmargin\1\5\0\0\3\0\3\0\3\0\3\0\1\0\2\rposition\vbottom\vborder\vdouble\nicons\1\0\3\ngroup\6+\14separator\bâžœ\15breadcrumb\aÂ»\fplugins\rspelling\1\0\2\fenabled\1\16suggestions\3\20\1\0\2\14registers\2\nmarks\2\rtriggers\1\0\0\1\2\0\0\r<leader>\nsetup\14which-key\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/daoist/.local/share/nvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: filetype.nvim
time([[Config for filetype.nvim]], true)
try_loadstring("\27LJ\1\2O\0\0\3\0\5\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0002\2\0\0:\2\4\1>\0\2\1G\0\1\0\14overrides\1\0\0\nsetup\rfiletype\frequire\0", "config", "filetype.nvim")
time([[Config for filetype.nvim]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
try_loadstring("\27LJ\1\2m\0\0\2\0\5\0\f4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\0014\0\0\0%\1\1\0>\0\2\0027\0\4\0>\0\1\1G\0\1\0\tload\1\0\2\16transparent\2\nstyle\twarm\nsetup\fonedark\frequire\0", "config", "onedark.nvim")
time([[Config for onedark.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'vim-startuptime'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TroubleRefresh lua require("packer.load")({'trouble.nvim'}, { cmd = "TroubleRefresh", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopLineStart lua require("packer.load")({'hop.nvim'}, { cmd = "HopLineStart", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopWord lua require("packer.load")({'hop.nvim'}, { cmd = "HopWord", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopChar2 lua require("packer.load")({'hop.nvim'}, { cmd = "HopChar2", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeFindFile lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeFindFile", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopPattern lua require("packer.load")({'hop.nvim'}, { cmd = "HopPattern", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TroubleToggle lua require("packer.load")({'trouble.nvim'}, { cmd = "TroubleToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopLine lua require("packer.load")({'hop.nvim'}, { cmd = "HopLine", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file HopChar1 lua require("packer.load")({'hop.nvim'}, { cmd = "HopChar1", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Trouble lua require("packer.load")({'trouble.nvim'}, { cmd = "Trouble", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufNewFile * ++once lua require("packer.load")({'nvim-lspconfig', 'fcitx.nvim', 'kommentary'}, { event = "BufNewFile *" }, _G.packer_plugins)]]
vim.cmd [[au TextYankPost * ++once lua require("packer.load")({'vim-highlightedyank'}, { event = "TextYankPost *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'nvim-treesitter', 'indent-blankline.nvim', 'gitsigns.nvim', 'surround.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'gitsigns.nvim', 'nvim-lspconfig', 'fcitx.nvim', 'kommentary'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'packer.nvim', 'which-key.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'better-escape.nvim', 'friendly-snippets'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufEnter * ++once lua require("packer.load")({'nvim-web-devicons'}, { event = "BufEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
