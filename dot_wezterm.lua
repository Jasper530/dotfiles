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
-- Font
-- config.font = wezterm.font 'MesloLGS NF'
config.font = wezterm.font_with_fallback { 'MesloLGS NF', 'Apple Color Emoji' }
config.font_size = 18

-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'
config.color_scheme = 'SpaceGray'

-- Window Background 
config.window_decorations = 'RESIZE'
config.window_padding = {
  left = '0.7cell',
  right = '0.3cell',
  top = '0.3cell',
  bottom = '0.3cell',
}
config.window_background_opacity = 0.8
config.text_background_opacity = 0.7

config.hide_tab_bar_if_only_one_tab = false

-- and finally, return the configuration to wezterm
return config
