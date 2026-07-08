#!/bin/bash

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
  opencode
  nvm
  # starship
)

cask_packages=(
  nikitabobko/tap/aerospace
  spotify
  raycast
  ghostty
  # Whatsapp
  # Google Drive
  # Anki
  # Claude
  # Parallels
  # Arc Browser
)

# Claude Code
curl -fsSL https://claude.ai/install.sh | bash

# Homebrew
if ! command -v brew &>/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

brew update
brew upgrade
brew install "${cli_packages[@]}"
brew install --cask "${cask_packages[@]}"

# Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
ZSH_CUSTOM=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# Allow bash script execution
chmod +x "$HOME/dotfiles/bin/.local/scripts"/*

# Layout Input: .U.S and Brazilian.
