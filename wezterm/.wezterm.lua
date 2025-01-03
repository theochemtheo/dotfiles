local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local act = wezterm.action
local mux = wezterm.mux

config.font = wezterm.font('MesloLGS NF',
                           {weight = "Regular", stretch = "Condensed"})
config.font_size = 10.0

config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = true

config.keys = {
    {key = 'LeftArrow', mods = 'ALT|CMD', action = act.ActivateTabRelative(-1)},
    {key = 'RightArrow', mods = 'ALT|CMD', action = act.ActivateTabRelative(1)}
}

config.window_decorations = 'RESIZE'
config.window_frame = {font = wezterm.font('MesloLGS NF'), font_size = 10}

wezterm.on('gui-startup', function(cmd)
    local tab, pane, window = mux.spawn_window(cmd or {})
    window:gui_window():maximize()
end)

config.window_close_confirmation = 'NeverPrompt'

return config
