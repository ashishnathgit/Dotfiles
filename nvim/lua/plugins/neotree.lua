return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons",
		},

		config = function()
			require("neo-tree").setup({
				window = {
					width = 25, -- VS Code thin layout width
				},
				hide_root_node = true, -- Removes the bulky top directory name header
				retain_hidden_root_indent = false, -- Flushes text completely to the left

				filesystem = {
					follow_current_file = {
						enabled = true,
					},
					use_libuv_file_watcher = true,

					-- Space-saving components layout
					components = {
						-- Hides git icons next to file names to prevent clipping/wrapping
						git_status = function()
							return {}
						end,
					},
				},

				default_component_configs = {
					indent = {
						indent_size = 1, -- Reduces spacing gap per subdirectory level
						padding = 0, -- Removes extra spacing margins
					},
					icon = {
						folder_closed = "",
						folder_open = "",
						folder_empty = "  ",
					},
					name = {
						trailing_slash = false,
						use_git_status_colors = true, -- Keeps text colors for Git modifications instead of bulky icons
					},
				},
			})
			vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true })
		end,
	},
}
