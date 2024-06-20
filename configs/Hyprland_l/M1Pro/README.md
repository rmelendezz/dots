## [Dots Gitea](https://tea.toshiro.org/soru/dots)

I have split all config into its own folder due to stuff like keyboard backlight, in diff computer the device itself is a bit different

Note: All of them will have a README.md

## Asahi Fedora Remix
**Note: More information can be found on ~ Obsidian/Soru Vault**
### Arm app needed to be installed
```bash
sudo dnf install swayidle swaybg swaylock # Only ones running on arm at the moment

sudo dnf install wl-clipboard # Neovim requires it to `yank` text

sudo dnf install brightnessctl # To control backlight and screen brightness

sudo dnf instal sddm # Login manager
```


I am using `swayidle` and `swaylock` on this mac at the moment, thus the config for `hypridle`,`hyprlock` are not needed
