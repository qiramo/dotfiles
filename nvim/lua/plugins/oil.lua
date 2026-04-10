local M = {}

M.setup = function()
	MiniDeps.add("stevearc/oil.nvim")

	local oil = require("oil")

	oil.setup({
		default_file_explorer = true,
		view_options = {
			show_hidden = true,
		},
	})

	vim.keymap.set("n", "<leader>e", oil.open)
end

return M
