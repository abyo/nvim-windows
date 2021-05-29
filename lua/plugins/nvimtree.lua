vim.g.nvim_tree_width = 30
vim.g.nvim_tree_git_hl = 0
vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_follow  = 1

vim.g.nvim_tree_show_icons = {
  git = 0,
  folders = 1,
  files = 1,
}

-- Changing tree bindings (https://github.com/kyazdani42/nvim-tree.lua#keybindings)

--[[ local tree_cb = require'nvim-tree.config'.nvim_tree_callback

vim.g.nvim_tree_bindings = {
  ["R"] = tree_cb("refresh")
} ]]
