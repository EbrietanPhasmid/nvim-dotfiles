local lspconfig = vim.lsp.config
local cmp_nvim_lsp = require('cmp_nvim_lsp')

-- Global LSP configuration
local capabilities = cmp_nvim_lsp.default_capabilities()

-- Keymaps for LSP
local on_attach = function(client, bufnr)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  
  -- Documentation on Shift+K
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  
  -- Go to definition/declaration
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  
  -- Code actions
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
  
  -- Rename
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
  
  -- Formatting
  vim.keymap.set('n', '<leader>f', function()
    vim.lsp.buf.format({ async = true })
  end, bufopts)
  
  -- Signature help
  vim.keymap.set('n', '<leader>k', vim.lsp.buf.signature_help, bufopts)
end

  require('lang.cpp')
  require('lang.rust')
  require('lang.go')
  require('lang.typst')
