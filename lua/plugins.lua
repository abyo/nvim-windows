local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

-- Check if packer exist 
if not packer_exists then
  if vim.fn.input("Download Packer? (y for yes)") ~= "y" then
    return
  end

  print("Downloading packer.nvim...")
  local directory = string.format(
    '%s/site/pack/packer/opt/',
    vim.fn.stdpath('data')
  )

  vim.fn.mkdir(directory, 'p')

  local out = vim.fn.system(string.format(
    'git clone %s %s',
    'https://github.com/wbthomason/packer.nvim',
    directory .. '/packer.nvim'
  ))

  print(out)
  print("Downloaded packer.nvim")
  print("Reopen NVIM and run :PackerSync twice")

  return
end

return require('packer').startup {
  function(use)
    -- Packer can manage itself as an optional plugin
    use { 'wbthomason/packer.nvim', opt = true }

    -- Dependencies
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'kyazdani42/nvim-web-devicons'

    -- Telescope
    use 'pwntester/octo.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-project.nvim'
    use 'nvim-telescope/telescope-fzy-native.nvim'

    -- Snippets
    use 'SirVer/ultisnips'
    use 'fhill2/telescope-ultisnips.nvim'

    -- Git
    -- TODO: Move from vim-fugitive/gv to lazygit
    use 'junegunn/gv.vim'
    use 'tpope/vim-rhubarb'
    use 'tpope/vim-fugitive'
    use 'lewis6991/gitsigns.nvim'

    -- UI
    use 'romgrk/barbar.nvim'
    use 'hoob3rt/lualine.nvim'
    use 'kyazdani42/nvim-tree.lua'
    use 'akinsho/nvim-toggleterm.lua'
    use { 'lukas-reineke/indent-blankline.nvim', branch = 'lua' }

    -- TODO: Move to gruvbox-material theme
    -- use 'sainnhe/gruvbox-material'
    use 'joshdick/onedark.vim'

    -- General plugins
    use 'mhinz/vim-startify'
    use 'b3nj5m1n/kommentary'
    use 'norcalli/nvim-colorizer.lua'
    use 'jeffkreeftmeijer/vim-numbertoggle'
    use { 'folke/todo-comments.nvim', config = function() require('todo-comments').setup{} end }

    -- Optional plugins
    use 'wakatime/vim-wakatime'
    -- use { 'andweeb/presence.nvim', config = function() require('presence'):setup({}) end }
end }
