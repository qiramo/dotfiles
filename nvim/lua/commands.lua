vim.api.nvim_create_autocmd("FileType", {
	pattern = "*",
	callback = function()
		vim.opt_local.tabstop = 4
		vim.opt_local.shiftwidth = 4
		vim.opt_local.softtabstop = 4
		vim.opt_local.expandtab = false
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "c", "lua", "markdown" },
	callback = function()
		vim.treesitter.start()
	end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		vim.cmd([[silent %s/\s\+$//e]])
	end,
})

vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({ timeout = 1000 })
	end,
})

vim.api.nvim_create_autocmd("CmdlineEnter", {
	callback = function()
		local type = vim.fn.getcmdtype()

		if type == '/' or type == '?' then
			vim.opt.hlsearch = true
		end
	end,
})

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(event)
		local opts = { buffer = event.buf }

		vim.keymap.set('i', "<a-/>", vim.lsp.buf.signature_help, opts)

		vim.keymap.set('n', "<leader>[", vim.diagnostic.goto_prev, opts)
		vim.keymap.set('n', "<leader>]", vim.diagnostic.goto_next, opts)

		vim.keymap.set('n', "<leader>lh", vim.lsp.buf.hover, opts)
		vim.keymap.set('n', "<leader>lr", vim.lsp.buf.rename, opts)
		vim.keymap.set('n', "<leader>lf", vim.lsp.buf.references, opts)
		vim.keymap.set('n', "<leader>li", vim.lsp.buf.implementation, opts)
		vim.keymap.set('n', "<leader>ld", vim.lsp.buf.definition, opts)
		vim.keymap.set('n', "<leader>lg", vim.lsp.buf.declaration, opts)
		vim.keymap.set('n', "<leader><cr>", vim.lsp.buf.code_action, opts)
	end,
})
