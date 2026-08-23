# My Neovim Configuration
<img width="1470" height="956" alt="Screenshot 2026-08-23 at 9 21 56 AM" src="https://github.com/user-attachments/assets/3e927a7a-6e20-47d2-8a73-b22255cacbae" />
A modern, minimal Neovim setup focused on productivity and performance. Built with Lua and lazy.nvim for fast startup.

## ✨ Features

- **Fast Startup** — Lazy loading plugins with lazy.nvim
- **Modern UI** — Catpuccin theme + Mini statusline + Alpha dashboard
- **Smart Navigation** — Oil file explorer + FzfLua + Project support
- **Code Intelligence** — LSP, Treesitter, autocompletion with Blink
- **Code Formatting** — Conform for consistent code style
- **Automatic Indentation** — Vim-sleuth + EditorConfig support

---

## 📦 Plugin Overview

### **Plugin Manager**
- **lazy.nvim** — Modern plugin manager with lazy loading

### **UI & Theming**
- **catpuccin.nvim** — Beautiful warm color scheme
- **mini.statusline** — Lightweight, minimal status line
- **alpha.nvim** — Dashboard with quick actions on startup
- **dressing.nvim** — Enhanced vim.ui (better prompts/menus)

### **File Navigation & Project Management**
- **oil.nvim** — File explorer (edit filesystem like a buffer)
- **fzf-lua** — Fuzzy finder (files, text, buffers)
- **project.nvim** — Project detection and switching

### **Syntax & Code Understanding**
- **treesitter.nvim** — Better syntax highlighting
- **treesitter-textobjects** — Code-aware text objects
- **editorconfig** — Share coding standards across projects
- **vim-sleuth** — Auto-detect indentation style

### **Language Server & Completion**
- **LSP (nvim-lspconfig)** — Language server support
- **mason.nvim** — Auto-install language servers
- **blink.nvim** — Fast, modern completion engine
- **conform.nvim** — Code formatting (prettier, black, etc.)

### **Quality of Life**
- **Basic options** — Custom settings (line numbers, tabs, keybinds)

---

## 🚀 Quick Start

### Installation
```bash
mkdir -p ~/.config/nvim
git clone <your-repo> ~/.config/nvim
cd ~/.config/nvim
nvim
```

Lazy.nvim will auto-install all plugins on first launch (~2 minutes).

### Key Keybindings
```
<Space>        Leader key
<Space>ff      Find files (FzfLua)
<Space>fg      Search text (FzfLua)
<Space>e       Toggle file explorer (Oil)
<Space>r       Run C++ file
gd             Go to definition (LSP)
K              Hover information (LSP)
<Space>ca      Code actions (LSP)
<Space>rn      Rename symbol (LSP)
<C-h/j/k/l>    Navigate splits
```

---

## 📁 Directory Structure

```
~/.config/nvim/
├── init.lua                 # Main entry point
├── lua/
│   └── plugins/             # Plugin configurations
│       ├── alpha.lua
│       ├── blink-cmp.lua
│       ├── colorscheme.lua
│       ├── conform.lua
│       ├── dressing.lua
│       ├── fzflua.lua
│       ├── lsp.lua
│       ├── ministatusline.lua
│       ├── oil.lua
│       ├── sleuth-vim.lua
│       └── tree-sitter.lua
└── README.md
```

---

## 🛠️ Configuration Highlights

**Language Servers** (auto-installed via Mason):
- Pyright (Python)
- Clangd (C/C++)
- Lua LS (Lua)
- And more on demand

**Code Formatters** (via Conform):
- Black (Python)
- Clang-format (C/C++)
- Prettier (Web)
- Stylua (Lua)

**Completion** (Blink.nvim):
- LSP-powered suggestions
- Snippet support
- Fast and responsive

---

## ⚙️ Customization

Edit `~/.config/nvim/lua/plugins/` files to customize:
- Theme colors in `colorscheme.lua`
- Keybindings in `init.lua`
- LSP servers in `lsp.lua`
- Format on save in `conform.lua`

---

## 📊 Performance

- **Startup time:** ~100-150ms
- **Plugin count:** 13 (all lazy-loaded)
- **Memory footprint:** Minimal

---

## 🤝 Requirements

- Neovim ≥ 0.9
- Git (for plugin management)
- Node.js (optional, for some LSPs)
- Ripgrep (optional, for FzfLua)

Install Ripgrep (recommended):
```bash
brew install ripgrep
```

---

## 📝 Notes

- Uses **Lua** instead of Vimscript for better performance
- All plugins configured with `config` functions for optimization
- LSP auto-starts when opening supported file types
- Conform formats on save (customize per filetype)

---

## 🐛 Troubleshooting

**Plugins not loading?**
```vim
:Lazy
```
Check plugin status and install missing dependencies.

**LSP not working?**
```vim
:Mason
```
Install language server for your filetype.

**Slow startup?**
Run `:Lazy profile` to identify slow plugins.

---

Made with ❤️ in Neovim
