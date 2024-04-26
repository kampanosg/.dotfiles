local wezterm = require 'wezterm'

return {
  window_padding = { top = 15, bottom = 0, left = 0, right = 0 },
  window_background_opacity = 0.80,
  macos_window_background_blur = 25,
  -- font = wezterm.font({
  --   family = 'Geist Mono',
  -- }),
  font = wezterm.font({
      family = 'Liga SFMono Nerd Font',
  }),
  harfbuzz_features = {"calt=0", "clig=0", "liga=0"}, -- disable ligature
  font_size = 18.5,
  color_scheme = 'Navy and Ivory (terminal.sexy)',
  use_fancy_tab_bar = true,
  hide_tab_bar_if_only_one_tab = true,
  send_composed_key_when_left_alt_is_pressed = true,
  send_composed_key_when_right_alt_is_pressed = false,
  use_ime = false,
  keys = {
  },
}
