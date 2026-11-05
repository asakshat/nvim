local set = vim.opt;
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

set.relativenumber = true
set.number = true
-- indentation and tabs
set.tabstop = 4
set.shiftwidth = 4
set.autoindent = true
set.expandtab = true
-- search settings
set.ignorecase = true
set.smartcase = true
-- appearance
set.termguicolors = true
set.background = "dark"
set.signcolumn = "yes"
-- cursor line
set.cursorline = true
vim.opt.clipboard = "unnamedplus"
-- backspace
set.backspace = "indent,eol,start"
-- split windows
set.splitbelow = true
set.splitright = true
-- dw/diw/ciw works on full-word
set.iskeyword:append("-")

-- keep cursor at least 8 rows from top/bot
set.scrolloff = 8

-- undo dir settings
set.swapfile = false
set.backup = false
set.autoread = true
set.undodir = os.getenv("HOME") .. "/.vim/undodir"
set.undofile = true
set.laststatus = 3
-- incremental search
set.incsearch = true

-- faster cursor hold
set.updatetime = 50