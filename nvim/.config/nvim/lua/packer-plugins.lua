local use = require('packer').use

return require('packer').startup(function()
    -- packer can manage itself
    use 'wbthomason/packer.nvim' -- Package manager

    -- colorscheme
    -- use 'ellisonleao/gruvbox.nvim'
    use 'sainnhe/gruvbox-material'

    use 'tpope/vim-unimpaired'

    use 'tpope/vim-surround'

    use 'tpope/vim-repeat'

    -- use 'tpope/vim-commentary'

    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use { "nvim-telescope/telescope-file-browser.nvim" }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use 'nvim-treesitter/nvim-treesitter-context'

    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

    --use 'hrsh7th/nvim-cmp'

    use({
        "glepnir/lspsaga.nvim",
        branch = "main",
    })
    -- use { 'kkharji/lspsaga.nvim' }  -- nightly

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
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use {
        'lewis6991/gitsigns.nvim'
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
      tag = 'v2.*',
      requires = 'kyazdani42/nvim-web-devicons'
    })
    
    -- blankline
    use({
      'lukas-reineke/indent-blankline.nvim',
    })

    use({
      'windwp/nvim-autopairs',
      requires = { { 'hrsh7th/nvim-cmp' } },
    })

    use {
      "tpope/vim-rails"
    }

    use {
      "tpope/vim-rake"
    }

    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'hrsh7th/cmp-cmdline' }
    use { 'hrsh7th/nvim-cmp' }

    use { 'hrsh7th/cmp-vsnip' }
    use { 'hrsh7th/vim-vsnip' }
    use { 'hrsh7th/vim-vsnip-integ' }

    use "rafamadriz/friendly-snippets"
    -- -- For luasnip users.
    -- use { 'L3MON4D3/LuaSnip' }
    -- use { 'saadparwaiz1/cmp_luasnip' }
    --
    -- -- For ultisnips users.
    -- use { 'SirVer/ultisnips' }
    -- use { 'quangnguyen30192/cmp-nvim-ultisnips' }
    --
    -- -- For snippy users.
    -- use { 'dcampos/nvim-snippy' }
    -- use { 'dcampos/cmp-snippy' }

    use {
      "jose-elias-alvarez/null-ls.nvim",
      requires = { "nvim-lua/plenary.nvim" },
    }

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
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
    }

    use {
      "williamboman/nvim-lsp-installer",
    }

    use {
      'vim-test/vim-test'
    }

    use {
      'phaazon/hop.nvim',
      branch = 'v2', -- optional but strongly recommended
      config = function()
        -- you can configure Hop the way you like here; see :h hop-config
        require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
      end
    }

    use { 'RRethy/nvim-treesitter-endwise' }

    use { 'luochen1990/rainbow' }


    use { 'chentoast/marks.nvim' }

    use {
      "nvim-neotest/neotest",
      requires = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        "olimorris/neotest-rspec",
        "nvim-neotest/neotest-plenary",
        "nvim-neotest/neotest-python",
        "antoinemadec/FixCursorHold.nvim"
      }
    }

    use {
      "martinda/Jenkinsfile-vim-syntax"
    }





end)
