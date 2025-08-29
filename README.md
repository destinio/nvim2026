# Neovim Configuration

A modern, minimal Neovim configuration built with native package management and focused on simplicity and performance.

## Features

- 🚀 **Native Plugin Management** - Uses Neovim's built-in `vim.pack.add()` instead of external plugin managers
- 🎨 **Modern UI** - Clean interface with rounded borders and the Vesper colorscheme
- 🧠 **Smart LSP** - Configured language servers for Lua and TypeScript with extensible setup
- ⚡ **Fast Completion** - Powered by blink.cmp for lightning-fast autocompletion
- 📁 **File Management** - Oil.nvim for intuitive file browsing and editing
- 🔍 **Fuzzy Finding** - Mini.pick for quick file and content searching
- 🌈 **Syntax Highlighting** - Treesitter for accurate and colorful syntax parsing

## Structure

```
nvim-beta/
├── init.lua                    # Entry point
├── lua/destin/                 # Main configuration namespace
│   ├── init.lua               # Module orchestration
│   ├── opts.lua               # Core Neovim options
│   ├── maps.lua               # Custom keymaps
│   ├── cmds.lua               # Custom commands
│   └── packs/                 # Plugin configurations
│       ├── init.lua           # Plugin declarations
│       ├── lsp.lua            # LSP setup
│       ├── theme.lua          # Colorscheme config
│       ├── cmp.lua            # Completion setup
│       ├── files.lua          # File management
│       ├── mini.lua           # Mini.pick configuration
│       ├── treesitter.lua     # Syntax highlighting
│       └── random.lua         # Miscellaneous plugins
└── lsp/                       # Individual LSP server configs
    ├── lua_ls.lua
    ├── ts_ls.lua
    └── [additional servers...]
```

## Installation

1. **Backup existing configuration** (if any):
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   ```

2. **Clone this repository**:
   ```bash
   git clone <repository-url> ~/.config/nvim
   ```

3. **Start Neovim**:
   ```bash
   nvim
   ```

4. **Install plugins** (automatic on first run):
   Plugins will be downloaded and installed automatically when you first start Neovim.

## Key Bindings

| Key | Mode | Action |
|-----|------|--------|
| `<Space>` | Normal | Leader key |
| `<C-h/j/k/l>` | Normal | Navigate between windows |
| `gK` | Normal | Toggle diagnostic virtual lines |

*Additional keymaps are defined by individual plugins and can be found in their respective configuration files.*

## LSP Servers

Currently configured servers:
- **Lua** (`lua_ls`) - Lua language server
- **TypeScript** (`ts_ls`) - TypeScript/JavaScript language server

Additional language servers are available in the `lsp/` directory and can be enabled by modifying `lua/destin/packs/lsp.lua`.

## Plugins

| Plugin | Purpose |
|--------|---------|
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting and code parsing |
| [blink.cmp](https://github.com/saghen/blink.cmp) | Fast completion engine |
| [mini.pick](https://github.com/nvim-mini/mini.pick) | Fuzzy finder for files and text |
| [oil.nvim](https://github.com/stevearc/oil.nvim) | File manager that treats directories like buffers |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs) | Automatic bracket and quote pairing |
| [vesper.nvim](https://github.com/datsfilipe/vesper.nvim) | Modern colorscheme |
| [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | Collection of useful snippets |

## Customization

### Adding New Plugins

1. Add the plugin to `lua/destin/packs/init.lua`:
   ```lua
   { src = "https://github.com/author/plugin-name" }
   ```

2. Create a configuration file in `lua/destin/packs/` or add configuration to an existing file.

3. Require the configuration in `lua/destin/packs/init.lua`.

### Adding LSP Servers

1. Create a configuration file in the `lsp/` directory (e.g., `lsp/pyright.lua`).

2. Enable the server in `lua/destin/packs/lsp.lua`:
   ```lua
   vim.lsp.enable({ 'lua_ls', 'ts_ls', 'pyright' })
   ```

### Modifying Options

Core Neovim options are configured in `lua/destin/opts.lua`. Edit this file to adjust editor behavior, appearance, and functionality.

## Requirements

- **Neovim** >= 0.12.0
- **Git** (for plugin management)
- **Node.js** (for some LSP servers)
- **A terminal with true color support** (recommended)

## Philosophy

This configuration prioritizes:
- **Simplicity** over complexity
- **Native features** over external dependencies
- **Performance** over extensive plugin ecosystems
- **Modularity** for easy customization and maintenance

## License

This configuration is provided as-is for educational and personal use. Feel free to fork, modify, and adapt to your needs.
