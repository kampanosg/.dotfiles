require("kampanosg")

local g = vim.g
local o = vim.o

if g.neovide then
    o.guifont = "Hack Nerd Font:h16:#e-subpixelantialias"
    g.neovide_transparency = 0.98
    g.transparency = 0.98
    g.neovide_no_idle = true
    g.neovide_confirm_quit = true
    g.neovide_remember_window_size = true
    g.neovide_input_use_logo = true
    g.neovide_cursor_trail_size = 0.5
    g.neovide_cursor_vfx_mode = "pixiedust"
end

