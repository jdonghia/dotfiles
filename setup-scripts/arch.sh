#!/bin/bash  

cd ~
git clone https://aur.archlinux.org/yay.git 
cd yay
makepkg -si

packages=(
    waybar
    wofi
    pavucontrol
    blueberry
    hyprpaper
    hyprshot
    ghostty
    ttf-jetbrains-mono-nerd
    stow
    tmux
    neovim
    lazygit
    npm
    pnpm
    nodejs
    unzip
    ripgrep
    openssh
    zsh
    fzf
    zoxide
    zen-browser
    ## bluez
    ## ttf-font-awesome  
    ## bluez-utils
    ## xclip
)

for package in ${packages[@]}; do
    yay -S --noconfirm ${package}
done

ZSH_CUSTOM=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

chsh -s /usr/bin/zsh

chmod +x ~/dotfiles/bin/.local/scripts/*

sudo pacman -Syu

# sudo systemctl enable bluetooth.service
# sudo systemctl start bluetooth.service

