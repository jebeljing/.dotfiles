local use = require('packer').use

return require('packer').startup(function()
    -- packer can manage itself
    use 'wbthomason/packer.nvim' -- Package manager

    -- colorscheme
    use 'ellisonleao/gruvbox.nvim'

    use 'tpope/vim-unimpaired'

    use 'tpope/vim-surround'

    use 'tpope/vim-commentary'

    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }


    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

    --use 'hrsh7th/nvim-cmp'

    use({
        "glepnir/lspsaga.nvim",
        branch = "main",
    })

    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- configuration
            }
        end
    }

    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make' 
    }

    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons',
        },
        config = function()
          require("nvim-tree").setup()
        end
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
	config = function()
            require("bufferline").setup{

	    }
        end
    }

    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }

    use {
        'karb94/neoscroll.nvim',
        config = function()
            require('neoscroll').setup()
        end
    }

    use {
        'norcalli/nvim-colorizer.lua',
        config = function()
            require('colorizer').setup()
        end
    }

    use {
      'tpope/vim-endwise'
    }

    -- use {
    --   "jose-elias-alvarez/null-ls.nvim",
    --   requires = { "nvim-lua/plenary.nvim" },
    --   }
end)
