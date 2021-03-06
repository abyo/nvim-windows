function keymap(mode, lhs, rhs, opts)
  return vim.api.nvim_set_keymap(mode, lhs, rhs, vim.tbl_extend('keep', opts or {}, {
    nowait = true,
    silent = true,
    noremap = true,
  }))
end

-- Reloading lua file
keymap('n', '<Leader><CR>', '<cmd>lua reload()<CR>')

-- Saving
keymap('i', '<C-s>', '<C-o>:w<CR>', { noremap = false })
keymap('n', '<C-s>', ':w<CR>', { noremap = false })
keymap('n', '<C-q>', ':wq!<CR>', { noremap = false })

-- Moving between slits
keymap('n', '<C-h>', '<C-w>h')
keymap('n', '<C-j>', '<C-w>j')
keymap('n', '<C-k>', '<C-w>k')
keymap('n', '<C-l>', '<C-w>l')
keymap('n', '<C-h>', '<C-\\><C-n><C-w>h')
keymap('n', '<C-l>', '<C-\\><C-n><C-w>l')

-- Resize slits
keymap('n', '<C-Up>', ':resize -2<CR>')
keymap('n', '<C-Down>', ':resize +2<CR>')
keymap('n', '<C-Right>', ':vertical resize -2<CR>')
keymap('n', '<C-Left>', ':vertical resize +2<CR>')

-- Moving between buffers
keymap('n', '<Leader>bn', ':BufferNext<CR>')
keymap('n', '<Leader>bp', ':BufferPrevious<CR>')
keymap('n', '<Leader>bc', ':BufferClose<CR>')

-- Close all buffers except current one
keymap('n', '<Leader>bac', ':silent w <BAR> :silent %bd <BAR> e#<CR>')

-- Handling copy/pasting on Windows
keymap('v', '<C-c>', '"+y')
keymap('i', '<C-v>', '<Esc>"+p')
keymap('n', '<C-v>', '"+p')

-- Move a selected line up/down
keymap('v', 'J', ":m '>+1<CR>gv=gv")
keymap('v', 'K', ":m '<-2<CR>gv=gv")

-- Indenting in visual mode
keymap('v', '<', '<gv')
keymap('v', '>', '>gv')

-- Delete line in visual
keymap('x', 'd', '"_d')

-- Escaping insert mode
keymap('i', 'jk', '<ESC>')
keymap('i', 'kj', '<ESC>')
keymap('i', 'jj', '<ESC>')

-- Filetree (kyazdani42/nvim-tree.lua)
keymap('n', '<C-b>', '<cmd>NvimTreeToggle<CR>')

-- Commentary (b3nj5m1n/kommentary)
keymap('n', '<Leader>c', 'gcc', { noremap = false })
keymap('v', '<Leader>c', 'gc<BAR><Esc>', { noremap = false })

-- Git (kdheepak/lazygit.nvim)
keymap('n', '<Leader>gs', '<cmd>LazyGit<CR>', { noremap = false })

-- Telescope (nvim-telescope/telescope.nvim)
keymap('n', '<Leader>p', '<cmd>Telescope find_files<CR>')
keymap('n', '<Leader>bu', '<cmd>Telescope buffers<CR>')
keymap('n', '<Leader>f', '<cmd>Telescope live_grep<CR>')

-- Terminal (voldikss/vim-floaterm)
keymap('n', '<Leader>tn', '<cmd>FloatermNew --height=0.9 --width=0.9<CR>')
keymap('n', '<Leader>tt', '<cmd>FloatermToggle<CR>')
keymap('t', '<Leader>tt', '<cmd>FloatermToggle<CR>')
keymap('t', '<Leader>tk', '<cmd>FloatermKill<CR>')
keymap('t', '<Leader>tn', '<cmd>FloatermNext<CR>')
keymap('t', '<Leader>tp', '<cmd>FloatermPrev<CR>')

-- Starfity (mhinz/vim-startify)
keymap('n', '<Leader>ss', '<cmd>SSave<CR>')
keymap('n', '<Leader>sl', '<cmd>SLoad<CR>')
keymap('n', '<Leader>sd', '<cmd>SDelete<CR>')

-- Glow (npxbr/glow.nvim)
keymap('n', '<Leader>mp', '<cmd>Glow<CR>')

-- Compe (hrsh7th/nvim-compe)
function _G.smart_tab()
  return vim.fn.pumvisible() == 1 and t'<C-n>' or t'<Tab>'
end

keymap('i', '<tab>', 'v:lua.smart_tab()')
