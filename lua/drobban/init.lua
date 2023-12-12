require("drobban.remap")
vim.api.nvim_set_option("clipboard","unnamedplus")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"
vim.opt.numberwidth = 5

-- Close IEx term on end...
vim.g.ConqueTerm_CloseOnEnd = 1
