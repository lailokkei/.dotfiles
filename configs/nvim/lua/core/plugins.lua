local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)


local plugins = {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.4',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    },
    {
        'stevearc/oil.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    { "ellisonleao/gruvbox.nvim", priority = 1000 },
    { 'rose-pine/neovim',         name = 'rose-pine' },

    'ThePrimeagen/harpoon',

    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    },

    'jose-elias-alvarez/null-ls.nvim',

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

    'mfussenegger/nvim-dap',
    "rcarriga/nvim-dap-ui",
    'leoluz/nvim-dap-go',

    'elkowar/yuck.vim',
    'norcalli/nvim-colorizer.lua',

    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        },
        lazy = false,
    },

    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    },
    'windwp/nvim-ts-autotag',

    { "lukas-reineke/indent-blankline.nvim" },
    'eandrju/cellular-automaton.nvim',
}

local opts = {
    ui = {
        border = "rounded",
    }
}

require("lazy").setup(plugins, opts)
