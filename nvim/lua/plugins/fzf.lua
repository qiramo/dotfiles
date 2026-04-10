local M = {}

M.setup = function()
	MiniDeps.add("ibhagwan/fzf-lua")

	local fzf = require("fzf-lua")

	fzf.setup({
	})

	vim.keymap.set("n", "<leader>ff", fzf.files)
	vim.keymap.set("n", "<leader>fg", fzf.live_grep)
	vim.keymap.set("n", "<leader>fh", fzf.help_tags)
end

return M
