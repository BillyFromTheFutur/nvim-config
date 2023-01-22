local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -- use { 'nvim-telescope/telescope-fzf-native.nvim',
  use { 'wbthomason/packer.nvim',
    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
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
  use 'nvim-lua/plenary.nvim'
  use { 'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim' }
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'pocco81/auto-save.nvim'
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
  use 'mfussenegger/nvim-dap'
  use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
end)

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
