local wezterm = require 'wezterm'

return {
  window_padding = { top = 15, bottom = 0, left = 0, right = 0 },
  window_background_opacity = 0.80,
  window_decorations = "RESIZE",
  macos_window_background_blur = 25,
  use_fancy_tab_bar = true,
  font = wezterm.font({
      family = 'Liga SFMono Nerd Font',
  }),
  harfbuzz_features = {"calt=0", "clig=0", "liga=0"}, -- disable ligature
  font_size = 18.5,
  hide_tab_bar_if_only_one_tab = true,
  send_composed_key_when_left_alt_is_pressed = true,
  send_composed_key_when_right_alt_is_pressed = false,
  use_ime = false,
  keys = {
  },
}
