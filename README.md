arch linux

archinstall with default configs

sudo pacman -S gnome

exit
shutdown -h now
change boot option

log in user
sudo systemctl enable and start gdm.service


#install yay
sudo pacman -S git
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si


yay -S  stow tmux waybar neovim hyprshot swaync ttf-font-awesome ttf-jetbrains-mono-nerd yarn npm nodejs wofi hyprpaper xclip zoxide fzf firefox ripgrep lazygit git hyprland kitty zsh

#configure zsh
chsh -s /usr/bin/zsh
then restart system
delete all bash files

#adjust timezone
timedatectl set-timezone America/Sao_Paulo

#powerlevel10k
yay -S --noconfirm zsh-theme-powerlevel10k-git
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

#tpm and tmuxifier
git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

clone my dotfiles
stow all my dotfiles

sudo pacman -Syyuu
