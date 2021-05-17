local M = {}

function M.opt(scope, key, value)
  vim[scope][key] = value
  if scope ~= 'o' then
    vim['o'][key] = value
  end
end

function M.keymap(mode, lhs, rhs, opts)
  return vim.api.nvim_set_keymap(mode, lhs, rhs, vim.tbl_extend('keep', opts or {}, {
    nowait = true,
    silent = true,
    noremap = true,
  }))
end

return M
