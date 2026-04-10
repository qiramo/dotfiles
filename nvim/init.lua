vim.g.mapleader = " "

require("settings")
require("mappings")
require("commands")

local package_path = vim.fn.stdpath("data") .. "/site/"
local mini_path = package_path .. "pack/deps/start/mini.deps"

if not vim.loop.fs_stat(mini_path) then
	vim.cmd('echo "Installing `mini.deps`" | redraw')

	vim.fn.system({
		"git", "clone", "--filter=blob:none",
		"https://github.com/nvim-mini/mini.deps", mini_path,
	})

	vim.cmd('packadd mini.deps | helptags ALL')
	vim.cmd('echo "Installed `mini.deps`" | redraw')
end

require("mini.deps").setup({ path = { package = package_path } })

-- UI
require("plugins.theme").setup()

-- Workflow
require("plugins.oil").setup()
require("plugins.fzf").setup()

-- Editor
require("plugins.lsp").setup()
require("plugins.cmp").setup()
