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
    use { 'wbthomason/packer.nvim', opt = true }
    use 'kyazdani42/nvim-web-devicons'
    use 'rstacruz/vim-closer'
    use 'tpope/vim-endwise'
    use 'wakatime/vim-wakatime'       -- Coding Tracker
    use 'b3nj5m1n/kommentary'         -- Fast Commentary
    use 'mbbill/undotree'             -- Show tree history
    use 'justinmk/vim-sneak'          -- Better sneak
    use 'norcalli/nvim-colorizer.lua' -- Add preview colors
    use 'kyazdani42/nvim-tree.lua'    -- File Tree
    use { 'lukas-reineke/indent-blankline.nvim', branch = 'lua' }
    use 'jeffkreeftmeijer/vim-numbertoggle'  -- Absolute line numbers when window not focused
    use 'akinsho/nvim-toggleterm.lua'
    use 'mhinz/vim-startify'          -- Starter screen

    use {
      'folke/todo-comments.nvim',
      requires = 'nvim-lua/plenary.nvim',
      config = function() require('todo-comments').setup{} end
    }

    use {
      'nvim-telescope/telescope.nvim',
      requires = {{ 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' }},
      config = function() require('telescope').setup{} end
    }

    -- Git
    -- TODO: Move from vim-fugitive/gv to gitUI
    use 'tpope/vim-rhubarb'
    use 'tpope/vim-fugitive'
    use 'junegunn/gv.vim'
    use 'lewis6991/gitsigns.nvim'

    -- Theme/status/buffer line
    -- TODO: Move to gruvbox-material theme
    -- use 'sainnhe/gruvbox-material'
    use 'joshdick/onedark.vim'

    use 'hoob3rt/lualine.nvim'
    use 'romgrk/barbar.nvim'
    -- TODO: Move to galaxyline/bufferline for custom status line
    -- use 'glepnir/galaxyline.nvim'
    -- use 'akinsho/nvim-bufferline.lua'

    -- Fuzzy finder
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'

    -- Snippets integration
    use 'SirVer/ultisnips'
    -- use 'honza/vim-snippets' -- I don't use snippets collection but it's available
end
}
