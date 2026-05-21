hl.layer_rule({
    match = { namespace = "rofi" },
    blur = true,
    xray = false,
    blur_popups = true,
    dim_around = true
})

hl.layer_rule({
    match = { namespace = "logout_dialog" },
    no_anim = true,
    blur = true,
    xray = false,
    blur_popups = true,
    dim_around = true,
})

hl.layer_rule({ match = { namespace = "waybar" }, blur = false })

hl.layer_rule({ match = { namespace = "selection" }, no_anim = true })
