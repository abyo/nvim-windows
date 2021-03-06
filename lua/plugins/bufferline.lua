-- Buffer line
vim.cmd("let bufferline = get(g:, 'bufferline', {})")
vim.cmd('let bufferline.maximum_padding = 1')
vim.cmd('let bufferline.animation = v:false')

--[[ require('bufferline').setup {
  options = {
    numbers = 'none',
    mappings = true,
    indicator_icon = '▎',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 18,
    max_prefix_length = 15,
    diagnostics = false,
    diagnostics_indicator = function(count, level, diagnostics_dict)
      return "("..count..")"
    end,
    offsets = {{filetype = "NvimTree", text = "File Explorer", highlight = "Directory", text_align = "left"}},
    show_buffer_icons = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    show_tab_indicators = true,
    persist_buffer_sort = true,
    separator_style = 'thin',
    enforce_regular_tabs = false,
    always_show_bufferline = true,
  }
} ]]