return {
		config = function()
			-- you can configure Hop the way you like here; see :h hop-config
			require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
		end,
    keys = {
      { "<leader>j", "<cmd> HopWord <cr>", desc = "Easy jump to first character in word" }
    }
}
