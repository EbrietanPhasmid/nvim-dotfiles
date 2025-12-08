vim.lsp.config.rust_analyzer = {
	filetypes = { "rust", "rs" },
	cmd = { "rust-analyzer" },
	workspace_required = true,
	root_markers = { "Cargo.toml" },
}
vim.lsp.enable("rust_analyzer")
