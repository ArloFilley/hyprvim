hl.window_rule({
    name           = "suppress-maximize-events",
    match          = { class = ".*" },

    suppress_event = "maximize",
})

hl.window_rule({
    name     = "fix-xwayland-dragging",
    match    = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

hl.window_rule({ match = { class = "discord" }, opaque = true })

hl.window_rule({ match = { class = "steam_app_\\d+" }, content = "game" })

hl.window_rule({
    name = "fullscreen-steam-games",
    match = { content = "game" },
    opaque = true,
    fullscreen = true,
    immediate = true,
    workspace = 4
})

hl.window_rule({
    name = "popup-terminal-rule",
    match = { title = "popup_terminal" },
    float = true,
    pin = true,
    stay_focused = true
})
