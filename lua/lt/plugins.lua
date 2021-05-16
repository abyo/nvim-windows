-- Only required if you have packer in your `opt` pack
local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

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

-- TODO: xd just testing

return require('packer').startup {
  function(use)
    use { 'wbthomason/packer.nvim', opt = true }
    use 'rstacruz/vim-closer'
    use 'tpope/vim-endwise'
    use 'wakatime/vim-wakatime'
    use 'navarasu/onedark.nvim'

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

    -- use 'jeffkreeftmeijer/vim-numbertoggle' (number/relativenumber -> https://github.com/jeffkreeftmeijer/vim-numbertoggle)
  end
}
