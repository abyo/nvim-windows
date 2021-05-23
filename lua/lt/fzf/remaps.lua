local keymap = require 'lt.utils.functions'.keymap

keymap('n', '<Leader>gf', '<cmd>GFiles --cached --others --exclude-standard<CR>')
-- NOTE: Might change to telescope find files?
keymap('n', '<Leader>p', '<cmd>Files<CR>')
keymap('n', '<Leader>bu', '<cmd>Buffers<CR>')
keymap('n', '<Leader>f', '<cmd>Rg<CR>')
keymap('n', '<C-f>', '<cmd>BLines<CR>')

