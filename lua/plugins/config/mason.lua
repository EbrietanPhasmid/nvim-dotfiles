require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"rust_analyzer",
		"lua_ls",
		"zls",
		"clangd",
		"gopls",
		"tinymist",
	},
})
require("mason-null-ls").setup({
	ensure_installed = {
		"typstyle",
		"shfmt",
		"prettier",
		"stylua",
		"goimports",
		"gofumpt",
		"ormolu",
		"clangformat",
		"rustfmt",
		"black",
	},
})
