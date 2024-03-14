-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = wezterm.config_builder()
local act = wezterm.action

-- For example, changing the color scheme:
config.color_scheme = "Dracula (Official)"
config.enable_tab_bar = false

config.font = wezterm.font("JetBrains Mono")
config.font_size = 14.0
config.line_height = 1.0

config.keys = {
	{
		key = "K",
		mods = "CTRL|SHIFT",
		action = act.ClearScrollback("ScrollbackOnly"),
	},
	-- Clears the scrollback and viewport leaving the prompt line the new first line.
	{
		key = "K",
		mods = "CTRL|SHIFT",
		action = act.ClearScrollback("ScrollbackAndViewport"),
	},
	-- Clears the scrollback and viewport, and then sends CTRL-L to ask the
	-- shell to redraw its prompt
	{
		key = "K",
		mods = "CTRL|SHIFT",
		action = act.Multiple({
			act.ClearScrollback("ScrollbackAndViewport"),
			act.SendKey({ key = "L", mods = "CTRL" }),
		}),
	},
}

-- and finally, return the configuration to wezterm
return config
