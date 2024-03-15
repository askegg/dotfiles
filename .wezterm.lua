-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- For example, changing the color scheme:
config.color_scheme = "Dracula (Official)"
config.enable_tab_bar = false

config.font = wezterm.font("JetBrains Mono")
config.font_size = 14.0
config.line_height = 1.0

-- and finally, return the configuration to wezterm
return config
