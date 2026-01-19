<div align="center">
    <img src="https://raw.githubusercontent.com/Mathiew82/ikivim/main/logo.png" alt="ikivim">
</div>

&nbsp;

# ikivim setup

This configuration is built from scratch, focused on speed, clarity and
full control over plugins and features.

## Requirements

- Neovim >= 0.11.2
- Git >= 2.19.0
- a Nerd Font to display some icons (optional)

---

## Installation

**[How to install](./installation.md)** [ [See dependencies](./dependencies.md) ]

---

## Language servers (managed by Mason)

These LSPs are automatically installed and enabled:

 - lua_ls
 - pyright
 - vtsls
 - vue_ls
 - cssls
 - eslint
 - rust_analyzer
 - docker_compose_language_service
 - tailwindcss
 - taplo
 - bashls
 - jsonls
 - yamlls
 - phpactor

---

## Plugin manager

-   **lazy.nvim**

Used to manage all plugins and allow easy setup on new machines.

---

## Installed Plugins

### Theme
- **catppuccin.nvim** – Color scheme
  https://github.com/catppuccin/nvim

### Autocomplete
- **nvim-cmp** – Completion engine
  https://github.com/hrsh7th/nvim-cmp

- **LuaSnip** – Snippets engine
  https://github.com/L3MON4D3/LuaSnip

### LSP and Tools
- **nvim-lspconfig** – LSP setup
  https://github.com/neovim/nvim-lspconfig

- **mason.nvim** – LSP/DAP installer
  https://github.com/williamboman/mason.nvim

- **fidget.nvim** – LSP progress UI
  https://github.com/j-hui/fidget.nvim

- **conform.nvim** – Code formatter
  https://github.com/stevearc/conform.nvim

### Coloring and syntax
- **nvim-treesitter** – Syntax highlighting
  https://github.com/nvim-treesitter/nvim-treesitter

- **nvim-colorizer.lua** – Color preview
  https://github.com/norcalli/nvim-colorizer.lua

### File Explorer
- **oil.nvim** – File manager
  https://github.com/stevearc/oil.nvim

### Search and navigation
- **telescope.nvim** – Fuzzy finder
  https://github.com/nvim-telescope/telescope.nvim

### Git
- **gitsigns.nvim** – Git indicators
  https://github.com/lewis6991/gitsigns.nvim

### Interface
- **lualine.nvim** – Status line
  https://github.com/nvim-lualine/lualine.nvim

- **which-key.nvim** – Keymap helper
  https://github.com/folke/which-key.nvim

- **mini.starter** – Start screen
  https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-starter.md

### Edition
- **Comment.nvim** – Comment toggle
  https://github.com/numToStr/Comment.nvim

- **nvim-autopairs** – Auto close pairs
  https://github.com/windwp/nvim-autopairs

- **mini.surround** – Surround editing
  https://github.com/nvim-mini/mini.surround

- **treesj** – Split/join code
  https://github.com/Wansmer/treesj

### Navigation
- **flash.nvim** – Motion jumps
  https://github.com/folke/flash.nvim
