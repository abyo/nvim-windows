local present, impatient = pcall(require, "impatient")

if present then
 impatient.enable_profile()
end

-- Setting files
require "settings.options"
require "settings.keymaps"

-- Plugin files
require "plugins"
require "plugins.impatient"
require "plugins.colorscheme"
require "plugins.cmp"
require "plugins.lsp"
require "plugins.telescope"
require "plugins.treesitter"
require "plugins.autopairs"
require "plugins.gitsigns"
require "plugins.nvim-tree"
require "plugins.bufferline"
require "plugins.lualine"
require "plugins.toggleterm"
require "plugins.project"
require "plugins.indentline"
require "plugins.alpha"
