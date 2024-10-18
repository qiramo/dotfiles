vim.keymap.set('i', "<a-space>", "<c-n>")

vim.keymap.set('i', "<a-k>", function()
	if vim.fn.pumvisible() ~= 0 then return "<c-p>"
	else return "<up>" end
end, {expr = true})

vim.keymap.set('i', "<a-j>", function()
	if vim.fn.pumvisible() ~= 0 then return "<c-n>"
	else return "<down>" end
end, {expr = true})

vim.keymap.set({'c', 't'}, "<a-k>", "<up>")
vim.keymap.set({'c', 't'}, "<a-j>", "<down>")
vim.keymap.set({'i', 'c', 't'}, "<a-h>", "<left>")
vim.keymap.set({'i', 'c', 't'}, "<a-l>", "<right>")

vim.keymap.set({'n', 'v'}, "<a-j>", "<c-d>zz")
vim.keymap.set({'n', 'v'}, "<a-k>", "<c-u>zz")

vim.keymap.set('v', "<", "<gv")
vim.keymap.set('v', ">", ">gv")

vim.keymap.set('i', "(", "()<left>")
vim.keymap.set('i', "[", "[]<left>")
vim.keymap.set('i', "{", "{}<left>")
