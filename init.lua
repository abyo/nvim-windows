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
require('plugins.bufferline')
require('plugins.statusline')
require('plugins.toggleterm')
require('plugins.snippets')

-- Keymap
require('settings.keymap')
