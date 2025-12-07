-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Load core configurations
require("core")

-- Setup plugins
require("plugins")

-- Colorscheme
vim.cmd("colorscheme vague")

-- Load plugin configurations after they're loaded
vim.schedule(function()
	require("plugins.config")
end)
