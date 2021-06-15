vim.api.nvim_exec([[
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
]], true)

require'compe'.setup {
  enabled = true,
  autocomplete = true,
  debug = false,
  min_length = 1,
  preselect = 'enable',
  throttle_time = 80,
  source_timeout = 200,
  incomplete_delay = 400,
  max_abbr_width = 100,
  max_kind_width = 100,
  max_menu_width = 100,
  documentation = true,

  source = {
    path = true,
    treesitter = true,
    nvim_lsp = true,
    omni = false,
    buffer = true,
    tags = true,
    spell = false,
    calc = false,
    ultisnips =  true
  }
}

local function t(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end
