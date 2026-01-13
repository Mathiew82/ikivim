# Neovim Setup

This configuration is built from scratch, focused on speed, clarity and
full control over plugins and features.

## System dependencies

These tools must be installed for the setup to work properly.

### 1. Node.js

Required for the TypeScript LSP.

Using **fnm** (Node version manager):\
https://github.com/Schniz/fnm

``` bash
fnm install --lts
```

------------------------------------------------------------------------

### 2. TypeScript

Required for TypeScript language server.

``` bash
npm install -g typescript typescript-language-server
```

------------------------------------------------------------------------

### 3. Ripgrep

Used by Telescope for project-wide text search.

``` bash
sudo dnf install ripgrep
```

------------------------------------------------------------------------

### 4. fd

Used by Telescope for fast file search.

``` bash
sudo apt install fd-find
```

(Optional symlink)

``` bash
ln -s $(which fdfind) ~/.local/bin/fd
```

------------------------------------------------------------------------

## Plugin manager

-   **lazy.nvim**

Used to manage all plugins and allow easy setup on new machines.

------------------------------------------------------------------------

## Installed plugins

-   lazy.nvim
-   telescope.nvim
-   plenary.nvim
-   catppuccin (colorscheme)
-   mason.nvim
-   mason-lspconfig.nvim
-   nvim-lspconfig

------------------------------------------------------------------------

## Language servers (managed by Mason)

These LSPs are automatically installed and enabled:

-   lua_ls
-   pyright
-   ts_ls (TypeScript)
-   bashls
-   jsonls
-   yamlls

------------------------------------------------------------------------

## Install everything on a new machine

After cloning the config:

``` vim
:Lazy sync
```

------------------------------------------------------------------------

This README will be extended as more tools and plugins are added.
