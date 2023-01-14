local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

require 'nvim-treesitter.install'.compilers = { "zig", "clang", "gcc" }

configs.setup {
  -- ensure_installed = "maintained",
  sync_install = false,
  ignore_install = { "" }, -- List of parsers to ignore installing
  autopairs = { enable = true },
  highlight = {
    enable = true,
    disable = {}, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = {
    enable = true,
    disable = {}
  },
  autotag = {
    enable = true,
  },
  ensure_installed = {
    "tsx",
    "toml",
    "fish",
    "php",
    "json",
    "yaml",
    "swift",
    "css",
    "html",
    "lua"
  }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
