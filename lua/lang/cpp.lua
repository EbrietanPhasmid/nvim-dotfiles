vim.lsp.config.clangd = {
  cmd = {
    "clangd",
    "--clang-tidy",
    "--completion-style=detailed"
  },
  filetypes = { 'c', 'cpp', 'cc'},
  root_markers = {
    'CMakeLists.txt',
    '.clangd',
    '.clang-tidy',
    'compile_commands.json',
    'compile_flags.txt',
    '.git',
  },
}
vim.lsp.enable("clangd")
