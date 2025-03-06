#!/bin/bash  

cd ~

sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git 
cd yay
makepkg -si

yay -S stow tmux waybar neovim hyprshot swaync ttf-font-awesome ttf-jetbrains-mono-nerd pnpm nodejs wofi hyprpaper xclip zoxide fzf firefox ripgrep lazygit hyprland kitty zsh zsh-theme-powerlevel10k-git npm openssh unzip

git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

chsh -s /usr/bin/zsh

git clone https://www.github.com/jdonghia/dotfiles.git
cd dotfiles

stow backgrounds hypr kitty nvim tmux waybar zshrc

sudo pacman -Syu

