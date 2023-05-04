local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'lewis6991/impatient.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'navarasu/onedark.nvim'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = 'nvim-lua/plenary.nvim'
  }
  use 'nvim-telescope/telescope-file-browser.nvim'
  use {
    'shatur/neovim-session-manager',
    requires = 'nvim-lua/plenary.nvim'
  }
  use 'windwp/nvim-autopairs'
  use 'lewis6991/gitsigns.nvim'
  use {
    'jose-elias-alvarez/null-ls.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      'neovim/nvim-lspconfig',
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- Autocompletion
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',

      -- Snippets
      'L3MON4D3/LuaSnip',
      'rafamadriz/friendly-snippets',
    }
  }
  use 'stevearc/dressing.nvim'
  use { 'folke/trouble.nvim',
  requires = "kyazdani42/nvim-web-devicons",
  }
  use 'tpope/vim-commentary'
  use 'psf/black'
  use 'lervag/vimtex'
  use { 'iamcco/markdown-preview.nvim',
    run = function() vim.fn["mkdp#util#install"]() end,
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
