return {
	-- editor
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		dependencies = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ "williamboman/mason.nvim" }, -- Optional
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional
			{ "nvimtools/none-ls.nvim" },
			{ "jay-babu/mason-null-ls.nvim" },

			-- Autocompletion
			{
				"hrsh7th/nvim-cmp",
				dependencies = { -- icons
					{ "onsails/lspkind.nvim" },
				},
			}, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "hrsh7th/cmp-buffer" }, -- Optional
			{ "hrsh7th/cmp-path" }, -- Optional
			{ "saadparwaiz1/cmp_luasnip" }, -- Optional
			{ "hrsh7th/cmp-nvim-lua" }, -- Optional

			-- Snippets
			{ "L3MON4D3/LuaSnip" }, -- Required
			{ "rafamadriz/friendly-snippets" }, -- Optional
		},
	},
	{ "VidocqH/lsp-lens.nvim", lazy = false },
	{ "nvim-treesitter/nvim-treesitter" },
	{ "lewis6991/gitsigns.nvim" },
	{ "akinsho/git-conflict.nvim", version = "*", config = true },
	{
		"numToStr/Comment.nvim",
		lazy = false,
	},
	{
		"phaazon/hop.nvim",
	},

	-- ui
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},

	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 500
      require("which-key").setup()
		end,
	},

	-- themes
	{
		"EdenEast/nightfox.nvim",
		priority = 1000,
		lazy = false,
	},
	{
		"Shatur/neovim-ayu",
		priority = 1000,
		lazy = false,
	},
	{
		"yashguptaz/calvera-dark.nvim",
		priority = 1000,
		lazy = false,
	},
	{ "navarasu/onedark.nvim", priority = 1000, lazy = false },
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
		"oxfist/night-owl.nvim",
		priority = 1000,
		lazy = false,
		config = function()
			-- load the colorscheme here
			-- vim.cmd.colorscheme("night-owl")
		end,
	},
	{
		"Yazeed1s/minimal.nvim",
		priority = 1000,
		lazy = false,
		config = function()
			-- load the colorscheme here
			vim.cmd.colorscheme("minimal")
		end,
	},

	-- files finder etc
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	},

	-- tools
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim", -- required
			"sindrets/diffview.nvim", -- optional - Diff integration

			-- Only one of these is needed, not both.
			"nvim-telescope/telescope.nvim", -- optional
		},
		config = true,
	},
	{
		"nvim-neorg/neorg",
	},
	{ "milkias17/reloader.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
}
