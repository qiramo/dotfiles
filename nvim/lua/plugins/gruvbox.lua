local M = {}

M.setup = function()
	MiniDeps.add("sainnhe/gruvbox-material")

	vim.g.gruvbox_material_background = "hard"
	vim.g.gruvbox_material_better_performance = true

	vim.g.gruvbox_material_enable_bold = true
	vim.g.gruvbox_material_enable_italic = true

	vim.cmd.colorscheme("gruvbox-material")
end

return M
