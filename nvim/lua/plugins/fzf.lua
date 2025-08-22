return {
	"ibhagwan/fzf-lua",
	config = function()
		local fzf = require("fzf-lua")

		fzf.setup({
			keymap = {
				fzf = {
					["ctrl-q"] = "select-all+accept",
				},
			},
		})

		vim.keymap.set('n', "<leader>ff", fzf.files)
		vim.keymap.set('n', "<leader>fg", fzf.live_grep)
		vim.keymap.set('n', "<leader>fh", fzf.helptags)
		vim.keymap.set('n', "<leader>fd", fzf.diagnostics_workspace)
	end,
}
