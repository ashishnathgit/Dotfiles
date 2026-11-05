# 🎨 My Dotfiles

Personal configuration files for a highly optimized development environment on macOS. All tools are configured from scratch with custom plugins and tweaks.

## 📦 What's Included

### **Terminal & Shell**
- **Alacritty** — GPU-accelerated terminal emulator
- **Zsh** — Oh My Zsh + Starship prompt
- **Tmux** — Terminal multiplexer for session management
- **Neofetch** — System info display in style

### **System Tools**
- **htop** — Enhanced system process monitor
- **gh** — GitHub CLI for quick repo management

### **Editor & IDE**
- **Nvim** — Neovim with full LSP, completion, and plugins

---

## 🚀 Quick Start

### Prerequisites
```bash
# Install Homebrew (if not already installed)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install required tools
brew install alacritty tmux neovim gh htop neofetch starship

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Installation

This repo *is* `~/.config`, so most tools (Alacritty, tmux, Neovim, Starship, git, gh) find their config automatically.

```bash
# Back up any existing config, then clone the repo into ~/.config
mv ~/.config ~/.config.bak 2>/dev/null
git clone https://github.com/ashishnathgit/Dotfiles.git ~/.config

# Zsh only reads ~/.zshrc, so link it
mv ~/.zshrc ~/.zshrc.bak 2>/dev/null   # the Oh My Zsh installer creates one
ln -s ~/.config/zsh/.zshrc ~/.zshrc
```

tmux installs TPM and its plugins automatically the first time it starts.

---

## 📁 Repository Structure

```
~/.config/
├── alacritty/           # Terminal emulator config
├── tmux/                # Terminal multiplexer config (plugins installed by TPM)
├── zsh/.zshrc           # Shell config (symlinked to ~/.zshrc)
├── starship.toml        # Prompt config
├── git/                 # Git config + global ignore
├── nvim/                # Neovim editor config
│   └── README.md        # Neovim setup guide
├── gh/                  # GitHub CLI config
├── htop/                # System monitor config
├── neofetch/            # System info config
├── .gitignore           # Git ignore rules
└── README.md            # This file
```

---

## 🛠️ Tool Overview

### **Alacritty** (`alacritty/`)
Modern GPU-accelerated terminal with:
- Catpuccin theme
- Custom keybindings
- Performance optimizations
- See `alacritty/Readme.md` for details

### **Tmux** (`tmux/`)
Terminal multiplexer for managing sessions:
- Custom keybindings
- Plugins (TPM - Tmux Plugin Manager)
- Status bar customization
- Window/pane management

### **Neovim** (`nvim/`)
Full-featured code editor with:
- LSP + Mason language servers
- Lazy.nvim plugin manager
- Blink completion engine
- 13+ plugins configured
- **See `nvim/README.md` for complete setup**

### **GitHub CLI** (`gh/`)
Command-line GitHub interface:
- Authentication config
- Custom aliases
- Workflow shortcuts

### **htop** (`htop/`)
Enhanced system process monitor:
- Custom column layout
- Color scheme
- Performance monitoring

### **Neofetch** (`neofetch/`)
Beautiful system information display:
- Custom ASCII art
- System stats formatting

---

## ⌨️ Key Workflows

### **Terminal + Tmux**
```bash
# Start new tmux session
tmux new-session -s dev

# Prefix is Ctrl-a
# Split pane horizontally
Ctrl-a %

# Split pane vertically
Ctrl-a "

# Switch between panes (also works across Neovim splits)
Ctrl-h / Ctrl-j / Ctrl-k / Ctrl-l

# Create new window
Ctrl-a c
```

### **Neovim + LSP**
```bash
# Open Neovim
nvim file.py

# LSP features
gd      # Go to definition
K       # Hover info
<Space>ca  # Code actions
<Space>rn  # Rename
```

### **Quick Git Operations**
```bash
# Create and push PR
gh pr create --fill

# Check CI status
gh run list

# View issues
gh issue list
```

---

## 🎯 My Development Setup

A typical workflow:
1. **Alacritty** launches the terminal
2. **Tmux** creates sessions for projects
3. **Neovim** is the editor within tmux
4. **gh** CLI manages GitHub tasks
5. **htop** monitors system resources

All seamlessly integrated with custom keybindings and themes.

---

## 🔧 Customization

Each tool can be customized independently:

- **Colors** — Modify theme files in each tool's config
- **Keybindings** — Edit respective config files
- **Plugins** — Install additional plugins as needed

---

## 📝 Individual Tool Guides

Detailed setup instructions for each tool:

| Tool | File | Setup |
|------|------|-------|
| Alacritty | `alacritty/Readme.md` | Terminal config |
| Neovim | `nvim/README.md` | Editor & LSP config |
| Neofetch | `neofetch/README.md` | System info display |

---

## 🚀 Performance Tips

- **Fast Terminal** — Alacritty is GPU-accelerated, launches instantly
- **Lazy Loading** — Nvim plugins load on-demand with lazy.nvim
- **Efficient Multiplexing** — Tmux allows running multiple projects in one session
- **Zero Bloat** — Minimal config, only essential plugins

---

## 📋 Requirements

- **macOS** (primarily configured for macOS)
- **Git** (for version control)
- **Neovim ≥ 0.9** (for Nvim)
- **Tmux ≥ 3.0** (for terminal multiplexing)
- **Homebrew** (for package management)

---

## 🔗 Useful Links

- [Alacritty](https://github.com/alacritty/alacritty)
- [Tmux](https://github.com/tmux/tmux)
- [Neovim](https://neovim.io/)
- [GitHub CLI](https://cli.github.com/)
- [Catpuccin Theme](https://catppuccin.com/)

---

## 💡 Pro Tips

1. **Sync dotfiles across machines:**
   ```bash
   git pull origin main
   ```

2. **Backup your current configs before installing:**
   ```bash
   mkdir ~/config-backup
   cp -r ~/.config ~/config-backup
   ```

3. **Track changes to dotfiles:**
   ```bash
   cd ~/.config
   git status
   git add -A && git commit -m "Update configs"
   ```

4. **View system info anytime:**
   ```bash
   neofetch
   ```

---

<!--## 📸 Screenshots

(Add screenshots of your setup, terminal theme, Neovim editor, etc.)

---
-->
## 🤝 Contributing

These are personal configs, but feel free to:
- Fork and adapt for your own setup
- Submit issues if you find bugs
- Suggest improvements

---

## 📄 License

These dotfiles are provided as-is. Feel free to use, modify, and share!

---

## 🙏 Thank You

Thanks for checking out my dotfiles! If you find them useful, please give it a ⭐

**Happy coding!** 🚀

---

## 📧 Contact

- GitHub: [@ashishnathgit](https://github.com/ashishnathgit)
- Issues: [Report a bug](https://github.com/ashishnathgit/dotfiles/issues)
