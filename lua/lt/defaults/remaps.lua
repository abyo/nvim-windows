local keymap = require 'lt.utils.functions'.keymap

-- TODO: Change c to C in ctrl mappings
-- Reloading lua file
keymap('n', '<Leader><CR>', '<cmd>lua reload()<CR>')

-- Saving
keymap('', '<c-s>', ':w<CR>', { noremap = false })
keymap('i', '<c-s>', '<C-o>:w<CR>', { noremap = false })
keymap('n', '<c-s>', ':w<CR>', { noremap = false })
keymap('n', '<c-q>', ':wq!<CR>', { noremap = false })
keymap('n', '<c-Q>', ':q!<CR>', { noremap = false })

-- Moving between slits
keymap('n', '<c-h>', '<C-w>h')
keymap('n', '<c-j>', '<C-w>j')
keymap('n', '<c-k>', '<C-w>k')
keymap('n', '<c-l>', '<C-w>l')
keymap('n', '<c-h>', '<C-\\><C-n><C-w>h')
keymap('n', '<c-l>', '<C-\\><C-n><C-w>l')

-- Resize slits
keymap('n', '<C-Up>', ':resize -2<CR>')
keymap('n', '<C-Down>', ':resize +2<CR>')
keymap('n', '<C-Right>', ':vertical resize -2<CR>')
keymap('n', '<C-Left>', ':vertical resize +2<CR>')

-- Moving between buffers
keymap('n', '<tab>', ':BufferNext<CR>')
keymap('n', '<s-tab>', ':BufferPrevious<CR>')
keymap('n', '<C-w>', ':BufferClose<CR>')

-- Escaping in terminal mode
keymap('t', '<Leader>jj', '<C-\\><C-n>')

-- Handling copy/pasting on Windows
keymap('v', '<C-c>', '"+y')
keymap('i', '<C-v>', '<Esc>"+p')
keymap('n', '<C-v>', '"+p')

-- Move a selected line up/down
keymap('v', 'J', ":m '>+1<CR>gv=gv")
keymap('v', 'K', ":m '<-2<CR>gv=gv")

-- Indenting in visual mode
keymap('x', '<s-tab>', '<gv')
keymap('x', '<tab>', '>gv')

-- Close all buffers except current one
keymap('n', '<Leader>db', ':silent w <BAR> :silent %bd <BAR> e#<CR>')

-- Delete line in visual
keymap('x', 'd', '"_d')

-- Escaping insert mode
keymap('i', 'jk', '<ESC>')
keymap('i', 'kj', '<ESC>')
keymap('i', 'jj', '<ESC>')
