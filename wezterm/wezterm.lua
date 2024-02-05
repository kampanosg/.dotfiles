local wezterm = require 'wezterm'

return {
  window_padding = { top = 0, bottom = 0, left = 0, right = 0 },
  window_background_opacity = 0.90,
  macos_window_background_blur = 20,
  font = wezterm.font({
    family = "Geist Mono",
  }),
  font_size = 17.5,
  color_scheme = "Abernathy",
  use_fancy_tab_bar = true,
  hide_tab_bar_if_only_one_tab = true,
  send_composed_key_when_left_alt_is_pressed = true,
  send_composed_key_when_right_alt_is_pressed = false,
  use_ime = false,
  keys = {
  },
}
