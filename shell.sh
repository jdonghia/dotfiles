#!/bin/bash  

cd ~
git clone https://aur.archlinux.org/yay.git 
cd yay
makepkg -si
yay -S stow tmux neovim ttf-jetbrains-mono-nerd pnpm nodejs xclip zoxide fzf firefox ripgrep lazygit zsh starship npm openssh unzip 
git clone https://www.github.com/jdonghia/dotfiles.git
chsh -s /usr/bin/zsh
cd ~/dotfiles
stow nvim tmux zshrc tmux-sessionizer
chmod +x ~/.local/scripts/tmux-sessionizer
source ~/.zshrc
sudo pacman -Syu

# yay -S stow tmux waybar neovim hyprshot swaync ttf-font-awesome ttf-jetbrains-mono-nerd pnpm nodejs wofi hyprpaper xclip zoxide fzf firefox ripgrep lazygit zsh starship npm openssh unzip bluetuith pavucontrol google-chrome bluez bluez-utils 
# sudo systemctl enable bluetooth.service
# sudo systemctl start bluetooth.service
# rm -rf ~/.config/hypr/
# stow backgrounds hypr kitty nvim tmux waybar zshrc tmux-sessionizer
# timedatectl set-timezone America/Sao_Paulo
