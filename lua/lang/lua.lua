vim.lsp.config.lua_ls = {
  cmd = {
    "lua_ls"
  },
  filetypes = { 'lua' },
}
vim.lsp.enable("lua_ls")
