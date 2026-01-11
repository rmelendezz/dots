## Installation
**Arch Linux** 
```bash
sudo pacman -S niri
```

To have a better experience install all of the following packages
```bash
sudo pacman -S fuzzel mako xdg-desktop-portal-gtk xdg-desktop-portal-gnome swaybg swayidle swaylock xwayland-satellite udiskie hyprlock waybar
```

## Configuration

### Default Replacements
*Open terminal* change from `mod+T` to `mod+Return`
```bash
Mod+T hotkey-overlay-title="Open a Terminal: alacritty" { spawn "alacritty"; }
# Changed to
Mod+Return hotkey-overlay-title="Open a Terminal: alacritty" { spawn "alacritty"; }
```

*Open application launcher* change from `fuzzel` to `rofi-wayland`
```bash
Mod+D hotkey-overlay-title="Run an Application: fuzzel" { spawn "fuzzel"; }
# Changed to
Mod+D hotkey-overlay-title="Run an Application: rofi" { spawn "~/Scripts/toggle-rofi.sh"; }
```
