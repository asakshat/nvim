local pick = require('mini.pick')
pick.setup()
vim.ui.select = pick.ui_select
require('mini.extra').setup()

local map = vim.keymap.set
map('n', '<leader>ff', '<cmd>Pick files<cr>',     { desc = 'Files' })
map('n', '<leader>fg', '<cmd>Pick grep_live<cr>', { desc = 'Live grep' })
map('n', '<leader>fb', '<cmd>Pick buffers<cr>',   { desc = 'Buffers' })
map('n', '<leader>fh', '<cmd>Pick help<cr>',      { desc = 'Help' })
map('n', '<leader>fr', '<cmd>Pick resume<cr>',    { desc = 'Resume picker' })
map('n', '<leader>fo', function() MiniExtra.pickers.oldfiles() end,   { desc = 'Recent files' })
map('n', '<leader>fd', function() MiniExtra.pickers.diagnostic() end, { desc = 'Diagnostics' })
map('n', '<leader>fs', function() MiniExtra.pickers.lsp({ scope = 'document_symbol' }) end, { desc = 'Document symbols' })