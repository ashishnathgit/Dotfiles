return {
	{
		"Mofiqul/vscode.nvim",
		lazy = false, -- Make sure we load this during startup as your main colorscheme
		priority = 1000, -- Make sure to load this before all the other start plugins
		config = function()
			require("vscode").setup({
				-- Options: "dark" or "light" (Matches modern VS Code Dark Plus perfectly)
				style = "dark",

				-- Style adaptations mirroring standard IDE layouts
				transparent = false,
				clear_in_editor = true,
				italic_comments = true,

				-- UI element highlights to ensure seamless integration with your custom tabs/trees
				underline_links = true,
				disable_nvimtree_bg = true, -- Ensures your neo-tree panel background color stays unified

				-- Enables rich syntax color groups across your installed plugins ecosystem
				group_overrides = {
					-- Connects vibrant diagnostics colors seamlessly into your bufferline setup
					BufferLineIndicatorSelected = { fg = "#007ACC" },
				},
			})

			-- Setup must be executed before loading the theme environment
			require("vscode").load()
		end,
	},
}
