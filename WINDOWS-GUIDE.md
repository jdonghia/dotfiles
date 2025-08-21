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

---
## Tools

### Keyboard Layout
  
- US and ABNT2

### Fonts

- [JetBrains Nerd Font Mono](https://www.nerdfonts.com/)

### PowerToys

1. Download via winget

`winget install --id Microsoft.PowerToys --source winget`

3. Enable **PowerToysRun** and **Keyboard Manager**

4. **Keyboard Manager**: Remap shortcut Win + W to CTRL + W on Zen Browser 

5. Enable PowerToys on startup   

### GlazeWM 

1. Install GlazeWM

```powershell

winget install GlazeWM
```

2. Stow glazeWM config.yaml from dotfiles 

3. Enable autostart on shell:startup    

### Zen Browser

1. Remap alt commands key to command/super
