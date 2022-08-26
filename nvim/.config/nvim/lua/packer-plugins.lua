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
    
    use({ 'kdheepak/lazygit.nvim' })

      -- cmp and cmp attachments

    use({
      'akinsho/bufferline.nvim',
      tag = 'v2.*'
    })
    
    -- comment
    use({
      'numToStr/Comment.nvim',
      event = 'BufWinEnter',
      config = function()
        require('Comment').setup()
      end
    })

    -- blankline
    use({
      'lukas-reineke/indent-blankline.nvim',
      event = 'BufWinEnter',
      config = function()
        require('indent_blankline').setup {
          show_current_context = true,
          show_current_context_start = true,
          show_end_of_line = true,
        }
      end
    })

    use({
      'windwp/nvim-autopairs',
      event = 'BufWinEnter',
      requires = { { 'hrsh7th/nvim-cmp' } },
      config = function()
        require('nvim-autopairs').setup()
      end
    })

    use {
      "tpope/vim-rails"
    }

    use {
      'thoughtbot/vim-rspec'
    }

    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'hrsh7th/cmp-cmdline' }
    use { 'hrsh7th/nvim-cmp' }

    use { 'hrsh7th/cmp-vsnip' }
    use { 'hrsh7th/vim-vsnip' }

    -- use {
    --   "jose-elias-alvarez/null-ls.nvim",
    --   requires = { "nvim-lua/plenary.nvim" },
    --   }
end)
