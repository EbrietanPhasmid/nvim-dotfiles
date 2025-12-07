require("conform").setup({

  format_on_save  = { 
      timeout_ms = 3000,
      async = false,
      quiet = false,
      lsp_format = "fallback",
  },

  formatters_by_ft = {
    lua = { "stylua" },
    rust = { "rustfmt" },
    go = { "gofumpt", "goimport" },
    bash = { "shfmt" },
    json = { "prettier" },
    typst = { "typstyle" },
    python = { "black" },
  },

  formatters = {
    injected = { options = {  ignore_errors = true } },
  }

})

