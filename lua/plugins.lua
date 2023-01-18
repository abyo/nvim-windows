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

-- Autocommand to reload plugins.lua on save
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- example using a list of specs with the default options
vim.g.mapleader = " " -- make sure to set `mapleader` before lazy so your mappings are correct

return require("lazy").setup({
  -- Dependencies
  "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  , "nvim-lua/plenary.nvim" -- Useful lua functions used by lots of plugins

  -- General
  , "windwp/nvim-ts-autotag" -- Auto clse tags for html
  , "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  , "b3nj5m1n/kommentary" -- Commenting plugin
  , "akinsho/bufferline.nvim" -- Snazzy bufferline
  , "moll/vim-bbye" -- Bclose.vim but rewritten and well maintained.
  , 'nacro90/numb.nvim' -- Easy peek lines
  , 'mg979/vim-visual-multi' -- Multiple cursors
  , 'nvim-lualine/lualine.nvim' -- Easy to configure neovim statusline
  , "akinsho/toggleterm.nvim" -- Easily manage multiple terminal windows
  , 'lewis6991/impatient.nvim' -- Improve startup time
  , "lukas-reineke/indent-blankline.nvim" -- Indent guides

  -- Startify
  , 'goolord/alpha-nvim' -- Greeter like startify
  , "antoinemadec/FixCursorHold.nvim" -- Fix lsp doc highlight

  -- Git
  , "lewis6991/gitsigns.nvim" -- Git integration
  , "dinhhuy258/git.nvim" -- Open Git

  -- Colorscheme
  , 'marko-cerovac/material.nvim' -- ,Material Theme

  -- Auto-completion
  , "hrsh7th/nvim-cmp" -- Completion (cmp) plugin
  , "hrsh7th/cmp-buffer" -- Cmp source for buffer words
  , "hrsh7th/cmp-path" -- Cmp source for path
  , "hrsh7th/cmp-nvim-lsp" -- Cmp source for LSP client
  , "hrsh7th/cmp-nvim-lua" -- Cmp source for nvim lua
  , "hrsh7th/cmp-cmdline" -- Cmp source for vim's cmdline
  , "saadparwaiz1/cmp_luasnip" -- Luasnip completion source

  -- Snippets
  , "L3MON4D3/LuaSnip" -- Snippet engine
  , "rafamadriz/friendly-snippets" -- Preconfigured snippets

  -- LSP
  , "neovim/nvim-lspconfig" -- Enable native LSP
  , "williamboman/nvim-lsp-installer" -- Language server installer
  , "jose-elias-alvarez/null-ls.nvim" -- Inject LSP diagnostics, code actions ...
  , "MunifTanjim/prettier.nvim"
  , "onsails/lspkind-nvim" -- VSCode like pictograms
  , "glepnir/lspsaga.nvim" -- LSP hover doc
  , "williamboman/mason.nvim" -- additional LSP support
  , "williamboman/mason-lspconfig.nvim" -- additional LSP support

  -- Fzf
  , 'kyazdani42/nvim-tree.lua' -- File explorer tree
  , "nvim-telescope/telescope.nvim" -- Find, Filter, Preview, Pick. All lua, all the time.
  , "nvim-telescope/telescope-file-browser.nvim"
  , "nvim-tree/nvim-web-devicons"
  , "ahmedkhalf/project.nvim" -- Project manager

  -- Treesitter
  , "nvim-treesitter/nvim-treesitter" -- Treesitter configuration
})
