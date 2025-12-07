local opt = vim.opt

-- Basic options
opt.number = true
opt.relativenumber = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.wrap = false
opt.ignorecase = true
opt.smartcase = true
opt.cursorline = true
opt.termguicolors = true
opt.signcolumn = "yes"
opt.scrolloff = 8
opt.updatetime = 50
opt.mouse = "a"

-- Enable clipboard
opt.clipboard = "unnamedplus"

-- Better splitting
opt.splitright = true
opt.splitbelow = true

-- Persistent undo
opt.undofile = true
opt.undodir = vim.fn.stdpath("data") .. "/undo"
