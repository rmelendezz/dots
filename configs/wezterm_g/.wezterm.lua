local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'GruvboxDark'
config.font = wezterm.font 'ComicShannsMono Nerd Font Mono'
config.font_size = 16
config.enable_tab_bar = false
config.window_close_confirmation = "NeverPrompt"
config.default_domain = 'WSL:Arch'
config.audible_bell = 'Disabled'

return config
