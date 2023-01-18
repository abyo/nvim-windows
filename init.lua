local present, impatient = pcall(require, "impatient")

if present then
    impatient.enable_profile()
end

-- Setting files
require "settings.options"
require "settings.keymaps"

-- Plugin files
require "plugins"
require "plugins.alpha"
require "plugins.autopairs"
require "plugins.autotags"
require "plugins.bufferline"
require "plugins.cmp"
require "plugins.colorscheme"
require "plugins.git"
require "plugins.gitsigns"
require "plugins.impatient"
require "plugins.indentline"
require "plugins.lsp"
require "plugins.lspsaga"
require "plugins.lualine"
require "plugins.mason"
require "plugins.nvim-tree"
require "plugins.project"
require "plugins.telescope"
require "plugins.toggleterm"
require "plugins.treesitter"
