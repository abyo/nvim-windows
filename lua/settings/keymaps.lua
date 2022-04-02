function keymap(mode, lhs, rhs, opts)
  return vim.api.nvim_set_keymap(mode, lhs, rhs, vim.tbl_extend('keep', opts or {}, {
    nowait = true,
    silent = true,
    noremap = true,
  }))
end

keymap('', '<Space>', '<Nop>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- TODO: move 'doc' to github wiki

-----------------------
-- Windows & buffers --
-----------------------

keymap('n', '<C-h>', '<C-w>h') -- Left slit
keymap('n', '<C-j>', '<C-w>j') -- Top slit
keymap('n', '<C-k>', '<C-w>k') -- Bot slit
keymap('n', '<C-l>', '<C-w>l') -- Right Slit

keymap('n', '<C-Up>', ':resize -2<CR>')             -- Top resize
keymap('n', '<C-Down>', ':resize +2<CR>')           -- Bottom resize
keymap('n', '<C-Right>', ':vertical resize -2<CR>') -- Right resize
keymap('n', '<C-Left>', ':vertical resize +2<CR>')  -- Left resize

keymap('n', '<S-l>', ':bnext<CR>')     -- Next buffer
keymap('n', '<S-h>', ':bprevious<CR>') -- Previous buffer
keymap('n', '<C-w>', ':Bdelete<CR>')   -- Close buffer

-- Close all buffer except the focused one
keymap('n', '<Leader>bac', ':silent w <BAR> :silent %bd <BAR> e#<CR>')

keymap('n', '<C-b>', ':NvimTreeToggle<cr>') -- Open explorer tree

keymap("n", "<C-p>", "<cmd>Telescope find_files<cr>")     -- Find specific files
keymap("n", "<leader>p", "<cmd>Telescope live_grep<cr>")  -- Find specific text
keymap("n", "<leader>tp", "<cmd>Telescope projects<cr>")  -- List of projects

keymap("n", "<leader>f", ":lua vim.lsp.buf.formatting()<cr>") -- Format document (null-ls)
keymap("n", "<leader>lg", ":lua _LAZYGIT_TOGGLE()<cr>")       -- Open lazygit window

------------
-- Editor --
------------

keymap('i', 'jk', '<ESC>') -- Escape i mode
keymap('i', 'kj', '<ESC>') -- Escape i mode

keymap('i', '<C-s>', '<C-o>:w<CR>') -- Save
keymap('n', '<C-s>', ':w<CR>')      -- Save
keymap('n', '<C-q>', ':wq!<CR>')    -- Save and exit

keymap('n', 'n', 'nzzzv') -- Better movement for next command
keymap('n', 'N', 'Nzzzv') -- Better movement for next command

keymap('i', ',', ',<C-g>u') -- Undo break points
keymap('i', '.', '.<C-g>u') -- Undo break points
keymap('i', '!', '!<C-g>u') -- Undo break points
keymap('i', '?', '?<C-g>u') -- Undo break points

keymap('v', '<C-c>', '"+y')      -- Copy
keymap('n', 'Y', 'y$')           -- Copy line from cursor
keymap('i', '<C-v>', '<Esc>"+p') -- Paste
keymap('n', '<C-v>', '"+p')      -- Paste
keymap("v", "<C-v>", '"_dP')     -- Paste

keymap("n", "<leader>j", ":m .+1<CR>==")  -- Move line once in n mode (bottom)
keymap("n", "<leader>k", ":m .-2<CR>==")  -- Move line once in n mode (top)
keymap("i", "<C-j>", "<Esc>:m .+1<CR>==") -- Move line in n mode (bottom)
keymap("i", "<C-k>", "<Esc>:m .-2<CR>==") -- Move line in n mode (top)
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv")  -- Move line (bottom)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv")  -- Move line (top)

keymap('v', '<', '<gv') -- Better indentation with tab
keymap('v', '>', '>gv') -- Better indentation with tab (reverse)

keymap('x', 'd', '"_d') -- Delete a line in v mode

-------------
-- Plugins --
-------------

-- CMP
-- File: lua/plugins/cmp.lua
-- mapping = {
--   ["<C-k>"] = cmp.mapping.select_prev_item(),
--   ["<C-j>"] = cmp.mapping.select_next_item(),
--   ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
--   ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
--   ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
--   ["<C-e>"] = cmp.mapping { i = cmp.mapping.abort(), c = cmp.mapping.close() },
--   ["<CR>"] = cmp.mapping.confirm { select = true },
-- }

-- LSP
-- File: lua/plugins/lsp/handlers.lua
-- vim.api.nvim_buf_set_keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
-- vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
-- vim.api.nvim_buf_set_keymap(bufnr, "n", "gK", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
-- vim.api.nvim_buf_set_keymap(bufnr, "n", "gh", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
-- vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
-- vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
-- vim.api.nvim_buf_set_keymap(bufnr, "n", "gR", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
-- vim.api.nvim_buf_set_keymap(bufnr, "n", "gca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
-- vim.api.nvim_buf_set_keymap(bufnr, "n", "gp", '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, "n", "gf", '<cmd>lua vim.diagnostic.open_float({ border = "rounded" })<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, "n", "gn", '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, "n", "gls", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)

-- Telescope
-- File: lua/plugins/telescope.lua
-- mappings = {
--   i = {
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,

--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,

--     ["<CR>"] = actions.select_default,
--     ["<C-h>"] = actions.select_horizontal,
--     ["<C-v>"] = actions.select_vertical,
--     ["<C-t>"] = actions.select_tab,

--     ["<S-k>"] = actions.preview_scrolling_up,
--     ["<S-j>"] = actions.preview_scrolling_down,

--     ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
--     ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
--     ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
--     ["<S-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
--     ["<C-l>"] = actions.complete_tag,
--     ["<C-_>"] = actions.which_key, -- keys from pressing <C-/>
--   },

--   n = {
--     ["<esc>"] = actions.close,
--     ["<CR>"] = actions.select_default,
--     ["<C-h>"] = actions.select_horizontal,
--     ["<C-v>"] = actions.select_vertical,
--     ["<C-t>"] = actions.select_tab,

--     ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
--     ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
--     ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
--     ["<S-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

--     ["j"] = actions.move_selection_next,
--     ["k"] = actions.move_selection_previous,

--     ["gg"] = actions.move_to_top,
--     ["G"] = actions.move_to_bottom,

--     ["<S-k>"] = actions.preview_scrolling_up,
--     ["<S-j>"] = actions.preview_scrolling_down,

--     ["?"] = actions.which_key,
--   },
-- },

-- Kommentary
-- Default configuration
-- vim.api.nvim_set_keymap("n", "gcc", "<Plug>kommentary_line_default", {})
-- vim.api.nvim_set_keymap("n", "gc", "<Plug>kommentary_motion_default", {})
-- vim.api.nvim_set_keymap("v", "gc", "<Plug>kommentary_visual_default<C-c>", {})

-- Nvim-tree
-- Default configuration (https://github.com/kyazdani42/nvim-tree.lua#keybindings)
-- <CR> or o on the root folder will cd in the above directory
-- <BS> will close current opened directory or parent
-- type a to add a file. Adding a directory requires leaving a leading / at the end of the path.
-- type r to rename a file
-- type d to delete a file (will prompt for confirmation)
-- <Tab> will open the file as a preview (keeps the cursor in the tree)
-- R will refresh the tree
-- W will collapse the whole tree
-- C-k will toggle a popup with file infos about the file under the cursor
-- type x to add/remove file/directory to cut clipboard
-- type c to add/remove file/directory to copy clipboard
-- type y will copy name to system clipboard
-- type Y will copy relative path to system clipboard
-- type gy will copy absolute path to system clipboard
-- type p to paste from clipboard. Cut clipboard has precedence over copy (will prompt for confirmation)
-- <C-v> will open the file in a vertical split
-- <C-x> will open the file in a horizontal split
-- <C-t> will open the file in a new tab
-- I will toggle visibility of hidden folders / files
-- H will toggle visibility of dotfiles (files/folders starting with a .)
-- S will prompt the user to enter a path and then expands the tree to match the path

-- Toggleterm
-- File: lua/plugins/toggleterm.lua
-- open_mapping = [[<c-t>]],
-- vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
-- vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
-- vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
-- vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
-- vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
-- vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)

-- Visual multi
-- Default configuration (https://github.com/mg979/vim-visual-multi)
-- select words with Ctrl-N (like Ctrl-d in Sublime Text/VS Code)
-- create cursors vertically with Ctrl-Down/Ctrl-Up
-- select one character at a time with Shift-Arrows
-- press n/N to get next/previous occurrence
-- press [/] to select next/previous cursor
-- press q to skip current and get next occurrence
-- press Q to remove current cursor/selection
-- start insert mode with i,a,I,A
