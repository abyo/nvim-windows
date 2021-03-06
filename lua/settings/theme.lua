vim.cmd('syntax on')
vim.cmd('let g:nvcode_termcolors=256')

if vim.fn.has("termguicolors") == 1 then
  vim.go.t_8f = "[[38;2;%lu;%lu;%lum"
  vim.go.t_8b = "[[48;2;%lu;%lu;%lum"
  vim.opt.termguicolors = true
end

-- Comment those 3 lines if you change the theme
vim.g.gruvbox_material_enable_italic = 1
vim.g.gruvbox_material_sign_column_background = 'none'
vim.cmd 'color gruvbox-material'

-- Onedark theme
-- vim.cmd[[colorscheme onedark]]
