local M = {}

M.setup = function()
	MiniDeps.add("nvim-mini/mini.pick")

	require("mini.pick").setup({
		mappings = {
			caret_left = "<a-h>",
			caret_right = "<a-l>",

			move_up = "<a-k>",
			move_down = "<a-j>",
		},
	})

	vim.keymap.set('n', "<leader>ff", function() MiniPick.builtin.files() end)
	vim.keymap.set('n', "<leader>fg", function() MiniPick.builtin.grep_live() end)
	vim.keymap.set('n', "<leader>fh", function() MiniPick.builtin.help() end)
end

return M
