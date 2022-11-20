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

  -- Autopairs
  use 'windwp/nvim-autopairs'

  -- Statusline
  use {
    'nvim-lualine/lualine.nvim',
    --requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Project
  use {
    "ahmedkhalf/project.nvim",
    commit = "628de7e433dd503e782831fe150bb750e56e55d6"
  }

  -- nvim-tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- Indent blankline
  use {
    "lukas-reineke/indent-blankline.nvim",
    commit = "db7cbcb40cc00fc5d6074d7569fb37197705e7f6"
  }
  
  -- Colorschemes
  use {
    "folke/tokyonight.nvim",
    commit = "66bfc2e8f754869c7b651f3f47a2ee56ae557764"
  }
  use {
    'shaunsingh/nord.nvim',
    commit = "78f5f001709b5b321a35dcdc44549ef93185e024"
  }

  -- Git
  use {
    "lewis6991/gitsigns.nvim",
    commit = "2c6f96dda47e55fa07052ce2e2141e8367cbaaf2"
  }

  -- Telescope
  use {
    "nvim-telescope/telescope.nvim",
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Treesitter
	use {
		"nvim-treesitter/nvim-treesitter",
		commit = "8e763332b7bf7b3a426fd8707b7f5aa85823a5ac",
	}

  -- bufferline
  use {
    'akinsho/bufferline.nvim',
    tag = "v2.*"
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end

end)
