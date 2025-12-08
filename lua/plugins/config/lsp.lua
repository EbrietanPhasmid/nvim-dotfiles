local lspconfig = vim.lsp.config
local cmp_nvim_lsp = require("cmp_nvim_lsp")

-- Global LSP configuration
local capabilities = cmp_nvim_lsp.default_capabilities()

-- Keymaps for LSP
local on_attach = function(client, bufnr)
	local bufopts = { noremap = true, silent = true, buffer = bufnr }

	-- Documentation on Shift+K
	vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)

	-- Go to definition/declaration
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
	vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)

	-- Code actions
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)

	-- Rename
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)

	-- Formatting
	vim.keymap.set("n", "<leader>f", function()
		vim.lsp.buf.format({ async = true })
	end, bufopts)

	-- Signature help
	vim.keymap.set("n", "<leader>k", vim.lsp.buf.signature_help, bufopts)
end

vim.diagnostic.config({
	-- 1. Show virtual text (errors/warnings next to the code)
	virtual_text = {
		-- Set 'true' to enable or use a table to customize
		-- By default, it will show the full message.
		-- Setting a table allows for more control, e.g., only showing
		-- the error/warning text without the diagnostic prefix.
		-- Customize 'source' to 'false' if you don't want the LSP server name
		-- like '[rust_analyzer]' or '[clangd]' to appear.
		source = false,
		severity = { min = vim.diagnostic.severity.HINT }, -- Show diagnostics from HINT level and up
	},

	-- 2. Configure signs (symbols in the sign column)
	signs = true, -- Enable signs in the sign column

	-- 3. Update throttle (in milliseconds)
	update_in_insert = false, -- Do not update diagnostics while in INSERT mode

	-- 4. Set the severity to filter (default is OK)
	-- severity_sort = true,
})

vim.fn.sign_define("DiagnosticSignError", { text = "●", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = "", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })
vim.fn.sign_define("DiagnosticSignInfo", { text = "", texthl = "DiagnosticSignInfo" })

require("lang.cpp")
require("lang.rust")
require("lang.go")
require("lang.typst")
