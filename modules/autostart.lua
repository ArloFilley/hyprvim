-- # Wallpapers
-- local wallpaper_video = "~/.config/hypr/walls/current.mp4"
-- local mpvpaper = 'mpvpaper -o "input-ipc-server=/tmp/mpvpaper.sock no-audio --loop" ALL ~/.config/hypr/walls/current.mp4'
local wallpaper_image = "~/.config/hypr/walls/current.jpg"
local swaybg = "swaybg -i " .. wallpaper_image .. " -m fill"


-- # Clipboard Managers
-- local cliphist = "wl-paste --watch cliphist store"
local cursor_clip = "cursor-clip --daemon"

local auto_starts = {
    "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP",
    "systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP",
    "/usr/lib/polkit-kde-authentication-agent-1",
    swaybg,      -- Wallpaper
    cursor_clip, -- Clipboard Manager
}

hl.on("hyprland.start", function()
    for _, command in ipairs(auto_starts) do
        hl.exec_cmd(command)
    end
    hl.dispatch(hl.dsp.submap("Normal"))
end)
