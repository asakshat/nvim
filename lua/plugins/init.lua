vim.pack.add({
  'https://github.com/bluz71/vim-moonfly-colors',
  'https://github.com/nvim-tree/nvim-web-devicons',
  'https://github.com/nvim-lualine/lualine.nvim',
  'https://github.com/nvim-mini/mini.nvim',
  'https://github.com/christoomey/vim-tmux-navigator',
  'https://github.com/tpope/vim-fugitive',
  'https://github.com/romus204/tree-sitter-manager.nvim',
  'https://github.com/stevearc/conform.nvim',
})

require('plugins.colorscheme')
require('plugins.lualine')
require('plugins.mini')
require('plugins.pick')
require('plugins.treesitter')
require('plugins.conform')
