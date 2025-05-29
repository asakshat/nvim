-- OPTIONS
local set = vim.opt
vim.g.material_style = "deep ocean"
--line nums
set.relativenumber = true
set.number = true

-- indentation and tabs
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.smartindent = true
set.expandtab = true

-- search settings
set.ignorecase = true
set.smartcase = true

-- appearance
set.termguicolors = true
set.background = "dark"
set.signcolumn = "yes"

set.isfname:append("@-@") -- cursor line
set.cursorline = true

-- clipboard
-- vim.schedule(function()
-- 	vim.o.clipboard = "unnamedplus"
-- end)
-- backspace
set.backspace = "indent,eol,start"

-- split windows
set.splitbelow = true
set.splitright = true

-- dw/diw/ciw works on full-word
set.iskeyword:append("-")

-- keep cursor at least 8 rows from top/bot
set.scrolloff = 8
set.signcolumn = "yes"
set.isfname:append("@-@")

-- undo dir settings
set.swapfile = false
set.backup = false
set.undodir = os.getenv("HOME") .. "/.vim/undodir"
set.undofile = true

-- incremental search
set.incsearch = true
set.hlsearch = false

-- faster cursor hold
set.updatetime = 50
vim.g.have_nerd_font = true
vim.o.mouse = "a"
vim.o.confirm = true
