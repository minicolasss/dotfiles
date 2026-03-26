#!/usr/bin/env bash

if pidof yad > /dev/null; then
    pkill yad
fi

yad --center --title="Keybinding Hints" --no-buttons --list \
    --column=Key: --column="" --column=Description: \
    --timeout-indicator=bottom \
"🐧 = "            "        "  "SUPER KEY" \
"" "" "" \
"── Apps ──"         "        "  "─────────────────────────" \
"🐧 Space"          "        "  "Open terminal" \
"🐧 E"              "        "  "Open file manager" \
"🐧 B"              "        "  "Open browser" \
"🐧 H"              "        "  "Show keybinding hints" \
"" "" "" \
"── Windows ──"      "        "  "─────────────────────────" \
"🐧 Q"              "        "  "Close active window" \
"🐧 Shift Q"        "        "  "Kill active window by PID" \
"🐧 F"              "        "  "Toggle fullscreen" \
"🐧 P"              "        "  "Toggle floating + pin" \
"🐧 J"              "        "  "Toggle split (dwindle)" \
"" "" "" \
"── Workspaces ──"   "        "  "─────────────────────────" \
"🐧 M"              "        "  "Toggle music workspace" \
"🐧 S"              "        "  "Toggle special workspace" \
"🐧 Ctrl_R S"       "        "  "Move window to special workspace" \
"🐧 [1 -> 0]"       "        "  "Switch workspace 1-10" \
"🐧 Shift [1 -> 0]" "        "  "Move window to workspace 1-10" \
"🐧 Scroll"         "        "  "Scroll through workspaces" \
"" "" "" \
"── Navigation ──"   "        "  "─────────────────────────" \
"🐧 Arrows"         "        "  "Move focus" \
"Ctrl_R Arrows"     "        "  "Move/swap window" \
"🐧 LMB drag"       "        "  "Move window" \
"🐧 RMB drag"       "        "  "Resize window" \
"" "" "" \
"── Launchers ──"    "        "  "─────────────────────────" \
"ALT Space"         "        "  "App launcher" \
"🐧 V"              "        "  "Clipboard manager" \
"🐧 W"              "        "  "Choose wallpaper" \
"🐧 Shift W"        "        "  "Random wallpaper" \
"" "" "" \
"── System ──"       "        "  "─────────────────────────" \
"🐧 L"              "        "  "Lock screen (nierlock)" \
"🐧 K"              "        "  "Logout menu (wlogout)" \
"🐧 Shift S"        "        "  "Screenshot (region)" \
"🐧 Shift Ctrl Esc" "        "  "Exit Hyprland" \
"" "" "" \
"── Media ──"        "        "  "─────────────────────────" \
"Vol Up/Down"       "        "  "Volume +/- 5%" \
"Mute"              "        "  "Toggle mute audio/mic" \
"Brightness"        "        "  "Brightness +/- 10%" \
"Play/Pause/Next"   "        "  "Media controls (playerctl)"
