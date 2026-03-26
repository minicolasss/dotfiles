#!/usr/bin/env bash

# Check if wlogout is already running
if pgrep -x "wlogout" > /dev/null; then
    pkill -x "wlogout"
    hyprctl keyword decoration:inactive_opacity 0.80 >/dev/null 2>&1
    exit 0
fi

# Get focused monitor size (scaled) and pin wlogout top-right.
height=$(hyprctl -j monitors | jq -r '.[] | select(.focused==true) | (.height / .scale)')
width=$(hyprctl -j monitors | jq -r '.[] | select(.focused==true) | (.width / .scale)')

if [ -z "$height" ] || [ -z "$width" ] || [ "$height" = "null" ] || [ "$width" = "null" ]; then
    height=1080
    width=1920
fi

# Estimated block size for 6x1 tiny buttons.
block_w=315
block_h=34

# Just under waybar/brush area.
top_margin=52
right_margin=70
left_margin=$(awk -v w="$width" -v bw="$block_w" -v r="$right_margin" 'BEGIN { v = w - bw - r; if (v < 0) v = 0; printf "%.0f", v }')
bottom_margin=$(awk -v h="$height" -v bh="$block_h" -v t="$top_margin" 'BEGIN { v = h - bh - t; if (v < 0) v = 0; printf "%.0f", v }')

hyprctl keyword decoration:inactive_opacity 1.00 >/dev/null 2>&1

# wlogout met toujours le focus sur le 1er bouton ; pas d’option native pour le dernier.
# wtype envoie les touches à la fenêtre focalisée : on attend wlogout (clients ou layer
# logout_dialog), on focus par adresse si possible, puis 5× Right pour aller au ✕ à droite.
wlogout -C "$HOME/.config/wlogout/style.css" -l "$HOME/.config/wlogout/layout" --protocol layer-shell -b 6 -c 3 -r 0 -m 0 -T "$top_margin" -B "$bottom_margin" -L "$left_margin" -R "$right_margin" &
WL_PID=$!

if command -v wtype >/dev/null 2>&1; then
    for _ in $(seq 1 80); do
        ADDR=$(hyprctl clients -j 2>/dev/null | jq -r --argjson p "$WL_PID" '.[] | select(.pid == $p) | .address' | head -1)
        if [ -n "$ADDR" ] && [ "$ADDR" != "null" ]; then
            hyprctl dispatch focuswindow "address:$ADDR" >/dev/null 2>&1
            break
        fi
        # Layer-shell : souvent absent de `clients`, mais présent dans `layers` (namespace logout_dialog).
        LPID=$(hyprctl layers -j 2>/dev/null | jq -r '.. | select(type == "object" and .namespace? == "logout_dialog") | .pid' | head -1)
        if [ -n "$LPID" ] && [ "$LPID" = "$WL_PID" ]; then
            break
        fi
        sleep 0.05
    done
    # Laisse le temps au clavier d’être routé vers l’overlay (pas le terminal).
    sleep 0.22
    # Depuis le 1er bouton, 5× flèche droite = 6ᵉ bouton (✕ à droite).
    for _ in 1 2 3 4 5; do
        wtype -k Right 2>/dev/null || true
        sleep 0.04
    done
fi

wait "$WL_PID"
hyprctl keyword decoration:inactive_opacity 0.80 >/dev/null 2>&1
