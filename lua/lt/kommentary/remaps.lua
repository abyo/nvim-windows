local keymap = require 'lt.utils.functions'.keymap

keymap('n', '<Leader>c', 'gcc', { noremap = false })
keymap('v', '<Leader>c', 'gc<BAR><Esc>', { noremap = false })
