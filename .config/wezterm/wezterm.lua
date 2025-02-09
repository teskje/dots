local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'OneHalfDark-fixed'

config.hide_tab_bar_if_only_one_tab = true
config.default_cursor_style = 'BlinkingBar'

config.font = wezterm.font 'SauceCodePro Nerd Font'
config.font_size = 15
config.freetype_load_target = 'Light'
config.freetype_render_target = 'HorizontalLcd'

config.send_composed_key_when_left_alt_is_pressed = false
config.send_composed_key_when_right_alt_is_pressed = false

local keybindings = require 'keybindings'
keybindings.apply_to_config(config)

return config
