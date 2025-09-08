local M = {}

M.setup = function()
	MiniDeps.add("nvim-treesitter/nvim-treesitter")

	require("nvim-treesitter.configs").setup({
		ensure_installed = { "c", "lua", "markdown" },
		auto_install = false,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
	})
end

return M
