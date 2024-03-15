-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- For example, changing the color scheme:
config.color_scheme = "Dracula (Official)"
-- config.enable_tab_bar = false
config.native_macos_fullscreen_mode = true
config.hide_tab_bar_if_only_one_tab = true

config.font = wezterm.font("JetBrains Mono")
config.font_size = 14.0
config.line_height = 1.0

config.visual_bell = {
	fade_in_function = "EaseIn",
	fade_in_duration_ms = 150,
	fade_out_function = "EaseOut",
	fade_out_duration_ms = 150,
}
config.colors = {
	visual_bell = "#202020",
}

config.keys = {
	{
		key = "n",
		mods = "SHIFT|CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
}

-- and finally, return the configuration to wezterm
return config
