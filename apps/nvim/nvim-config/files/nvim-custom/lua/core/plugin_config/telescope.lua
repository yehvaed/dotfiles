return {
	config = function()
		require("telescope").setup({
			pickers = {
				colorscheme = {
					enable_preview = true,
				},
			},
		})
	end,
	keys = {
		{
			"<leader>ff",
			"<cmd> Telescope find_files <cr>",
			desc = "Find files",
		},
		{
			"<leader>fw",
			"<cmd> Telescope live_grep <cr>",
			desc = "Search in files",
		},
		{
			"<leader>fk",
			"<cmd> Telescope keymaps <cr>",
			desc = "Find shortcut",
		},
		{
			"<leader>th",
			"<cmd> Telescope colorscheme <cr>",
			desc = "Switch theme",
		},
		{
			"<leader>fb",
			"<cmd> Telescope buffers <cr>",
			desc = "Select buffer",
		},
	},
	cmd = "Telescope",
}
