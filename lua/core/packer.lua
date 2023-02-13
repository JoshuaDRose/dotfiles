-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function()
    -- Packer can manage itself


    use({'folke/trouble.nvim',
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
        require("trouble").setup{ }
    end
})
-- =====>> GIT INTEGRATION PLUGINS <<====== --
use('lewis6991/gitsigns.nvim')

use('https://github.com/tpope/vim-fugitive')
use({'nvim-telescope/telescope-symbols.nvim' })

use {'glepnir/dashboard-nvim'}
use 'shaunsingh/nord.nvim'

use 'wakatime/vim-wakatime'
use 'https://github.com/itchyny/vim-gitbranch'

use({ 'mrjones2014/legendary.nvim', tag = 'v2.1.0', })
use { "hrsh7th/cmp-nvim-lsp" }
use { "hrsh7th/cmp-vsnip" }
use { "hrsh7th/vim-vsnip" }

use 'https://github.com/seebye/ueberzug'
use 'lukas-reineke/headlines.nvim'
use {'https://github.com/ellisonleao/gruvbox.nvim'}
use({'https://github.com/preservim/nerdtree'})
use {
    'sudormrfbin/cheatsheet.nvim',
    requires = {
        {'nvim-telescope/telescope.nvim'},
        {'nvim-lua/popup.nvim'},
        {'nvim-lua/plenary.nvim'},
    }
}
use {
    "nvim-neorg/neorg",
    run = ":Neorg sync-parsers",
    requires = "nvim-lua/plenary.nvim",
}
use('andweeb/presence.nvim')
use('wbthomason/packer.nvim')
use({'nvim-telescope/telescope.nvim', requires = {'nvim-telescope/telescope-media-files.nvim'}})
use('nvim-lua/popup.nvim')
use('Eandrju/cellular-automaton.nvim')
use('nvim-lua/plenary.nvim')
use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = false } }
use({ 'rose-pine/neovim',
as = 'rose-pine'})
use {'nvim-treesitter/nvim-treesitter'}
use({'nvim-orgmode/orgmode',
config = function()
    require('orgmode').setup{}
end
    })
    use({ 'https://github.com/xiyaowong/nvim-transparent' })
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')

    use({'scalameta/nvim-metals', requires = { "nvim-lua/plenary.nvim", 'mfussenegger/nvim-dap' }})

    use{
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    use("folke/zen-mode.nvim")
    use("github/copilot.vim")

end)
