local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
      'git',
      'clone',
      '--depth',
      '1',
      'https://github.com/wbthomason/packer.nvim',
      install_path
    })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins_setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
  return
end

packer.startup({function()
  -- Your plugins here
  -- Packer can manage itself
  use "wbthomason/packer.nvim"
  use "nvim-lua/plenary.nvim"

  -- time spend coding
  use 'wakatime/vim-wakatime'

  -- Colorschemes
  use 'shaunsingh/moonlight.nvim'
  use 'marko-cerovac/material.nvim'

  -- Tmux
  use 'christoomey/vim-tmux-navigator'
  use 'preservim/vimux'

  -- Tpope
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }

    -- treesitter configuration
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
  })

  -- Telescope
  use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" } 
  use "nvim-telescope/telescope-file-browser.nvim"
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
    "Pocco81/true-zen.nvim",
    config = function()
       require("true-zen").setup {
        -- your config goes here
        -- or just leave it empty :)
       }
    end,
  })

  use {
    'kevinhwang91/nvim-hlslens',
    config = function()
      require("hlslens").setup()
    end
  }

  use {"mg979/vim-visual-multi", branch = "master"}
  use {'glepnir/dashboard-nvim'}

  -- using packer.nvim
  use {
    'akinsho/bufferline.nvim', 
    tag = "v3.*", 
    requires = 'nvim-tree/nvim-web-devicons',
  }

  -- use {
  --   'nvim-lualine/lualine.nvim',
  --   requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  --   config = function()
  --     require('lualine').setup()
  --   end
  -- }

  use({
    "NTBBloodbath/galaxyline.nvim",
    -- your statusline
    config = function()
      require("galaxyline.themes.eviline")
    end,
    -- some optional icons
    requires = { "kyazdani42/nvim-web-devicons", opt = true }
  })

  -- use {
  --   "ggandor/leap.nvim",
  --   config = function()
  --     require('leap').add_default_mappings()
  --   end
  -- }
  --
  use 'ggandor/lightspeed.nvim'
  -- use 'rcarriga/nvim-notify'
  --

  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }


  if packer_bootstrap then
    require('packer').sync()
  end
end,
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
}})
