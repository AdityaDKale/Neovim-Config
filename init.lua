require("celestine")

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


require("lazy").setup({
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    'nvim-lua/plenary.nvim',
    'rose-pine/neovim', name = 'rose-pine',
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    'nvim-treesitter/playground',
    'mbbill/undotree',
    'vim-airline/vim-airline',
    -- LSP
    --- Uncomment these if you want to manage LSP servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},

    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
    "askfiy/visual_studio_code",
    "DreamMaoMao/yazi.nvim",
    {'numToStr/Comment.nvim', lazy = false,},
    {"ThePrimeagen/harpoon",branch = "harpoon2"}
})

