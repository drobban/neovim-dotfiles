vim.g.alchemist_iex_term_split = 'vsplit'
vim.g.alchemist_iex_term_size = 80
vim.keymap.set("n", "<leader>msi", vim.cmd.IEx)
vim.keymap.set('n', '<leader>ms=', function()
	local search = vim.fn.input("Mix > ")
	vim.cmd("Mix " .. search)
end)
