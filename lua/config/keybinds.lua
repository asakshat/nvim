local map = vim.keymap.set

-- files / session
map('n', '<leader>e', '<cmd>Lexplore<CR>', { silent = true, desc = 'File explorer' })
map('n', '<leader>o', '<cmd>update<CR><cmd>source<CR>', { desc = 'Save and source' })
map('n', '<leader>w', '<cmd>write<CR>', { desc = 'Write' })
map('n', '<leader>qq', '<cmd>quit<CR>', { desc = 'Quit' })
map('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true, desc = 'chmod +x' })

-- editing
map('v', 'J', ":m '>+1<CR>gv=gv")
map('v', 'K', ":m '<-2<CR>gv=gv")
map('n', '<Esc>', '<cmd>nohlsearch<CR>')
map('i', '<C-c>', '<Esc>')
map('n', 'Q', '<nop>')
map('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'Replace word' })

-- scrolling / search
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')

-- clipboard / registers
map({ 'n', 'v' }, '<leader>y', '"+y', { desc = 'Yank to system clipboard' })
map('n', '<leader>Y', '"+Y', { desc = 'Yank line to system clipboard' })
map({ 'n', 'v' }, '<leader>d', '"_d', { desc = 'Delete to black hole' })
map('x', '<leader>p', [["_dP]], { desc = 'Paste without overwriting register' })

-- location list
map('n', '<leader>k', '<cmd>lnext<CR>zz')
map('n', '<leader>j', '<cmd>lprev<CR>zz')

-- splits / tmux
map('n', '<C-h>', '<cmd>TmuxNavigateLeft<CR>')
map('n', '<C-j>', '<cmd>TmuxNavigateDown<CR>')
map('n', '<C-k>', '<cmd>TmuxNavigateUp<CR>')
map('n', '<C-l>', '<cmd>TmuxNavigateRight<CR>')
map('n', '<leader>=', '<C-w>=', { desc = 'Equalize splits' })

-- git
map('n', '<leader>gs', '<cmd>Git<CR>', { desc = 'Fugitive status' })