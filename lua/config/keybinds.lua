vim.g.mapleader = " "
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
local explorer_open = false

function ToggleExplorer()
  if explorer_open then
    vim.cmd('bd')  
    explorer_open = false
  else
    vim.cmd('Ex')  
    explorer_open = true
  end
end

vim.keymap.set("n", "<leader>E", ToggleExplorer)
vim.keymap.set("n", "J", "mzJ`z") -- Remap joining lines
vim.keymap.set("n", "<C-d>", "<C-d>zz") 
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv") 
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
