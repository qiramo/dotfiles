return {
	"saghen/blink.cmp",
	config = function()
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
	end,
}
