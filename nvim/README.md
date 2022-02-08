# nvim
neovim config in lua

# TOC 
- [Options](#Options)
- [Disable](#Disable)
- [Plugins](#Plugins)
- [Mappings](#Mappings)

## Options
```lua
relativenumber = true,
number         = true,
cursorline     = true,
cursorcolumn   = true,
showmode       = true,
showcmd        = true,
mouse          = "a",
autoindent     = true,
tabstop        = 2,
shiftwidth     = 4,
expandtab      = true,
textwidth      = 80,
wrap           = false,
linebreak      = true,
wrapmargin     = 2,
whichwrap      = "b,s,<,>,h,l",
scrolloff      = 10,
sidescrolloff  = 15,
laststatus     = 2,
ruler          = true,
showmatch      = true,
showtabline    = 2,
hlsearch       = true,
ignorecase     = true,
backup         = false,
swapfile       = false,
encoding       = "utf-8",
foldenable     = false,
autochdir      = true,
autoread       = true,
wildmenu       = true,
background     = "dark",
timeout        = true,
ttimeout       = true,
timeoutlen     = 250,
ttimeoutlen    = 0,
termguicolors  = true,
completeopt    = "menuone,noinsert",
clipboard      = "unnamedplus",
splitbelow     = true,
splitright     = true,
gcr            = [[n-v-c:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,]]..
                  [[ve:ver35-Cursor,]]..
                  [[o:hor50-Cursor,]]..
                  [[i-ci:ver25-Cursor/lCursor,]]..
                  [[r:hor50-Cursor/lCursor]],
```

## Disable

```lua
vim.g.loaded_gzip              = 1
vim.g.loaded_tar               = 1
vim.g.loaded_tarPlugin         = 1
vim.g.loaded_zip               = 1
vim.g.loaded_zipPlugin         = 1
vim.g.loaded_getscript         = 1
vim.g.loaded_getscriptPlugin   = 1
vim.g.loaded_vimball           = 1
vim.g.loaded_vimballPlugin     = 1
vim.g.loaded_matchit           = 1
vim.g.loaded_matchparen        = 1
vim.g.loaded_2html_plugin      = 1
vim.g.loaded_logiPat           = 1
vim.g.loaded_rrhelper          = 1
vim.g.loaded_netrw             = 1
vim.g.loaded_netrwPlugin       = 1
vim.g.loaded_netrwSettings     = 1
vim.g.loaded_netrwFileHandlers = 1
vim.g.loaded_spellfile_plugin  = 1
```

## Plugins

```
"mfussenegger/nvim-dap",
"rcarriga/nvim-dap-ui",
"theHamsta/nvim-dap-virtual-text",
"pianocomposer321/yabs.nvim",
"max397574/better-escape.nvim",
"phaazon/hop.nvim",
"rhysd/accelerated-jk",
"machakann/vim-highlightedyank",
"b3nj5m1n/kommentary",
"edluffy/specs.nvim",
"blackCauldron7/surround.nvim",
"simrat39/symbols-outline.nvim",
"abecodes/tabout.nvim",
"romainl/vim-cool",
"nathom/filetype.nvim",
"onsails/lspkind-nvim",
"windwp/nvim-autopairs",
"mhartington/formatter.nvim",
"j-hui/fidget.nvim",
"neovim/nvim-lspconfig",
"tami5/lspsaga.nvim",
"rafamadriz/friendly-snippets",
"hrsh7th/nvim-cmp",
"williamboman/nvim-lsp-installer",
"gelguy/wilder.nvim",
"hrsh7th/vim-eft",
"junegunn/vim-easy-align",
"https://gitlab.com/yorickpeterse/nvim-window.git",
"h-hg/fcitx.nvim",
"nvim-telescope/telescope-fzf-native.nvim",
"nvim-telescope/telescope.nvim",
"nvim-treesitter/nvim-treesitter",
"nvim-treesitter/playground",
"nvim-treesitter/completion-treesitter",
"nvim-treesitter/nvim-treesitter-refactor",
"nvim-treesitter/nvim-treesitter-textobjects",
"folke/which-key.nvim",
"airblade/vim-rooter",
"kevinhwang91/nvim-bqf",
"RRethy/vim-illuminate",
"goolord/alpha-nvim",
"sainnhe/edge",
"marko-cerovac/material.nvim",
"navarasu/onedark.nvim",
"kyazdani42/nvim-web-devicons",
"nvim-lualine/lualine.nvim",
"kazhala/close-buffers.nvim",
"lewis6991/gitsigns.nvim",
"lukas-reineke/indent-blankline.nvim",
"akinsho/toggleterm.nvim",
"kyazdani42/nvim-tree.lua",
"rcarriga/nvim-notify",
```

## Mappings

```lua
{ "n", "<backspace>", "<Cmd>nohl<CR>" },
{ "v", "<",           "<gv"           },
{ "v", ">",           ">gv"           },
{ "n", "g<C-v>",      "`[v`]"         },

["<F1>"]              = { "<cmd>cclose<CR>", "quickfix close" },
["<F2>"]              = { "<cmd>lua require'core.tasks'.yabstask('run')<CR>", "yabs run" },
["<F3>"]              = { "<cmd>lua require'core.tasks'.yabstask('build')<CR>", "yabs build" },
["<F4>"]              = { "<cmd>lua require'core.tasks'.dapui()<CR>", "dapui toggle" },
["<F5>"]              = { "<cmd>lua require'core.tasks'.dap('continue')<CR>", "dap continue" },
["<F9>"]              = { "<cmd>lua require'core.tasks'.dap('toggle_breakpoint')<CR>", "dap breakpoints" },
["<F10>"]             = { "<cmd>lua require'core.tasks'.dap('step_over')<CR>", "dap stepover" },
["<F8>"]              = { "<cmd>lua require'core.tasks'.dap('step_into')<CR>", "dap stepinto" },
["<F12>"]             = { "<cmd>lua require'core.tasks'.dap('disconnect') require'core.tasks'.dap('close')<CR>", "dap close" },
["<leader>"]          = { name = "which key" },
["<leader>b"]         = { name = "BDelete" },
["<leader>bh"]        = { "<cmd>lua require'core.tasks'.bdelete('hidden')<CR>", "hidden" },
["<leader>bu"]        = { "<cmd>lua require'core.tasks'.bdelete('nameless')<CR>", "nameless" },
["<leader>bc"]        = { "<cmd>lua require'core.tasks'.bdelete('this')<CR>", "this" },
["<leader>f"]         = { name = "telescope" },
["<leader>fc"]        = { "<cmd>Telescope commands<cr>", "commands" },
["<leader>ff"]        = { "<cmd>Telescope find_files<cr>", "Find File" },
["<leader>fl"]        = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "fuzzy search" },
["<leader>fo"]        = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
["<leader>fb"]        = { "<cmd>Telescope buffers<cr>", "Find buffers" },
["<leader>fg"]        = { "<cmd>Telescope live_grep<cr>", "Live grep" },
["<leader>fG"]        = { "<cmd>Telescope grep_string<cr>", "grep_string" },
["<leader>fh"]        = { "<cmd>Telescope help_tags<cr>", "help tags" },
["<leader>fp"]        = { "<cmd>Telescope projects<cr>", "projects" },
["<leader>fd"]        = { "<cmd>Telescope diagnostics<cr>", "diagnostics" },
["<leader>fs"]        = { "<cmd>w!<cr>", "Save File" },
["<leader>fn"]        = { "<cmd>enew<cr>", "New File" },
["<leader>fe"]        = { "<cmd>edit ~/dotfiles/nvim/init.lua<cr>", "Edit init.lua" },
["<leader>w"]         = { name = "window" },
["<leader>wq"]        = { "<Cmd>qall!<CR>", "window Exit" },
["<leader>wc"]        = { "<Cmd>quit!<CR>", "window conceal" },
["<leader>ww"]        = { "<C-w>w", "window next" },
["<leader>wh"]        = { "<C-w>h", "window left" },
["<leader>wj"]        = { "<C-w>j", "window down" },
["<leader>wk"]        = { "<C-w>k", "window up" },
["<leader>wl"]        = { "<C-w>l", "window right" },
["<leader>wn"]        = { "<cmd>lua require('nvim-window').pick()<CR>", "pick" },
["<leader>w-"]        = { "<Cmd>sp<CR><C-w>j", "split" },
["<leader>w\\"]       = { "<Cmd>vsp<CR><C-w>l", "vsplit" },
["<leader>n"]         = { name = "nvimtree" },
["<leader>nt"]        = { "<Cmd>NvimTreeToggle<CR>", "NvimTree Toggle" },
["<leader>nf"]        = { "<Cmd>NvimTreeFindFile<CR>", "NvimTree FindFile" },
["<leader>p"]         = { name = "Packer" },
["<leader>pc"]        = { "<Cmd>PackerCompile<CR>", "PackerCompile" },
["<leader>pC"]        = { "<Cmd>PackerClean<CR>", "PackerClean" },
["<leader>ps"]        = { "<Cmd>PackerStatus<CR>", "PackerStatus" },
["<leader>pS"]        = { "<Cmd>PackerSync<CR>", "PackerSync" },
["<leader>pu"]        = { "<Cmd>PackerUpdate<CR>", "PackerUpdate" }, ]]
["<leader>pi"]        = { "<Cmd>lua require 'core.pack' require('packer').install()<CR>", "PackerInstall" },
["<leader>pc"]        = { "<Cmd>lua require 'core.pack' require('packer').compile()<CR>", "PackerCompile" },
["<leader>pC"]        = { "<Cmd>lua require 'core.pack' require('packer').clean()<CR>", "PackerClean" },
["<leader>ps"]        = { "<Cmd>lua require 'core.pack' require('packer').status()<CR>", "PackerStatus" },
["<leader>pS"]        = { "<Cmd>lua require 'core.pack' require('packer').sync()<CR>", "PackerSync" },
["<leader>pu"]        = { "<Cmd>lua require 'core.pack' require('packer').update()<CR>", "PackerUpdate" },
["<leader><leader>"]  = { name = "hop" },
["<leader><Leader>w"] = { "<cmd>HopWord<cr>", "HopWord" },
["<leader><Leader>p"] = { "<cmd>HopPattern<cr>", "HopPattern" },
["<leader><Leader>l"] = { "<cmd>HopLine<cr>", "HopLine" },
["<leader>t"]         = { name = "ToggleTerm" },
["<leader>tt"]        = { "<cmd>ToggleTerm<cr>", "ToggleTerm" },
["<leader>s"]         = { name = "Symbols" },
["<leader>st"]        = { "<cmd>SymbolsOutline<cr>", "SymbolsOutline" },
["K"]                 = { "<cmd>Lspsaga hover_doc<CR>", "HoverDoc" },
["<leader>l"]         = { name = "lspsaga" },
["<leader>lh"]        = { "<cmd>Lspsaga lsp_finder<CR>", "lsp finder" },
["<leader>la"]        = { "<cmd>Lspsaga code_action<CR>", "code action" },
["<leader>ls"]        = { "<cmd>Lspsaga signature_help<CR>", "signature help" },
["<leader>lr"]        = { "<cmd>Lspsaga rename<CR>", "rename" },
["<leader>ld"]        = { "<cmd>Lspsaga preview_definition<CR>", "preview definition" },
["<leader>lo"]        = { "<cmd>Lspsaga show_line_diagnostics<CR>", "show line diagnostics" },
["<leader>ln"]        = { "<cmd>Lspsaga diagnostic_jump_next<CR>", "diagnostic jump next" },
["<leader>lp"]        = { "<cmd>Lspsaga diagnostic_jump_prev<CR>", "diagnostic jump prev" },
["<leader>lf"]        = { "<cmd>FormatWrite<CR>", "FormatWrite" },
["<leader>c"]         = { name = "comment" },
["<leader>ci"]        = { "<Plug>kommentary_line_increase", "increase" },
["<leader>cd"]        = { "<Plug>kommentary_line_decrease", "decrease" },
```

