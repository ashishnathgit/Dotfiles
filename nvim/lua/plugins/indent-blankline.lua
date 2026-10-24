return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {
		indent = {
			char = "│", -- Clean vertical line character
		},
		scope = {
			enabled = true,
			show_start = true, -- Highlights where the current block starts
			show_end = false,
			highlight = { "Function", "Label" }, -- Uses your theme's vibrant code colors for the active code path
		},
	},
	config = function(_, opts)
		-- Custom highlight setups to dim inactive lines down to a clean VS Code gray/dark style
		vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
		vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
		vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })

		require("ibl").setup(opts)
	end,
}
