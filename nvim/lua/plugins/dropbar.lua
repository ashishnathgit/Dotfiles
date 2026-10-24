return {
	"Bekaboo/dropbar.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"nvim-telescope/telescope-fzf-native.nvim",
	},
	config = function()
		-- Optional: basic setup call if you want to customize it later
		require("dropbar").setup()
	end,
}
