local wezterm = require 'wezterm'
-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Color scheme
config.color_scheme = 'rose-pine'

-- Window settings
config.window_background_opacity = 0.63
config.win32_system_backdrop = "Acrylic"
config.window_padding = {
  left = 5,
  right = 5,
  top = 8,
  bottom = 5,
}

-- Font settings
config.font_size = 10.0
-- Disable tab bar and scroll bar
config.enable_tab_bar = true
config.enable_scroll_bar = false
config.use_fancy_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true

-- Set a high max FPS for smooth scrolling
config.max_fps = 144

-- Use only the resize window decorator
config.window_decorations = "RESIZE"

-- Set a solid black background color and custom tab bar styles
config.colors = {
  background = "#000000",
  tab_bar = {
    active_tab = {
      bg_color = "transparent",
      fg_color = "#00ADB5",
      -- intensity = "Normal",
    },
  }
}

-- Set the default program to Nu shell
config.default_prog = { 'nu' }

return config
