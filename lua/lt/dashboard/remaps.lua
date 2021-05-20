local keymap = require 'lt.utils.functions'.keymap

-- Sessions
keymap('n', '<Leader>ss', '<cmd>SessionSave<CR>')
keymap('n', '<Leader>sl', '<cmd>SessionLoad<CR>')
