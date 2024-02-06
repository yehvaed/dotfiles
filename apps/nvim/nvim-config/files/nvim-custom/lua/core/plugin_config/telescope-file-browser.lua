return {
	config = function()
		require("telescope").setup({
			extensions = {
				file_browser = vim.tbl_extend("force", require("telescope.themes").get_ivy(), {
					sorting_strategy = "ascending",
					layout_config = {
						height = function(_, _, max_lines)
							return max_lines
						end,
					},
				}),
			},
		})
	end,
	keys = {
		{
			"<leader>e",
			"<cmd> Telescope file_browser path=%:p:h select_buffer=true <cr>",
			desc = "File Browser",
		},
	},
}
