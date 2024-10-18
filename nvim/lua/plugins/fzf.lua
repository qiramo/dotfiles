return {
	"ibhagwan/fzf-lua",
	config = function()
		require("fzf-lua").setup({
		})

		vim.keymap.set('n', "<leader>ff", "<cmd>FzfLua files<cr>")
		vim.keymap.set('n', "<leader>fg", "<cmd>FzfLua live_grep<cr>")
		vim.keymap.set('n', "<leader>fh", "<cmd>FzfLua helptags<cr>")
	end,
}
