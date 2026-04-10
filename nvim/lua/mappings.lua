vim.keymap.set({ 'n', 'v' }, "<a-j>", "<c-d>zz")
vim.keymap.set({ 'n', 'v' }, "<a-k>", "<c-u>zz")

vim.keymap.set({ 'i', 'c', 't' }, "<a-h>", "<left>")
vim.keymap.set({ 'i', 'c', 't' }, "<a-j>", "<down>")
vim.keymap.set({ 'i', 'c', 't' }, "<a-k>", "<up>")
vim.keymap.set({ 'i', 'c', 't' }, "<a-l>", "<right>")

vim.keymap.set('v', ">", ">gv")
vim.keymap.set('v', "<", "<gv")
vim.keymap.set('v', "v", "<c-v>")

vim.keymap.set('n', "<tab><tab>", "<c-w>v")
vim.keymap.set('n', "<tab>h", "<c-w>h")
vim.keymap.set('n', "<tab>j", "<c-w>j")
vim.keymap.set('n', "<tab>k", "<c-w>k")
vim.keymap.set('n', "<tab>l", "<c-w>l")

vim.keymap.set('n', "qo", "<cmd>copen<cr>")
vim.keymap.set('n', "qq", "<cmd>cclose<cr>")
vim.keymap.set('n', "qj", "<cmd>cnext<cr>")
vim.keymap.set('n', "qk", "<cmd>cprev<cr>")

vim.keymap.set('i', "[", "[]<left>")
vim.keymap.set('i', "{", "{}<left>")
vim.keymap.set('i', "(", "()<left>")

vim.keymap.set({ 'c', 'n' }, "<esc>", function()
	vim.opt.hlsearch = false
	return "<esc>"
end, { expr = true, silent = true })
