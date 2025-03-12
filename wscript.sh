#!/bin/bash  

cd ~

sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S stow tmux neovim pnpm nodejs zoxide fzf firefox ripgrep lazygit zsh zsh-theme-powerlevel10k-git npm openssh unzip

git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

chsh -s /usr/bin/zsh

git clone https://www.github.com/jdonghia/dotfiles.git
cd dotfiles

stow nvim tmux zshrc tmux-sessionizer

chmod +x ~/.local/scripts/tmux-sessionizer

source ~/.zshrc

sudo pacman -Syu

