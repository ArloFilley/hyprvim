hl.config({
    input = {
        kb_layout          = "us",
        kb_variant         = "dvorak",
        kb_model           = "",
        kb_options         = "",
        kb_rules           = "",

        numlock_by_default = true,

        repeat_delay       = 250,
        repeat_rate        = 35,

        follow_mouse       = 1,
        force_no_accel     = true,

        sensitivity        = 0,

        touchpad           = {
            natural_scroll = false,
        },
    },
})

hl.device({
    name        = "steelseries-mouse",
    sensitivity = 0.5,
})
