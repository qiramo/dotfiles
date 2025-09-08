vim.g.mapleader = " "

vim.cmd("filetype plugin indent off")

require("settings")
require("mappings")

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
require("plugins.gruvbox").setup()
require("plugins.treesitter").setup()

-- Workflow
require("plugins.mini_files").setup()
require("plugins.mini_pick").setup()

-- Editor
require("plugins.blink").setup()
require("plugins.lsp").setup()
