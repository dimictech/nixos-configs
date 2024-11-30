local wezterm = require 'wezterm'

return {
    default_prog = {"/run/current-system/sw/bin/bash"},
    color_scheme = "Gruvbox Dark",
    font = wezterm.font("FiraCode Nerd Font"),
    font_size = 12.0,
    enable_scroll_bar = false,
    hide_tab_bar_if_only_one_tab = true,
    adjust_window_size_when_changing_font_size = false,
    window_padding = {
        left = 30,
        right = 0,
        top = 30,
        bottom = 0,
    },
    window_background_opacity = 0.9,
    cursor_blink_rate = 500,
    enable_wayland = true,
    keys = {
     {key="C", mods="CTRL|SHIFT", action=wezterm.action{CopyTo="Clipboard"}},
     {key="V", mods="CTRL|SHIFT", action=wezterm.action{PasteFrom="Clipboard"}},
     {key="T", mods="CTRL|SHIFT", action=wezterm.action{SpawnTab="CurrentPaneDomain"}},
     {key="W", mods="CTRL|SHIFT", action=wezterm.action{CloseCurrentTab={confirm=true}}},
    }
}

