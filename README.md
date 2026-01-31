# Dotfiles

Personal configuration files for my development workflow.

## Overview

*   **Shell:** Zsh (Oh My Zsh, Starship, zoxide, fzf)
*   **Editor:** Neovim with lazy.nvim built from scratch
*   **Terminal:** Ghostty + Tmux + Lazygit
*   **Window Managers:** 
    *   macOS: Aerospace
    *   Arch: Hyprland
    *   Windows: GlazeWM

### Linking Configuration (Stow)

Use `stow` to symlink configurations to their respective locations (usually `~/.config/`).

## Directory Structure

| Directory | Description |
| :--- | :--- |
| `aerospace/` | macOS Tiling WM. |
| `bin/` | Custom scripts added to PATH (e.g., `tmux-sessionizer`). |
| `ghostty/` | Ghostty terminal configuration. |
| `glazewm/` | GlazeWM configuration for Windows. |
| `hypr/` | Hyprland configuration (Linux). |
| `keyboard/` | Firmware configs: **Corne** (ZMK/Zephyr) and **Silakka54**. |
| `lazygit/` | Lazygit UI configuration. |
| `nvim/` | Neovim setup |
| `tmux/` | Tmux configuration and bindings. |
| `waybar/` | Waybar style and config (Linux status bar). |
| `zshrc/` | Zsh run commands and environment variables. |

## Keybindings & Features

*   **Tmux Sessionizer:** `<C-g>` (in shell or tmux) to jump between projects.
*   **Neovim:**
    *   LSP & Autocompletion (Lua, TS, etc.)
    *   Telescope for fuzzy finding.
    *   Harpoon for quick file navigation.
    *   Undotree, Oil.nvim, and more.

## Keyboard Firmware

The `keyboard/` directory contains build configurations for my split keyboards:
*   **Corne:** ZMK/Zephyr based configuration.
*   **Silakka:** uses Vial Firmware .vil.
