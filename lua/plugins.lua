local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -- use { 'nvim-telescope/telescope-fzf-native.nvim',
  use { 'wbthomason/packer.nvim',
    run =
    'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'kyazdani42/nvim-web-devicons'
  use 'glepnir/lspsaga.nvim'
  use 'L3MON4D3/LuaSnip'
  use 'hoob3rt/lualine.nvim'
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'neovim/nvim-lspconfig'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/prettier.nvim'
  use 'karb94/neoscroll.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'echasnovski/mini.move'
  use { 'echasnovski/mini.nvim', branch = 'stable' }
  use 'nvim-lua/plenary.nvim'
  use { 'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim' }
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'akinsho/nvim-bufferline.lua'
  use 'norcalli/nvim-colorizer.lua'
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'folke/zen-mode.nvim'
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use {
    "mfussenegger/nvim-dap",
  }
  use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
  use 'kdheepak/lazygit.nvim'
  use 'tpope/vim-fugitive'
  use 'rbong/vim-flog'
  use 'mfussenegger/nvim-jdtls'
  --use { "zbirenbaum/copilot.lua" }
  use({
    'MunifTanjim/nui.nvim',
    config = function()
      require('nui').setup({
      })
    end
  })
  use({
    "jackMort/ChatGPT.nvim",
    config = function()
      --require("chatgpt").setup({
      -- optional configuration
      --})
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  })
  use 'MunifTanjim/nui.nvim'
  use {
    "SmiteshP/nvim-gps",
    requires = "nvim-treesitter/nvim-treesitter"
  }
  use {
    'samodostal/image.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
  }
  use {
    "guysherman/pg.nvim"
  }
  use 'andweeb/presence.nvim'
  --use {
  --  "nvim-neorg/neorg",
  --  run = ":Neorg sync-parsers", -- This is the important bit!
  -- config = function()
  --  require("neorg").setup {
  -- configuration here
  --  }
  --end,
  --}
  use 'kristijanhusak/vim-dadbod-ui'
  use 'tpope/vim-dadbod'
  use({
    'Wansmer/treesj',
    requires = { 'nvim-treesitter' },
    config = function()
      require('treesj').setup({ --[[ your config ]] })
    end,
  })
  use "jbyuki/venn.nvim"
  use 'Exafunction/codeium.vim'
  use 'junegunn/vim-easy-align'
  --use 'j-hui/fidget.nvim'
  use 'tpope/vim-surround'
  use 'mg979/vim-visual-multi'
  use 'folke/tokyonight.nvim'
end)

-- openai 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
-- use 'hrsh7th/cmp-buffer'
-- use {
-- 'hrsh7th/cmp-nvim-lsp',
-- after = "nvim-cmp",
-- requires = {
-- { "onsails/lspkind-nvim", module = "lspkind" },
-- { "hrsh7th/cmp-buffer", module = "cmp_buffer" },
-- { "hrsh7th/cmp-path", module = "cmp_path" },
-- { "hrsh7th/cmp-nvim-lsp", module = "cmp_nvim_lsp" },
-- { "hrsh7th/cmp-nvim-lua", module = "cmp_nvim_lua" },
-- { "hrsh7th/cmp-calc", module = "cmp_calc" },
-- { "hrsh7th/cmp-emoji", module = "cmp_emoji" },
-- { "quangnguyen30192/cmp-nvim-ultisnips", module = "cmp_nvim_ultisnips" },
-- { "honza/vim-snippets", opt = true },
-- {
-- "SirVer/ultisnips",
-- opt = true,
-- wants = "vim-snippets",
-- },
-- },
-- }
-- use 'nvim-lua/plenary.nvim'
-- use 'neovim/nvim-lspconfig'
-- use({ "neovim/nvim-lspconfig",
-- after = 'nvim-lsp-installer'
-- })
-- use({ "williamboman/nvim-lsp-installer", after = "cmp-nvim-lsp" })
-- use("b0o/schemastore.nvim")
-- use({ "jose-elias-alvarez/null-ls.nvim",
-- requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
-- after = "nvim-lspconfig"
-- })
-- })
--
--
--
--
--
--
--
--
--
--
--
--    config = function()
--      require("plugins.dap")
--    end,
--    keys = {
--      "<Leader>da",
--      "<Leader>db",
--      "<Leader>dc",
--      "<Leader>dd",
--      "<Leader>dh",
--      "<Leader>di",
--      "<Leader>do",
--      "<Leader>dO",
--      "<Leader>dt",
--  },
--dependencies = {
--"theHamsta/nvim-dap-virtual-text",
--"rcarriga/nvim-dap-ui",
--},
--  use {
-- "zbirenbaum/copilot.lua",
-- cmd = "Copilot",
-- event = "InsertEnter",
--}
--},
--  use {
-- "zbirenbaum/copilot.lua",
-- cmd = "Copilot",
-- event = "InsertEnter",
--}
--}
-- cmd = "Copilot",
-- event = "InsertEnter",
--}
--}
--  },
--dependencies = {
--"theHamsta/nvim-dap-virtual-text",
--"rcarriga/nvim-dap-ui",
--},
--  use {
-- "zbirenbaum/copilot.lua",
-- cmd = "Copilot",
-- event = "InsertEnter",
--}
--},
--  use {
-- "zbirenbaum/copilot.lua",
-- cmd = "Copilot",
-- event = "InsertEnter",
--}
--}
-- cmd = "Copilot",
-- event = "InsertEnter",
--}
--}
--  },
--dependencies = {
--"theHamsta/nvim-dap-virtual-text",
--"rcarriga/nvim-dap-ui",
--},
--  use {
-- "zbirenbaum/copilot.lua",
-- cmd = "Copilot",
-- event = "InsertEnter",
--}
--},
--  use {
-- "zbirenbaum/copilot.lua",
-- cmd = "Copilot",
-- event = "InsertEnter",
--}
--}
-- cmd = "Copilot",
-- event = "InsertEnter",
--}
--}
--}
--}
--}
--}
--}
--}
-- "zbirenbaum/copilot.lua",
-- cmd = "Copilot",
-- event = "InsertEnter",
--}
--},
--  use {
-- "zbirenbaum/copilot.lua",
-- cmd = "Copilot",
-- event = "InsertEnter",
--}
--}
-- cmd = "Copilot",
-- event = "InsertEnter",
--}
--}
--}
--}
--}
--}
--}
--}
-- "zbirenbaum/copilot.lua",
-- cmd = "Copilot",
-- event = "InsertEnter",
--}
--},
--  use {
-- "zbirenbaum/copilot.lua",
-- cmd = "Copilot",
-- event = "InsertEnter",
--}
--}
-- cmd = "Copilot",
-- event = "InsertEnter",
--}
--}
--}
--}
--}
--}
--}
--}
--}
--}
