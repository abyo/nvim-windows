# neoVim LUA config for Windows 10

Migrating to LUA in progress.

## How to install LUA on Windows 10

If you want to work with LUA on Windows, it's pretty confusing. 
It doesn't have to be! Just install everything you need with [WinLua](http://winlua.net/).

## ToDo

## Plugins

The plugin manager I'm using is [packer](https://github.com/bfredl/packer.nvim/)
Here's a list of all plugins I'm using for the config:

```lua
use { 'wbthomason/packer.nvim', opt = true }
use 'rstacruz/vim-closer'
use 'tpope/vim-endwise'
use 'wakatime/vim-wakatime'       -- Coding Tracker
use 'b3nj5m1n/kommentary'         -- Fast Commentary
use 'mbbill/undotree'             -- Show tree history
use 'justinmk/vim-sneak'          -- Better sneak
use 'glepnir/indent-guides.nvim'  -- Indenting
use 'norcalli/nvim-colorizer.lua' -- Add preview colors
use 'psliwka/vim-smoothie'        -- Smoother scrolling (C-d/C-f)
use 'rrethy/vim-illuminate'       -- Highlight matching words w/ cursor on it

-- Lists
use 'folke/todo-comments.nvim'
use 'folke/trouble.nvim'

-- Dependencies
use 'kyazdani42/nvim-web-devicons'
use 'nvim-lua/popup.nvim'
use 'nvim-lua/plenary.nvim'

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

-- Starter screen
use 'glepnir/dashboard-nvim'

-- Fuzzy finder
use 'junegunn/fzf'
use 'junegunn/fzf.vim'
use 'nvim-telescope/telescope.nvim'
```

## Mappings

You can find all mappings in the [mapping file.](mappings.md). Each mappings has a different
file for it. You can find them in their respective plugins (there's a link to them in the
mapping file too).

## Alacritty config

First, create a folder in `~/AppData/Roaming/`, call it `alacritty` then create an
`alacritty.yml` file. Access the [alacritty file](alacritty.yml), copy the content
of the file and then add it to your own file. Note that you can also copy the file
directly and put it in your folder.

I'm using a nerd font (to use glyphs in certain plugins) called `Hack Nerd Font`.
You can use it or use a different one. Here's a [direct link to it](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip).
