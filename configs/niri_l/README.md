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
## Setting Changed From Default Values

### Input (Desktops)
```bash
    mouse {
        // off
        // natural-scroll
        // accel-speed 0.2
         accel-profile "flat"
        // scroll-method "no-scroll"
    }
```
Set `accel-profile "flat"`
`accel-speed` can be changed as desired, each mouse value will vary

### Input (Laptops)
```bash
    touchpad {
        // off
        tap
        // dwt
        // dwtp
        // drag false
        // drag-lock
        natural-scroll
        // accel-speed 0.2
        // accel-profile "flat"
        // scroll-method "two-finger"
        // disabled-on-external-mouse
    }
    mouse {
        // off
        // natural-scroll
        // accel-speed 0.2
         accel-profile "flat"
        // scroll-method "no-scroll"
    }
```
Set `accel-profile "flat"` for `mouse` and `touchpad`
`accel-speed` can be changed as desired, each mouse value will vary

### Binds
```bash
    // Suggested binds for running programs: terminal, app launcher, screen locker.
    Mod+Shift+Return { spawn "foot" "--app-id" "float"; }
    Mod+Ctrl+Return { spawn "kitty" "--class=floating-kitty"; }
    Mod+Shift+A hotkey-overlay-title="Open btop" { spawn "kitty" "btop"; }
    Mod+Shift+N hotkey-overlay-title="Open Obsidian" { spawn "obsidian"; }
```

### Window Rules
```bash
window-rule {
    match app-id="float"
    open-floating true
}
```
