-- Essential
require("modules.monitors")
require("modules.inputs")

-- Very Helpful
require("modules.workspaces")
require("modules.binds")
require("modules.autostart")

-- Decoration
require("themes.rose-pine-moon")
require("modules.animations")
require("modules.layerrules")

-- Workflow
require("modules.windowrules")

-----------------------
----- PERMISSIONS -----
-----------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Permissions/
-- Please note permission changes here require a Hyprland restart and are not applied on-the-fly
-- for security reasons

-- hl.config({
--   ecosystem = {
--     enforce_permissions = true,
--   },
-- })

-- hl.permission("/usr/(bin|local/bin)/grim", "screencopy", "allow")
-- hl.permission("/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", "screencopy", "allow")
-- hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")


-----------------------
---- LOOK AND FEEL ----
-----------------------

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
    general = {
        gaps_in           = 5,
        gaps_out          = 10,

        border_size       = 3,
        col               = {
            active_border   = { colors = { love, iris }, angle = 45 },
            inactive_border = { colors = { muted }, angle = 90 },
        },
        resize_on_border  = true,

        no_focus_fallback = true,
        allow_tearing     = true,
        layout            = "dwindle",
    }
})

hl.config({
    decoration = {
        rounding_power   = 4,
        rounding         = 8,

        -- Change transparency of focused and unfocused windows
        active_opacity   = 0.97,
        inactive_opacity = 0.94,

        shadow           = {
            enabled      = true,
            range        = 10,
            render_power = 3,
            color        = "#1a1a1a"
        },

        blur             = {
            enabled           = true,
            xray              = false,
            new_optimizations = true,
            size              = 3,
            passes            = 2,
            vibrancy          = 0.1696
        }
    },

    animations = {
        enabled = true,
        workspace_wraparound = true
    }
})

-- Ref https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
-- "Smart gaps" / "No gaps when only"
-- uncomment all if you wish to use that.
-- hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
-- hl.workspace_rule({ workspace = "f[1]",   gaps_out = 0, gaps_in = 0 })
-- hl.window_rule({
--     name  = "no-gaps-wtv1",
--     match = { float = false, workspace = "w[tv1]" },
--     border_size = 0,
--     rounding    = 0,
-- })
-- hl.window_rule({
--     name  = "no-gaps-f1",
--     match = { float = false, workspace = "f[1]" },
--     border_size = 0,
--     rounding    = 0,
-- })

-- See https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/ for more
hl.config({
    dwindle = {
        preserve_split = true, -- You probably want this
    }
})

-- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
hl.config({
    master = {
        new_status = "master",
    }
})

-- See https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/ for more
hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    }
})

----------------
----  MISC  ----
----------------

hl.config({
    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo   = true
    }
})


---------------
---- INPUT ----
---------------


hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

-- Example per-device config
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more


---------------------
---- KEYBINDINGS ----
---------------------
