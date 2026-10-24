-- Always show relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

--Show line under cursor
vim.opt.cursorline = true

vim.opt.expandtab = true --Convert tabs to space
vim.opt.shiftwidth = 3 --Amount to indent with << and >>
vim.opt.tabstop = 3 --How many spaces are shown per Tab
vim.opt.softtabstop = 4 --How many spaces are applied whenpressing Tab

vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true --Keep identation from previous line

--Enable break indent
vim.opt.breakindent = true

--Store undos between sessions
vim.opt.undofile = true

--Enable mouse mode, can be useful for resizing splits
vim.opt.mouse = "a"

--Don't show the mode, since it's already in the status line
vim.opt.showmode = false

--Case-insensitve searching UNLESS \C or one or more captial letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

--Keep signcolumn on by default
vim.opt.signcolumn = "yes"

--Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "→ ", trail = "·", nbsp = "␣" }

--Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 5

-------------------------------------------------------------------------------
-- VS CODE STYLE EXTENSIONS
-------------------------------------------------------------------------------
-- Completely disable code folding / line hiding features
vim.opt.foldenable = false

-- Set fold level to a high ceiling so text layers stay completely open
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99

-- Set fold calculation mode to manual to block external plugins from collapsing blocks
vim.opt.foldmethod = "manual"
