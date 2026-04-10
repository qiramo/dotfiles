local M = {}

M.setup = function()
	vim.lsp.log.set_level("off")

	vim.diagnostic.config({
		virtual_text = {
			prefix = "●",
			spacing = 2,
		},
		float = {
			border = "rounded",
		},
		severity_sort = true,
	})

	MiniDeps.add("mason-org/mason.nvim")

	require("mason").setup({
	})

	vim.lsp.config("clangd", {
		cmd = {
			"clangd",
			"--clang-tidy",
			"--background-index",
			"--compile-commands-dir=.",
			"--header-insertion=never",
			"--completion-style=detailed",
			"--all-scopes-completion=false",
		},
		filetypes = { "h", "c" },
		root_markers = { "compile_commands.json" },
	})

	vim.lsp.enable("clangd")
end

return M
