local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Useful lua functions used by lots of plugins
  use 'nvim-lua/plenary.nvim'
  use "nvim-tree/nvim-web-devicons"

  -- Autopairs
  use 'windwp/nvim-autopairs'

  -- Statusline
  use 'nvim-lualine/lualine.nvim'

  -- Project
  use "ahmedkhalf/project.nvim"

  -- nvim-tree
  use 'nvim-tree/nvim-tree.lua'

  -- Indent blankline
  use "lukas-reineke/indent-blankline.nvim"
  
  -- Colorschemes
  use "folke/tokyonight.nvim"

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- Telescope
  use "nvim-telescope/telescope.nvim"

  -- Treesitter
  use "nvim-treesitter/nvim-treesitter"

  -- bufferline
  use "akinsho/bufferline.nvim"
		
  -- bufdelete
  use "famiu/bufdelete.nvim"
		
  -- LSPs
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  -- code formatting
  use 'jose-elias-alvarez/null-ls.nvim'

  -- autocompletion
  use {
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp'
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end

end)
