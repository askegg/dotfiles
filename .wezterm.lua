-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Set the colour scheme
config.color_scheme = "Dracula (Official)"

-- Initial window settings
config.native_macos_fullscreen_mode = true
config.hide_tab_bar_if_only_one_tab = true
config.initial_rows = 40
config.initial_cols = 120
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- Font settings
config.font = wezterm.font("JetBrains Mono")
config.font_size = 13.0
config.line_height = 1.0

-- Use a visual bell rather than the audio version
config.audible_bell = "Disabled"
config.visual_bell = {
	fade_in_duration_ms = 0,
	fade_out_function = "EaseOut",
	fade_out_duration_ms = 80,
}
config.colors = {
	-- Dracula purple
	visual_bell = "#BD93F9",
}

config.keys = {
	{
		-- Toggle fullscreen
		key = "n",
		mods = "SHIFT|CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
	{
		key = "0",
		mods = "CTRL",
		action = wezterm.action.ResetFontAndWindowSize,
	},
	{
		-- Split window vertically
		key = "|",
		mods = "SHIFT|CTRL",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		-- Split window horizontially
		key = "_",
		mods = "SHIFT|CTRL",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
}

-- and finally, return the configuration to wezterm
return config
