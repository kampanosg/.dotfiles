local wezterm = require 'wezterm'
local act = wezterm.action

return {
  window_padding = { top = 0, bottom = 0, left = 0, right = 0 },
  font = wezterm.font({
    family = "JetBrainsMono Nerd Font",
  }),
  font_size = 16,
  color_scheme = "Material (base16)",
  use_fancy_tab_bar = true,
  hide_tab_bar_if_only_one_tab = true,
  send_composed_key_when_left_alt_is_pressed = true,
  send_composed_key_when_right_alt_is_pressed = false,
  use_ime = false,
  keys = {
  }
}
