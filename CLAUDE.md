# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Neovim configuration using the modern `vim.pack.add()` approach for plugin management, organized under the `destin` namespace. The configuration follows a modular architecture with clear separation of concerns.

## Architecture

The configuration is structured as follows:

- `init.lua` - Entry point that sets leader key and requires the main module
- `lua/destin/` - Main configuration namespace containing:
  - `init.lua` - Orchestrates loading of all configuration modules
  - `opts.lua` - Core Neovim options and settings
  - `maps.lua` - Custom keymaps and bindings
  - `cmds.lua` - Custom commands (currently empty)
  - `packs/` - Plugin configurations:
    - `init.lua` - Plugin declarations using `vim.pack.add()`
    - Individual plugin config files (lsp.lua, theme.lua, etc.)

## Plugin Management

Uses Neovim's built-in package manager (`vim.pack.add()`) instead of external plugin managers. Plugins are declared in `lua/destin/packs/init.lua` and configured in separate files within the `packs/` directory.

Current plugins:
- nvim-treesitter (syntax highlighting)
- blink.cmp (completion)
- mini.pick (fuzzy finder)
- oil.nvim (file management)
- nvim-autopairs (auto-pairing)
- vesper.nvim (colorscheme)
- friendly-snippets (snippet collection)

## LSP Configuration

LSP servers are configured in the `lsp/` directory with individual files for each language server. The main LSP setup enables `lua_ls` and `ts_ls` by default. Additional language servers are available as separate configuration files.

## Key Features

- Uses space as leader key
- Relative line numbers enabled
- Clipboard integration with OS
- Rounded window borders
- No swap files
- Custom diagnostic toggle with `gK`
- Window navigation with Ctrl+hjkl

## Development Commands

This is a configuration repository, not a typical development project. Changes are applied by:

1. Editing configuration files
2. Restarting Neovim or using `:source` commands
3. For plugin changes, restart Neovim completely

No build, test, or lint commands are applicable as this is a Neovim configuration.