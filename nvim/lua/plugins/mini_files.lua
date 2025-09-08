local M = {}

M.setup = function()
	MiniDeps.add("nvim-mini/mini.files")

	require("mini.files").setup({
		mappings = {
			close = 'q',
			go_in_plus = 'l',
			go_out_plus = 'h',
			reveal_cwd = '@',
			synchronize = '=',
			trim_left = '<',
			trim_right = '>',
		},
	})

	vim.keymap.set('n', "<leader>e", function() MiniFiles.open(vim.api.nvim_buf_get_name(0)) end)
end

return M
