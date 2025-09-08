local M = {}

M.setup = function()
	MiniDeps.add("saghen/blink.cmp")

	require("blink.cmp").setup({
		fuzzy = {
			implementation = "lua",
		},
		keymap = {
			["<cr>"] = { "accept", "fallback" },
			["<a-k>"] = { "select_prev", "fallback" },
			["<a-j>"] = { "select_next", "fallback" },
		},
		completion = {
			list = {
				selection = {
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
