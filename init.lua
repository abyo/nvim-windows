-- Plugins
require('plugins')

-- Default configuration
require('settings')
require('settings.theme')

-- Plugins configuration
require('plugins.numb')
require('plugins.vmlens')
require('plugins.startify')
require('plugins.nvimtree')
require('plugins.gitsigns')
require('plugins.snippets')
require('plugins.telescope')
require('plugins.colorizer')
require('plugins.treesitter')
require('plugins.bufferline')
require('plugins.statusline')
require('plugins.toggleterm')
require('plugins.compe')

-- Language support
require('languages/javascript')
require('languages/lua')

-- Keymap
require('settings.keymap')
