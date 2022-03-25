local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
	[[⠀⠀⠀▄█▀▀▀▄⠀⠀▄████▄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
  [[⠀▄█▀▀⠀⠀⠀▀▄▄▀▀⠀⠀▀█▄▄▄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
  [[▄██⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ▀▀▀█████▄⠀⠀⠀⠀]],
  [[██⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠀⠀▀█▄⠀⠀⠀          ___ ___ __ __ _    ______ ____         __  ___  ____  _____ ____  ____ ]],
  [[▀█▄⠀⠀⠀⠀⠀ ⠀██  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀██⠀⠀          |   |   |  |  | |  |      |    |       /  ]/    |     |     |    |/    |]],
  [[⠀▀█▄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠀⠀⠀██  ⠀⠀⠀▄█▀⠀⠀          | _   _ |  |  | |  |      ||  |_____  /  /|     |  _  |   __||  ||   __|]],
  [[⠀⠀██▄⠀⠀⠀ ⠀████▄▄▄  ⠀⠀⠀⠀⠀⠀██⠀⠀⠀          |   _/  |  |  | |__|_|  |_||  |     |/  / |  O  |  |  |  |_  |  ||  |  |]],
  [[⠀⠀⠀██⠀⠀⠀⠀⠀⠀ ⠀▀▀▀▀⠀⠀⠀  ⠀⠀⠀██⠀⠀⠀          |   |   |  :  |     ||  |  |  |_____/    _|     |  |  |   _] |  ||  |_ |]],
  [[⠀⠀⠀██⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀██⠀⠀          |   |   |     |     ||  |  |  |           |     |  |  |  |   |  ||     |]],
  [[⠀⠀██⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀▀█▄          |___|___|___,_|_____||__| |____|      ____|____/|__|__|__|  |____|___,_|]],
  [[⠀██▀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ██]],
  [[⠀██▄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀▄▄▄▄▄▄▄⠀ ⠀⠀⠀▄▄██]],
  [[⠀⠀▀█▄▄▄▄▄▄▄▄▄▄▄█▀▀▀▀▀▀▀▄▄▄▄█▀▀⠀]],
  [[                               ]],
  [[                               ]],
  [[                               ]],
}

dashboard.section.buttons.val = {
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e ~/AppData/Local/nvim/init.lua <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
