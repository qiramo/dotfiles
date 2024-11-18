vim.keymap.set('n', "<leader>e", vim.cmd.Explore)
vim.keymap.set('n', "<esc>", vim.cmd.nohlsearch)

vim.keymap.set('n', "<tab>", "<c-w>")
vim.keymap.set('n', "<tab><tab>", "<c-w>v")

vim.keymap.set({'i', 'c', 't'}, "<a-k>", "<up>")
vim.keymap.set({'i', 'c', 't'}, "<a-j>", "<down>")
vim.keymap.set({'i', 'c', 't'}, "<a-h>", "<left>")
vim.keymap.set({'i', 'c', 't'}, "<a-l>", "<right>")

vim.keymap.set({'n', 'v'}, "<a-j>", "<c-d>zz")
vim.keymap.set({'n', 'v'}, "<a-k>", "<c-u>zz")

vim.keymap.set({'n', 'v'}, "p", "p`[v`]")
vim.keymap.set({'n', 'v'}, "P", "P`[v`]")

vim.keymap.set('v', "<", "<gv")
vim.keymap.set('v', ">", ">gv")

vim.keymap.set('i', "(", "()<left>")
vim.keymap.set('i', "[", "[]<left>")
vim.keymap.set('i', "{", "{}<left>")
