vim.g.startify_files_number = 8
vim.g.startify_padding_left = 3
vim.g.webdevicons_enable_startify = 1
vim.g.startify_session_delete_buffers = 1
vim.g.startify_session_sort = 1
vim.g.startify_update_oldfiles = 1
vim.g.startify_change_to_dir = 1
vim.g.startify_fortune_use_unicode = 1
vim.g.startify_session_dir = "~/AppData/Local/nvim/sessions"

vim.api.nvim_exec(
'let startify_bookmarks = [ {\'c\': \'~/AppData/Local/nvim/init.lua\'} ]',
true
)

vim.api.nvim_exec(
'let startify_lists = [ { \'type\': \'sessions\', \'header\': [\'  Sessions\'] }, { \'type\': \'bookmarks\', \'header\': [\'  Bookmarks\'] }, { \'type\': \'files\', \'header\': [\'  Recent Files\'] }, { \'type\': \'dir\', \'header\': [\'  Recent Files in \'. getcwd()] }, { \'type\': \'commands\',  \'header\': [\'   Commands\'] } ]',
true
)

vim.g.startify_custom_header = {
'⠀⠀⠀▄█▀▀▀▄⠀⠀▄████▄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ',
'⠀▄█▀▀⠀⠀⠀▀▄▄▀▀⠀⠀▀█▄▄▄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ',
'▄██⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ▀▀▀█████▄⠀⠀⠀⠀',
'██⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠀⠀▀█▄⠀⠀⠀    ___ ___ __ __ _    ______ ____         __  ___  ____  _____ ____  ____ ',
'▀█▄⠀⠀⠀⠀⠀ ⠀██  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀██⠀⠀    |   |   |  |  | |  |      |    |       /  ]/    |     |     |    |/    |',
'⠀▀█▄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠀⠀⠀██  ⠀⠀⠀▄█▀⠀⠀    | _   _ |  |  | |  |      ||  |_____  /  /|     |  _  |   __||  ||   __|',
'⠀⠀██▄⠀⠀⠀ ⠀████▄▄▄  ⠀⠀⠀⠀⠀⠀██⠀⠀⠀    |   _/  |  |  | |__|_|  |_||  |     |/  / |  O  |  |  |  |_  |  ||  |  |',
'⠀⠀⠀██⠀⠀⠀⠀⠀⠀ ⠀▀▀▀▀⠀⠀⠀  ⠀⠀⠀██⠀⠀⠀    |   |   |  :  |     ||  |  |  |_____/    _|     |  |  |   _] |  ||  |_ |', 
'⠀⠀⠀██⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀██⠀⠀    |   |   |     |     ||  |  |  |           |     |  |  |  |   |  ||     |',
'⠀⠀██⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀▀█▄    |___|___|___,_|_____||__| |____|      ____|____/|__|__|__|  |____|___,_|',
'⠀██▀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ██',
'⠀██▄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀▄▄▄▄▄▄▄⠀ ⠀⠀⠀▄▄██',
'⠀⠀▀█▄▄▄▄▄▄▄▄▄▄▄█▀▀▀▀▀▀▀▄▄▄▄█▀▀⠀',
}
