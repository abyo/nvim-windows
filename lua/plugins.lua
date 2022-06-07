local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- Autocommand to reload plugins.lua on save
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return packer.startup(function(use)
  -- Dependencies
  use "wbthomason/packer.nvim"                        -- Packer manage itself
  use "nvim-lua/popup.nvim"                           -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim"                         -- Useful lua functions used by lots of plugins
  use 'kyazdani42/nvim-web-devicons'                  -- Adds file type icons to Vim plugins

  -- General
  use "windwp/nvim-autopairs"                         -- Autopairs, integrates with both cmp and treesitter
  use "b3nj5m1n/kommentary"                           -- Commenting plugin
  use "akinsho/bufferline.nvim"                       -- Snazzy bufferline
  use "moll/vim-bbye"                                 -- Bclose.vim but rewritten and well maintained.
  use 'nacro90/numb.nvim'                             -- Easy peek lines
  use 'mg979/vim-visual-multi'                        -- Multiple cursors
  use 'nvim-lualine/lualine.nvim'                     -- Easy to configure neovim statusline
  use "akinsho/toggleterm.nvim"                       -- Easily manage multiple terminal windows
  use 'lewis6991/impatient.nvim'                      -- Improve startup time
  use "lukas-reineke/indent-blankline.nvim"           -- Indent guides

  -- Startify
  use 'goolord/alpha-nvim'                            -- Greeter like startify
  use "antoinemadec/FixCursorHold.nvim"               -- Fix lsp doc highlight

  -- Git
  use "lewis6991/gitsigns.nvim"                       -- Git integration

  -- Colorscheme
  use 'sainnhe/gruvbox-material'                      -- Gruvbox with Material Palette

  -- Auto-completion
  use "hrsh7th/nvim-cmp"                              -- Completion (cmp) plugin
  use "hrsh7th/cmp-buffer"                            -- Cmp source for buffer words
  use "hrsh7th/cmp-path"                              -- Cmp source for path
  use "hrsh7th/cmp-nvim-lsp"                          -- Cmp source for LSP client
  use "hrsh7th/cmp-nvim-lua"                          -- Cmp source for nvim lua
  use "hrsh7th/cmp-cmdline"                           -- Cmp source for vim's cmdline
  use "saadparwaiz1/cmp_luasnip"                      -- Luasnip completion source

  -- Snippets
  use "L3MON4D3/LuaSnip"                              -- Snippet engine
  use "rafamadriz/friendly-snippets"                  -- Preconfigured snippets

  -- LSP
  use "neovim/nvim-lspconfig"                         -- Enable native LSP
  use "williamboman/nvim-lsp-installer"               -- Language server installer
  use "jose-elias-alvarez/null-ls.nvim"               -- Inject LSP diagnostics, code actions ...

  -- Fzf
  use 'kyazdani42/nvim-tree.lua'                      -- File explorer tree
  use "nvim-telescope/telescope.nvim"                 -- Find, Filter, Preview, Pick. All lua, all the time.
  use "ahmedkhalf/project.nvim"                       -- Project manager

  -- Treesitter
  use "nvim-treesitter/nvim-treesitter"               -- Treesitter configuration

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
