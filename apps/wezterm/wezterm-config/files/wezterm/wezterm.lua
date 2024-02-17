-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then config = wezterm.config_builder() end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'iTerm2 Default'
config.hide_tab_bar_if_only_one_tab = true
config.font = wezterm.font_with_fallback({"FiraCode Nerd Font Propo"})
config.font_size = 13
config.freetype_load_target = "HorizontalLcd"
config.cell_width = 1.005
-- and finally, return the configuration to wezterm
return config
