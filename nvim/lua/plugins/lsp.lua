return {
	"mason-org/mason.nvim",
	config = function()
		require("mason").setup({
		})

		vim.lsp.config("clangd", {
			cmd = { "clangd", "--all-scopes-completion=false", "--header-insertion=never" },
			filetypes = { "h", "c" },
			root_markers = { "compile_commands.json" },
		})

		vim.lsp.enable("clangd")

		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(event)
				opts = { buffer = event.buf }

				vim.keymap.set('i', "<a-/>", vim.lsp.buf.signature_help, opts)

				vim.keymap.set('n', "<leader>[", vim.diagnostic.goto_prev, opts)
				vim.keymap.set('n', "<leader>]", vim.diagnostic.goto_next, opts)

				vim.keymap.set('n', "<leader>lh", vim.lsp.buf.hover, opts)
				vim.keymap.set('n', "<leader>lr", vim.lsp.buf.rename, opts)
				vim.keymap.set('n', "<leader>lf", vim.lsp.buf.references, opts)
				vim.keymap.set('n', "<leader>li", vim.lsp.buf.implementation, opts)
				vim.keymap.set('n', "<leader>ld", vim.lsp.buf.definition, opts)
				vim.keymap.set('n', "<leader><cr>", vim.lsp.buf.code_action, opts)
			end,
		})
	end,
}
