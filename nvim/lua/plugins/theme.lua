local M = {}

M.setup = function()
	MiniDeps.add("ellisonleao/gruvbox.nvim")

	require("gruvbox").setup({
		contrast = "hard",
	})

	vim.cmd("colorscheme gruvbox")
end

return M
