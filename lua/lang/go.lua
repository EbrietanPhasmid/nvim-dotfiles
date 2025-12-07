vim.lsp.config.gopls = {
  cmd = { "gopls" },
  filetypes = { "go" },
  root_markers = { ".git", "go.mod" },
  settings = {
    gopls= {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
      ["ui.inlayhint.hints"] = {
        compositeLiteralFields = true,
        constantValues = true,
        parameterNames = true,
      }
    }
  }
}
vim.lsp.enable("gopls")
