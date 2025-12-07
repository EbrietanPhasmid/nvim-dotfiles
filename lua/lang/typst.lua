vim.lsp.config.tinymist = {
  cmd = {"tinymist"},
  filetypes = { "typst", "typ" },
  root_markers = { ".git", vim.uv.cwd() }
}
vim.lsp.enable("tinymist")
