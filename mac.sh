#!/bin/bash

# Layout Input .U.S and Brazilian

cli_packages=(
    stow
    tmux
    neovim
    lazygit
    npm
    pnpm
    nodejs
    ripgrep
    openssh
    fzf
    zoxide
    gemini-cli
    go
    opencode
    starship
    nvm
)

cask_packages=(
    nikitabobko/tap/aerospace
    whatsapp
    spotify
    raycast
    ghostty
    obsidian
    docker
    google-drive
    # parallels
)

if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

brew update
brew upgrade
brew install "${cli_packages[@]}"
brew install --cask "${cask_packages[@]}"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
ZSH_CUSTOM=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

chmod +x "$HOME/dotfiles/bin/.local/scripts"/*



