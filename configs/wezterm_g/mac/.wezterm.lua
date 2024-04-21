-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- Font settings
config.font = wezterm.font 'Fantasque Sans Mono'
config.font_size = 16

-- Window padding
config.window_padding = {
  left = 18,
  right = 18,
  top = 8,
  bottom = 8,
}

-- Top bar settings
config.hide_tab_bar_if_only_one_tab = true

-- For example, changing the color scheme:
config.color_scheme = 'Gruvbox Dark (Gogh)'


-- and finally, return the configuration to wezterm
return config
