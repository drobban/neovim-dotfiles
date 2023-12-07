vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Explor)
vim.keymap.set("n", "<leader>fs", vim.cmd.w)
vim.keymap.set("n", "<leader>qq", vim.cmd.q)
vim.keymap.set("n", "<leader>wh", vim.cmd.vsplit)
vim.keymap.set("n", "<leader>wv", vim.cmd.split)
vim.keymap.set("n", "<leader>wd", vim.cmd.close)
-- vim.keymap.set("n", "<leader>bd", vim.cmd.bd)
-- vim.keymap.set("n", "<leader>bd", ':bp<bar>sp<bar>bn<bar>bd<CR>')
vim.keymap.set("n", "<leader>bd", ':bp|sp|bn|bd<CR>')

-- Move text chunks in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor where it while using J
vim.keymap.set("n", "J", "mzJ`z")

-- gets rid of the enoying paste replacement - when pasting over visual
vim.keymap.set("x", "p", "\"_dP")

-- Window jump mapping
for i = 1, 6 do
  local lhs = "<leader>" .. i
  local rhs = i .. "<c-w>w"
  vim.keymap.set("n", lhs, rhs, { desc = "Move to window " .. i })
end
