return require("lazy").setup({

	-- notifications
	"rcarriga/nvim-notify",

	-- LSP and completion
	"neovim/nvim-lspconfig",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",

	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},

	-- Code runner
	{
		"CRAG666/code_runner.nvim",
		dependencies = "nvim-lua/plenary.nvim",
	},

	-- Tree
	"nvim-tree/nvim-tree.lua",

	-- Testing
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
	},

	-- Formatter
	{
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
	},

	-- Typst Preview
	{
		"chomosuke/typst-preview.nvim",
		lazy = false,
		version = "1.*",
	},

	-- Colorscheme
	{
		"vague-theme/vague.nvim",
		lazy = false,
		priority = 1000,
	},

	-- Git
	"tpope/vim-fugitive",

	-- Comments
	"folke/todo-comments.nvim",

	-- Haskell
	{
		"mrcjkb/haskell-tools.nvim",
		version = "^6", -- Recommended
		lazy = false, -- This plugin is already lazy
	},

	-- Mason for LSP management
	"mason-org/mason.nvim",
	"mason-org/mason-lspconfig.nvim",
	{
		"jay-babu/mason-null-ls.nvim",
		dependencies = "jose-elias-alvarez/null-ls.nvim",
	},
}, {
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				"matchit",
				"matchparen",
				"netrwPlugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
})
