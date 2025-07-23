# Windows SETUP
--- 
## Formatting

Use **Rufus** to bypass Windows login

---
## Cleaning Windows

[Debloat Tool](https://github.com/LeDragoX/Win-Debloat-Toolswsl)

---
## WSL Setup

1. Install wsl from powershell
2. [Arch Linux WSL](https://github.com/yuk7/ArchWSL)
3. Follow Arch Linux WSL Documentation
4. Install the packages through .dotfiles setup.sh

---
## Tools

### Keyboard Layout

1. Get the klc zip file from: [Alt gr keyboard layout](https://github.com/thomasfaingnaert/win-us-intl-altgr)
Windows doesnt have a official keyboard layout for ALT GR dead keys.

### Fonts

- [JetBrains Nerd Font Mono](https://www.nerdfonts.com/)

### PowerToys

1. Download via winget

`winget install --id Microsoft.PowerToys --source winget`

3. Enable **PowerToysRun** and **Keyboard Manager**

4. **Keyboard Manager**: Remap Win Left Key to F4. This is needed because GlazeWM doesnt handle well keybinds on the SUPER key. So it is a bypass to not use ALT as a key

5. Enable PowerToys on startup 

### GlazeWM, Yasb

1. Download via winget

`winget install --id AmN.yasb
winget install GlazeWM
`
2. Get the dotfiles .config/yasb/ .glzr/

3. Enable on shell:startup
