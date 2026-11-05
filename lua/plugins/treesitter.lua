require('tree-sitter-manager').setup({
  auto_install = true,
})

vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('ts_start', { clear = true }),
  callback = function(args)
    pcall(vim.treesitter.start, args.buf)
  end,
})