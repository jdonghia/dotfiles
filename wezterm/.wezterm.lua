-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.color_scheme = 'Rosé Pine Dawn (Gogh)'

config.font = wezterm.font("JetBrainsMono Nerd Font")

config.font_size = 15

config.window_decorations = "RESIZE"
config.enable_tab_bar = false

config.use_resize_increments = true
config.window_padding = {
	left = 1,
	right = 1,
	top = 1,
	bottom = 1,
}
config.window_close_confirmation = "NeverPrompt"
config.max_fps = 120

-- Finally, return the configuration to wezterm:
return config
