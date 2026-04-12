local M = {}

M.setup = function()
	MiniDeps.add("saghen/blink.cmp")

	require("blink.cmp").setup({
		fuzzy = {
			implementation = "lua",
		},
		keymap = {
			["<cr>"] = { "accept", "fallback" },
			["<a-k>"] = {
				function(cmp)
					if cmp.is_visible() then return cmp.select_prev() end
					vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<up>", true, true, true), "n", true)
				end
			},
			["<a-j>"] = {
				function(cmp)
					if cmp.is_visible() then return cmp.select_next() end
					vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<down>", true, true, true), "n", true)
				end
			},
		},
		completion = {
			list = {
				selection = {
					preselect = false,
					auto_insert = false,
				},
			},
		},
		sources = {
			default = {
				"lsp",
				"path",
				"buffer",
			},
		},
	})
end

return M
