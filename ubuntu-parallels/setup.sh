## Config
## Graphics: More Spaced
## Shortcuts: Always

sudo apt install i3

## NerdFont
sudo snap install curl
mkdir -p ~/.local/share/fonts/JetBrainsMonoNerdFont
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz
tar -xf "JetBrainsMono.tar.xz" -C ~/.local/share/fonts/JetBrainsMonoNerdFont/
rm "JetBrainsMono.tar.xz"

sudo apt install kitty

sudo apt install polybar

sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
