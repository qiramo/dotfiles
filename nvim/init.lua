vim.g.mapleader = " "

vim.g.loaded_netrw = true
vim.g.loaded_netrwPlugin = true

vim.cmd("filetype indent plugin off")

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(event)
		local cursor_position = vim.fn.getpos(".")

		vim.cmd("retab!")
		vim.cmd([[%s/\s\+$//e]])

		vim.fn.setpos(".", cursor_position)
	end,
})

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git", "clone", "--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", lazypath,
	})
end

vim.opt.runtimepath:prepend(lazypath)

require("lazy").setup({
	spec = "plugins",
	change_detection = {notify = false},
})

require("settings")
require("mappings")
