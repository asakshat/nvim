require('mini.ai').setup({ n_lines = 500 })

-- Surroundings:
-- - saiw) : [S]urround [A]dd [I]nner [W]ord [)]Paren
-- - sd'   : [S]urround [D]elete [']quotes
-- - sr)'  : [S]urround [R]eplace [)] [']
require('mini.surround').setup()
require('mini.pairs').setup()

-- notifications
local notify = require('mini.notify')
notify.setup()
vim.notify = notify.make_notify()