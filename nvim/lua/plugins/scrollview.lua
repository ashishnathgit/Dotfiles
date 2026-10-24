return {
	"dstein64/nvim-scrollview",
	config = function()
		require("scrollview").setup({
			excluded_filetypes = { "neo-tree" },
			current_only = true,
			symbols = { error = "  ", warn = "  " }, -- Shows diagnostic markers in the scrollbar tracking track
		})
	end,
}
