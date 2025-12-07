require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"c",
		"cpp",
		"rust",
		"go",
		"haskell",
		"lua",
		"vim",
		"vimdoc",
		"bash",
		"markdown",
	},
	highlight = { enable = true },
	indent = { enable = true },
})
