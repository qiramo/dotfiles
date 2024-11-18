return {
	"sainnhe/gruvbox-material",
	config = function()
		vim.g.gruvbox_material_enable_bold = true
		vim.g.gruvbox_material_enable_italic = true

		vim.g.gruvbox_material_background = "hard"
		vim.g.gruvbox_material_better_performance = true

		vim.cmd("colorscheme gruvbox-material")
	end,
}