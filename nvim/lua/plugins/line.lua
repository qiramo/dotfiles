local M = {}

M.setup = function()
	MiniDeps.add("nvim-lualine/lualine.nvim")

	local colors = {
		normal  = "#5f4b91",
		insert  = "#4fa3a1",
		visual  = "#cf6f45",
		replace = "#c24f58",

		text  = "#252a34",
		block = "#a79277",
	}

	local theme = {
		normal = {
			a = { bg = colors.normal },
			b = { fg = colors.text, bg = colors.block, gui = "bold" },
			c = { fg = colors.text, bg = nil, gui = "bold" },
			x = { fg = colors.text, bg = nil, gui = "bold" },
			y = { fg = colors.text, bg = colors.block, gui = "bold" },
			z = { bg = colors.normal },
		},

		insert = {
			a = { bg = colors.insert },
			z = { bg = colors.insert },
		},

		visual = {
			a = { bg = colors.visual },
			z = { bg = colors.visual },
		},

		replace = {
			a = { bg = colors.replace },
			z = { bg = colors.replace },
		},
	}

	require("lualine").setup({
		options = {
			theme = theme,
			component_separators = "",
			section_separators = { left = "", right = "" },
			globalstatus = true,
		},
		sections = {
			lualine_a = {
				{
					function()
						return "          "
					end,
				},
			},
			lualine_b = {
				{ "filename" },
			},
			lualine_c = {
				{ "diagnostics", sources = { "nvim_diagnostic" } },
			},
			lualine_x = {
				{ "diff" },
			},
			lualine_y = {
				{ "branch", icon = "" },
			},
			lualine_z = {
				{
					function()
						return "          "
					end,
				},
			},
		},
	})
end

return M

