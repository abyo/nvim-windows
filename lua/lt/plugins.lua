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
    use 'rstacruz/vim-closer'
    use 'tpope/vim-endwise'
    use 'wakatime/vim-wakatime'
    use 'b3nj5m1n/kommentary'
    use 'mbbill/undotree'

    use {
      'folke/todo-comments.nvim',
      requires = 'nvim-lua/plenary.nvim',
      config = function() require('todo-comments').setup{} end
    }

    use {
      'folke/trouble.nvim',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function() require('trouble').setup{} end
    }

    use {
      'nvim-telescope/telescope.nvim',
      requires = {{ 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' }},
      config = function() require('telescope').setup{} end
    }

    -- Fixes
    use 'antoinemadec/FixCursorHold.nvim'    -- Cursorhold
    use 'jeffkreeftmeijer/vim-numbertoggle'  -- Absolute line numbers when window not focused

    -- Git
    use 'tpope/vim-rhubarb'
    use 'tpope/vim-fugitive'
    use 'junegunn/gv.vim'
    use 'lewis6991/gitsigns.nvim'

    -- Theme/status/buffer line
    use 'joshdick/onedark.vim'
    use 'hoob3rt/lualine.nvim'
    use 'romgrk/barbar.nvim'
    -- TODO: Move to galaxyline/bufferline for custom status line whenever lsp is added
    -- use 'glepnir/galaxyline.nvim'
    -- use 'akinsho/nvim-bufferline.lua'

    -- Starter screen
    use 'glepnir/dashboard-nvim'
  end
}
