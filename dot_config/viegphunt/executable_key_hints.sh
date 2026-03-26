#!/usr/bin/env bash

if pidof yad > /dev/null; then
    pkill yad
fi

yad --center --title="Keybinding Hints" --no-buttons --list \
    --column=Key: --column="" --column=Description: \
    --timeout-indicator=bottom \
"  =   "          "        "  "SUPER KEY (Windows Key Button)" \
"" "" "" \
"  H"              "        "  "Show keybinding hints" \
"  Space"          "        "  "Open terminal" \
"  E"              "        "  "Open file manager (yazi)" \
"  B"              "        "  "Open browser" \
"" "" "" \
"  Q"              "        "  "Close active window" \
"  Shift Q"        "        "  "Kill active window by PID" \
"  Shift Ctrl Esc" "        "  "Exit Hyprland" \
"" "" "" \
"  F"              "        "  "Toggle fullscreen" \
"  P"              "        "  "Toggle floating + pin" \
"  J"              "        "  "Toggle split (dwindle)" \
"" "" "" \
"  M"              "        "  "Toggle music workspace" \
"  S"              "        "  "Toggle special workspace" \
"  Ctrl_R S"       "        "  "Move to special workspace" \
"  [1 -> 0]"       "        "  "Switch workspace 1-10" \
"  Shift [1 -> 0]" "        "  "Move window to workspace 1-10" \
"  Scroll"         "        "  "Scroll through workspaces" \
"" "" "" \
"  Arrows"         "        "  "Move focus" \
"Ctrl_R Arrows"         "        "  "Move/swap window" \
"  LMB drag"       "        "  "Move window" \
"  RMB drag"       "        "  "Resize window" \
"" "" "" \
"  L"              "        "  "Lock screen (nierlock)" \
"  K"              "        "  "Logout menu (wlogout)" \
"ALT Space"             "        "  "App launcher" \
"  V"              "        "  "Clipboard manager" \
"  W"              "        "  "Choose wallpaper" \
"  Shift W"        "        "  "Random wallpaper" \
"  Shift S"        "        "  "Screenshot (region)" \
"" "" "" \
"Vol Up/Down"           "        "  "Volume +/- 5%" \
"Mute"                  "        "  "Toggle mute audio/mic" \
"Brightness"            "        "  "Brightness +/- 10%" \
"Play/Pause/Next"       "        "  "Media controls (playerctl)" \
"" "" "" \
"━━ Terminal (ZSH) ━━"  "        "  "━━━━━━━━━━━━━━━━━━━━━━━━━" \
"" "" "" \
"Ctrl + R"              "        "  "Search command history (fzf)" \
"Ctrl + T"              "        "  "File explorer (fzf)" \
"Tab"                   "        "  "Autocomplete suggestion" \
"" "" "" \
"ls"                    "        "  "List files (eza + icons)" \
"ll"                    "        "  "List files (long format)" \
"la"                    "        "  "List all files (hidden)" \
"lt / lt1 / lt2 / lt3"  "        "  "Tree view (level 1/2/3)" \
"c"                     "        "  "Clear screen" \
"nv"                    "        "  "Open Neovim" \
"" "" "" \
"━━ Neovim ━━"          "        "  "━━━━━━━━━━━━━━━━━━━━━━━━━" \
"Leader = Space"        "        "  "" \
"" "" "" \
"Space e"               "        "  "Open file explorer (NeoTree)" \
"Space f f"             "        "  "Find files (Telescope)" \
"Space f g"             "        "  "Live grep (Telescope)" \
"Space ~"              "        "  "Open bottom terminal" \
"Esc (in terminal)"     "        "  "Exit terminal mode" \
"" "" "" \
"Space /"               "        "  "Toggle comment" \
"Space r n"             "        "  "Toggle relative numbers" \
"Space g f"             "        "  "Format code" \
"K"                     "        "  "Show hover documentation" \
"" "" "" \
"v"                     "        "  "Start selection (Visual mode)" \
"V"                     "        "  "Select entire line" \
"Ctrl V"                "        "  "Block selection (Visual Block)" \
"y"                     "        "  "Copy (yank) selection" \
"yy"                    "        "  "Copy entire line" \
"p"                     "        "  "Paste after cursor" \
"P"                     "        "  "Paste before cursor" \
"d"                     "        "  "Cut (delete) selection" \
"dd"                    "        "  "Cut entire line" \
"" "" "" \
"0"                     "        "  "Go to start of line" \
"$"                     "        "  "Go to end of line" \
"^"                     "        "  "Go to first non-space char" \
"gg"                    "        "  "Go to first line of file" \
"G"                     "        "  "Go to last line of file" \
"w / b"                 "        "  "Jump word forward / backward" \
"" "" "" \
"Alt Up/Down"           "        "  "Move line up/down" \
"Tab / Shift Tab"       "        "  "Indent / Unindent" \
"Ctrl H/J/K/L"          "        "  "Move between panes" \
"Alt = / -"             "        "  "Resize pane (taller/shorter)" \
"Alt , / ."             "        "  "Resize pane (wider/narrower)" \
"Esc"                   "        "  "Clear search highlights"
