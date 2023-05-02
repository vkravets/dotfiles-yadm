local wezterm = require("wezterm")

return {
    font = wezterm.font("Hack Nerd Font Mono", { weight = "Regular", stretch = "Normal", italic = false }),
    font_size = 14,
    line_height = 1.2,
    color_scheme = "Hybrid",
    window_decorations = "RESIZE",
    hide_tab_bar_if_only_one_tab = true,
    use_fancy_tab_bar = true,
    window_padding = {
        left = 2,
        right = 2,
        top = 0,
        bottom = 0,
    },
    check_for_updates = true,
    check_for_updates_interval_seconds = 86400,
    show_update_window = false,
    enable_scroll_bar = true,
    scrollback_lines = 10000,
    harfbuzz_features = { "calt=1", "clig=1", "liga=0" },
    term = "wezterm",
    leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 },

    keys = {
        {
            key = "|",
            mods = "LEADER|SHIFT",
            action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
        },
        -- Send "CTRL-A" to the terminal when pressing CTRL-A, CTRL-A
        {
            key = "a",
            mods = "LEADER|CTRL",
            action = wezterm.action.ScrollToPrompt(-1),
        },
        {
            key = "z",
            mods = "LEADER|CTRL",
            action = wezterm.action.ScrollToPrompt(1),
        },
    },
}
