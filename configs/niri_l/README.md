## Installation
**Arch Linux** 
```bash
sudo pacman -S niri
```

To have a better experience install all of the following packages
```bash
sudo pacman -S fuzzel mako xdg-desktop-portal-gtk xdg-desktop-portal-gnome swaybg swayidle swaylock xwayland-satellite udiskie hyprlock waybar
```


## Default Replacements
Open terminal change from `mod+T` to `mod+Return`
```bash
Mod+T hotkey-overlay-title="Open a Terminal: alacritty" { spawn "alacritty"; }
# Changed to
Mod+Return hotkey-overlay-title="Open a Terminal: alacritty" { spawn "alacritty"; }
```

Open application launcher change from `fuzzel` to `rofi-wayland`
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

### Layout
```bash
layout {
    // Set gaps around windows in logical pixels.
    gaps 10
```
Change `gaps 16` to `gaps 10`

### Focus-ring
```bash
focus-ring {
        // Uncomment this line to disable the focus ring.
        // off

        // How many logical pixels the ring extends out from the windows.
        width 2

        // Colors can be set in a variety of ways:
        // - CSS named colors: "red"
        // - RGB hex: "#rgb", "#rgba", "#rrggbb", "#rrggbbaa"
        // - CSS-like notation: "rgb(255, 127, 0)", rgba(), hsl() and a few others.

        // Color of the ring on the active monitor.
        // active-color "#7fc8ff"
	active-color "#fe8019"

        // Color of the ring on inactive monitors.
        //
        // The focus ring only draws around the active window, so the only place
        // where you can see its inactive-color is on other monitors.
        // inactive-color "#505050"
	inactive-color "#7c6f64"
```
Change `width 4` to `width 2`
Change `active-color "#7fc8ff"` to `active-color "fe8019"`
Change `inactive-color "#505050"` to `inactive-color "#7c6f64"`

### Output
```bash
/-output "eDP-1" {
    // Uncomment this line to disable this output.
    // off

    // Resolution and, optionally, refresh rate of the output.
    // The format is "<width>x<height>" or "<width>x<height>@<refresh rate>".
    // If the refresh rate is omitted, niri will pick the highest refresh rate
    // for the resolution.
    // If the mode is omitted altogether or is invalid, niri will pick one automatically.
    // Run `niri msg outputs` while inside a niri instance to list all outputs and their modes.
    mode "1920x1080@120.030"

    // You can use integer or fractional scale, for example use 1.5 for 150% scale.
    scale 2

    // Transform allows to rotate the output counter-clockwise, valid values are:
    // normal, 90, 180, 270, flipped, flipped-90, flipped-180 and flipped-270.
    transform "normal"

    // Position of the output in the global coordinate space.
    // This affects directional monitor actions like "focus-monitor-left", and cursor movement.
    // The cursor can only move between directly adjacent outputs.
    // Output scale and rotation has to be taken into account for positioning:
    // outputs are sized in logical, or scaled, pixels.
    // For example, a 3840×2160 output with scale 2.0 will have a logical size of 1920×1080,
    // so to put another output directly adjacent to it on the right, set its x to 1920.
    // If the position is unset or results in an overlap, the output is instead placed
    // automatically.
    position x=1280 y=0
}
```
Settings for `output` would need to be change as per device. I am mostly using `niri` on desktops. To get what resolutions your display can take run `niri msg outputs`

## Independent File Configuration

## Scripts & Good-To-Have
### Media Player
Bash script prompts you to paste a video link, usually from **youtube** opens it in `mpv` and uses `yt-dlp`. The scripts checks if all apps are installed locally. If not, it installs it.

script location, `/dots/configs/niri_l/scripts/mpv-ulr-gruvbox-niri.sh`

#### Installation
1. `cp` `mpv-url-gruvbox-niri.sh` to `~/.config/niri/scripts/` make sure the script is executable `sudo chmod +x niri-utl-gruvbox-niri.sh`
2. Add the following config settings to `niri` config file
```bash
binds {
    // ... other binds
    Mod+Alt+M { spawn "bash" "/home/toniiz/.config/niri/scripts/mpv-url-gruvbox-niri.sh"; }
}
```
