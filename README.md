# 🎨 My Dotfiles

Personal configuration files for a highly optimized development environment on macOS. All tools are configured from scratch with custom plugins and tweaks.

## 📦 What's Included

### **Terminal & Shell**
- **Alacritty** — GPU-accelerated terminal emulator
- **iTerm2** — Alternative macOS terminal with advanced features
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
brew install alacritty tmux neovim tmux gh htop neofetch
```

### Installation

```bash
# Clone the dotfiles repo
git clone https://github.com/yourusername/dotfiles ~/.dotfiles
cd ~/.dotfiles

# Create symlinks for configuration files
# (Or copy individual configs as needed)
ln -s ~/.dotfiles/alacritty ~/.config/alacritty
ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/tmux ~/.tmux.conf
ln -s ~/.dotfiles/iterm2 ~/.iterm2  # Optional for macOS
```

**Note:** Each tool has its own `README.md` with detailed setup instructions.

---

## 📁 Repository Structure

```
dotfiles/
├── alacritty/           # Terminal emulator config
├── tmux/                # Terminal multiplexer config
├── nvim/                # Neovim editor config
│   └── README.md        # Neovim setup guide
├── gh/                  # GitHub CLI config
├── htop/                # System monitor config
├── iterm2/              # macOS terminal (optional)
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
- See `alacritty/README.md` for details

### **Tmux** (`tmux/`)
Terminal multiplexer for managing sessions:
- Custom keybindings
- Plugins (TPM - Tmux Plugin Manager)
- Status bar customization
- Window/pane management
- See `tmux/README.md` for details

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

### **iTerm2** (`iterm2/`) — macOS only
Native macOS terminal:
- Color schemes
- Profiles
- Keybindings

---

## ⌨️ Key Workflows

### **Terminal + Tmux**
```bash
# Start new tmux session
tmux new-session -s dev

# Split pane horizontally
Ctrl-b %

# Split pane vertically  
Ctrl-b "

# Switch between panes
Ctrl-b arrow-keys

# Create new window
Ctrl-b c
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

See individual `README.md` files for tool-specific customization.

---

## 📝 Individual Tool Guides

Detailed setup instructions for each tool:

| Tool | File | Setup |
|------|------|-------|
| Alacritty | `alacritty/README.md` | Terminal config |
| Tmux | `tmux/README.md` | Multiplexer setup |
| Neovim | `nvim/README.md` | Editor & LSP config |
| GitHub CLI | `gh/README.md` | CLI authentication |
| htop | `htop/README.md` | Process monitor |
| Neofetch | `neofetch/README.md` | System info display |
| iTerm2 | `iterm2/README.md` | macOS terminal |

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
   cd ~/.dotfiles
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
