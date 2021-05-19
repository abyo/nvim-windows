local keymap = require 'lt.utils.functions'.keymap

-- Fugitive
keymap('n', '<Leader>gs', '<cmd>G<CR>', { noremap = false })
keymap('n', '<Leader>ga', '<cmd>Git add .<CR>', { noremap = false })
keymap('n', '<Leader>gl', '<cmd>Git log<CR>', { noremap = false })
keymap('n', '<Leader>gc', '<cmd>Git commit<CR>', { noremap = false })
keymap('n', '<Leader>gph', '<cmd>Git push<CR>', { noremap = false })
keymap('n', '<Leader>gpl', '<cmd>Git pull<CR>', { noremap = false })

-- TODO: Add remaps for git signs?
