require("code_runner").setup({
	filetype = {
		cpp = {
			"cd $dir &&",
			"g++ -std=c++17 $fileName -o $fileNameWithoutExt &&",
			"$dir/$fileNameWithoutExt",
		},
		rust = {
			"cd $dir &&",
			"if [ -e Cargo.toml ]; then",
			"  cargo run",
			"else",
			"  rustc $fileName && $dir/$fileNameWithoutExt",
			"fi",
		},
		go = "cd $dir && go run $fileName",
		haskell = {
			"cd $dir &&",
			"ghc -o $fileNameWithoutExt $fileName &&",
			"$dir/$fileNameWithoutExt",
		},
		typst = "cd $dir && typst compile $fileName",
	},
})

-- Keymap to run code
vim.keymap.set("n", "<leader>rr", ":RunCode<CR>", { noremap = true, silent = true, desc = "Run Code" })
vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", { noremap = true, silent = true, desc = "Run File" })
vim.keymap.set("n", "<leader>rp", ":RunProject<CR>", { noremap = true, silent = true, desc = "Run Project" })
vim.keymap.set("n", "<leader>rc", ":RunClose<CR>", { noremap = true, silent = true, desc = "Close Runner" })
