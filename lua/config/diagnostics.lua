vim.keymap.set("n", "<leader>qf", function()
	vim.diagnostic.setqflist()
	vim.cmd("copen")
end, { silent = true })