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

    ## ttf-font-awesome  
    ## bluez
    ## bluez-utils
    ## xclip
)

for package in ${packages[@]}; do
    yay -S --noconfirm ${package}
done

git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

chsh -s /usr/bin/zsh

chmod +x ~/dotfiles/bin/.local/scripts/*

sudo pacman -Syu

# sudo systemctl enable bluetooth.service
# sudo systemctl start bluetooth.service


