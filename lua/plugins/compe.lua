vim.api.nvim_exec([[
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
]], true)

require'compe'.setup {
  enabled = true,
  debug = false,
  min_length = 2,

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
