--    ('-.                                     
--    ( OO ).-.                                 
--    / . --. /  ,--.    ,--.   ,--..-'),-----. 
--    | \-.  \  /  .'     \  `.'  /( OO'  .-.  '
--  .-'-'  |  |.  / -.  .-')     / /   |  | |  |
--   \| |_.'  || .-.  '(OO  \   /  \_) |  |\|  |
--    |  .-.  |' \  |  ||   /  /\_   \ |  | |  |
--    |  | |  |\  `'  / `-./  /.__)   `'  '-'  '
--    `--' `--' `----'    `--'          `-----' 

-- Packer plugins
require('plugins')

-- Default configuration
require('settings')
require('settings.theme')

-- Plugins configuration
require('plugins.colorizer')
require('plugins.startify')
require('plugins.nvimtree')
require('plugins.gitsigns')
require('plugins.snippets')
require('plugins.bufferline')
require('plugins.statusline')
require('plugins.toggleterm')
require('plugins.telescope')

-- Keymap
require('settings.keymap')
