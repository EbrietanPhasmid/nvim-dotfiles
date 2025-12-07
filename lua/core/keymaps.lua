local keymap = vim.keymap

-- Leader key
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- remove page up / down
keymap.set("n", "<S-Up>", "<Nop>")
keymap.set("n", "<S-Down>", "<Nop>")

-- Clear search highlight
keymap.set("n", "<Esc>", ":nohlsearch<CR>")
