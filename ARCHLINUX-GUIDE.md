# Arch Linux Setup Guide

## 1. Initial Setup with Arch Install

1. **Install Arch Linux**: Follow the official [Arch Linux Installation Guide](https://wiki.archlinux.org/title/Installation_guide) to set up Arch Linux.

2. **Install GNOME Desktop Environment**:

```bash
  sudo pacman -S gnome
```

3. **Shutdown the system after installation**:

```bash
  exit
  shutdown -h now
```

4. **Change Boot Option**: After reboot, change the boot option in your BIOS to boot from your installed Arch system.

## 2. Enable and Start GNOME Display Manager (GDM):

1. **Log in as the user** and enable GNOME Display Manager (GDM) to start at boot:

```bash
  sudo systemctl enable gdm.service
  sudo systemctl start gdm.service
```

## 3. Install Yay (AUR Helper)

1. **Install Git and Yay**:

```bash
  sudo pacman -S git
  git clone https://aur.archlinux.org/yay-bin.git
  cd yay-bin
  makepkg -si
```

## 4. Install Essential Packages

```bash
  yay -S stow tmux waybar neovim hyprshot swaync ttf-font-awesome ttf-jetbrains-mono-nerd yarn npm nodejs wofi hyprpaper xclip zoxide fzf firefox ripgrep lazygit git hyprland kitty zsh

  yay -S --noconfirm zsh-theme-powerlevel10k-git

  git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier

  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

  git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
```

## 5. Configure ZSH

1. **Set Zsh as the default shell**:

```bash
chsh -s /usr/bin/zsh
```

## 6. Configure Dotfiles

1. **Git clone dotfiles**:

```bash
git clone https://www.github.com/jdonghia/dotfiles.git
```

2. **Use stow to manage dotfiles**:

```bash
 stow <your-dotfiles-directory>
```

## 6. Sync packages

1. **Full system update**

```bash
  sudo pacman -Syyuu
```
