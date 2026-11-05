local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local highlight_group = augroup('YankHighlight', { clear = true })
autocmd('TextYankPost', {
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({ timeout = 170 })
    end,
    group = highlight_group,
})
vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('ts_start', { clear = true }),
  callback = function(args)
    -- pcall: silently skip filetypes with no parser installed
    if pcall(vim.treesitter.start, args.buf) then
      -- optional: treesitter-based folding
      vim.wo[0][0].foldmethod = 'expr'
      vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
      vim.wo[0][0].foldlevel = 99  -- start with everything unfolded
    end
  end,
})