vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "Open the parent directory in Oil" })

vim.keymap.set("n", "gl", function()
	vim.diagnostic.open_float()
end, { desc = "Open Diagnostics in Float" })

vim.keymap.set("n", "<leader>cf", function()
	require("conform").format()
end, { desc = "Format current file" })

vim.keymap.set("n", "<leader>l", "<cmd>Lazy<CR>", { desc = "Open Lazy.nvim" })

vim.keymap.set("n", "<leader>m", "<cmd>Mason<CR>", { desc = "Open Lazy.nvim" })

vim.keymap.set("n", "<leader>r", ":!g++ % -o %:r && %:r<CR>", { noremap = true })

-- Jump to home
vim.keymap.set("n", "<leader>ch", ":cd ~<CR>", { noremap = true, silent = true })

-- Jump to Leetcode folder
vim.keymap.set("n", "<leader>lc", ":cd ~/Documents/GitHub/Leetcode<CR>", { noremap = true, silent = true })
