return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local cmp = require("cmp")

		cmp.setup({
			snippet = {
				expand = function(args)
					vim.snippet.expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<a-space>"] = cmp.mapping.complete(),
				["<a-j>"] = cmp.mapping.select_next_item(),
				["<a-k>"] = cmp.mapping.select_prev_item(),
				["<tab>"] = cmp.mapping.confirm({select = true}),
			}),
			sources = {
				{name = "nvim_lsp"},
				{name = "buffer"},
			},
		})
	end,
}
