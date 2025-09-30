#!/bin/bash

# Define the packages to install
cli_packages=(
    stow
    tmux
    neovim
    lazygit
    aerospace
    npm
    pnpm
    nodejs
    ripgrep
    openssh
    fzf
    zoxide
    gemini-cli
)

cask_packages=(
    whatsapp
    spotify
    raycast
    ghostty
    font-jetbrains-mono-nerd-font
)

# Install Homebrew if it's not already installed
if ! command -v brew &> /dev/null; then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew and upgrade existing packages
brew update
brew upgrade

# Install all command-line packages at once
echo "Installing CLI packages..."
brew install "${cli_packages[@]}"

# Install all GUI applications using --cask
echo "Installing Cask applications..."
brew install --cask "${cask_packages[@]}"

# Install and configure Oh My Zsh and plugins
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# Clone Zsh plugins and theme
ZSH_CUSTOM=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}
echo "Cloning Zsh plugins and theme..."
git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM}/plugins/zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM}/themes/powerlevel10k"

# Grant execute permissions to scripts
if [ -d "$HOME/dotfiles/bin/.local/scripts" ]; then
    echo "Setting execute permissions for dotfiles scripts..."
    chmod +x "$HOME/dotfiles/bin/.local/scripts"/*
fi

echo "Setup complete! Please configure your .zshrc file to enable your new plugins and theme."
