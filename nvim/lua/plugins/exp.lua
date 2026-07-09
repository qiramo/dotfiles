local M = {}

M.setup = function()
	MiniDeps.add({
		source = "nvim-tree/nvim-tree.lua",
		depends = { "nvim-tree/nvim-web-devicons" },
	})

	require("nvim-tree").setup({
	})

	local api = require("nvim-tree.api")

	vim.keymap.set('n', "<leader>e", function() api.tree.open({ find_file = true }) end)
end

return M
