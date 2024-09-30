local servers = {
	clangd = {
		name = "clangd",
		cmd = {"clangd", "--header-insertion=never", "--all-scopes-completion=false"},
		root_dir = vim.fn.getcwd(),
		filetypes = {"c", "h"},
	},
}

for name, config in pairs(servers) do
	if vim.fn.executable(servers[name].cmd[1]) == 1 then
		vim.api.nvim_create_autocmd("FileType", {
			pattern = config.filetypes,
			callback = function (event)
				vim.lsp.start(servers[name], {bufnr = event.buf})
			end,
		})
	end
end

vim.lsp.log.set_level(vim.log.levels.OFF)

vim.api.nvim_create_autocmd("LspAttach", {
	pattern = "*",
	callback = function(event)
		local buffer = vim.lsp.buf
		local options = {buffer = event.buf}

		vim.keymap.set('n', "<leader>]", function() vim.diagnostic.goto_next() end, options)
		vim.keymap.set('n', "<leader>[", function() vim.diagnostic.goto_prev() end, options)

		vim.keymap.set('i', "<a-/>", function() buffer.signature_help() end, options)

		vim.keymap.set('n', "<leader>h", function() buffer.hover() end, options)
		vim.keymap.set('n', "<leader>d", function() buffer.definition() end, options)
		vim.keymap.set('n', "<leader>i", function() buffer.implementation() end, options)
		vim.keymap.set('n', "<leader>rr", function() buffer.rename() end, options)
		vim.keymap.set('n', "<leader>rf", function() buffer.references() end, options)
		vim.keymap.set('n', "<leader><cr>", function() buffer.code_action() end, options)
	end,
})
