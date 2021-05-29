function opt(scope, key, value)
  vim[scope][key] = value
  if scope ~= 'o' then
    vim['o'][key] = value
  end
end

vim.g.mapleader = ' '

opt('wo', 'number', true)                -- Show absolute line number
opt('wo', 'relativenumber', true)        -- Show line number relative to the cursor's current position
opt('wo', 'cursorline', true)            -- Highlight line on cursor's position
opt('wo', 'wrap', false)                 -- Display long lines as just one line
opt('wo', 'linebreak', true)             -- Wrap long lines at a character in 'breakat'
opt('wo', 'foldenable', false)           -- All folds are open
opt('o', 'showmode', false)              -- Hide current mode like -- INSERT --
opt('o', 'smartcase', true)              -- Ignore the case of normal letters
opt('o', 'ignorecase', true)             -- Ignore case when pattern contains lowercase
opt('o', 'mouse', 'a')                   -- Enable the mouse
opt('o', 'showmatch', true)              -- Briefly jump to the matching bracket
opt('o', 'matchtime', 0)                 -- Tenths of a second to show the matching paren
opt('o', 'showtabline', 2)               -- Always show tabs
opt('o', 'tabstop', 2)                   -- Insert 2 spaces for a tab
opt('o', 'background', 'dark')           -- Tells vim that the background is dark
opt('o', 'ttimeoutlen', 0)               -- Time in ms to wait for a key code sequence to complete
opt('o', 'termguicolors', true)          -- Check if terminal has 24-bit color support
opt('o', 'fileencoding', 'utf-8')        -- Encoding written to a file
opt('o', 'listchars', 'tab:│ ,trail:·')  -- Strings to use in 'list' mode and :list command
opt('o', 'list', true)                   -- Activate 'list' mode
opt('o', 'lazyredraw', true)             -- Screen will not be redrawn while executing macros and other commands
opt('o', 'hidden', true)                 -- Keep multiple buffers open
opt('o', 'conceallevel', 2)              -- How text with 'conceal' syntax is shown
opt('o', 'concealcursor', 'i')           -- Can conceal cursor in insert mode
opt('o', 'splitright', true)             -- Vertical splits will automatically be to the right
opt('o', 'splitbelow', true)             -- Horizontal splits will automatically be below
opt('o', 'inccommand', 'nosplit')        -- Show the effects of a command incrementally
opt('o', 'tagcase', 'smart')             -- How case is handled when searching the tags file
opt('o', 'updatetime', 300)              -- How many ms until the swap file will be written to disk
opt('o', 'undofile', true)               -- Saves undo history to an undo file
opt('o', 'swapfile', false)              -- Don't use swapfile for the current buffer
opt('o', 'backup', false)                -- Don't make a backup before overwriting a file
opt('o', 'writebackup', false)           -- Complete backup option
opt('o', 'fillchars', 'vert:│')          -- Characters to fill the statuslines and vertical separators
opt('o', 'breakindent', true)            -- Wrapped line will continue visually indented
opt('o', 'smartindent', true)            -- Smart autoindenting when starting a new line
opt('o', 'expandtab', true)              -- Converts tabs to spaces
opt('o', 'shiftwidth', 2)                -- Change the number of space characters inserted for indentation
opt('o', 'shiftround', true)             -- Round indent to multiple of 'shiftwidth'
opt('o', 'foldmethod', 'syntax')         -- Folding used for the current window
opt('o', 'scrolloff', 8)                 -- Minimal number of screen lines to keep above and below the cursor
opt('o', 'sidescrolloff', 15)            -- Minimal number of screen columns to keep to the left and right of the cursor
opt('o', 'sidescroll', 5)                -- Minimal number of columns to scroll horizontally
opt('o', 'clipboard', 'unnamedplus')     -- Copy paste between vim and everything else

-- Option settings for diff mode
opt('o', 'diffopt', vim.o.diffopt..',vertical')

-- Program to use for the :grep command (may need ripgrep installed on the machine to work)
opt('o', 'grepprg', 'rg --smart-case --color=never --no-heading -H -n --column')
