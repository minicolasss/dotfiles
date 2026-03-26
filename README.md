<div align="center">

<a href="https://git.io/typing-svg"><img src="https://readme-typing-svg.herokuapp.com?font=Fira+Code&weight=600&size=28&duration=3000&pause=1000&color=CBA6F7&center=true&vCenter=true&random=false&width=600&height=60&lines=%F0%9F%90%A7+lustucru's+dotfiles;%E2%9C%A8+Arch+Linux+%2B+Hyprland;%F0%9F%8E%A8+Managed+with+chezmoi;%F0%9F%96%A5%EF%B8%8F+Riced+to+perfection" alt="Typing SVG" /></a>

<br>

<img src="https://img.shields.io/badge/Arch_Linux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white"/>
<img src="https://img.shields.io/badge/Hyprland-58E1FF?style=for-the-badge&logo=hyprland&logoColor=black"/>
<img src="https://img.shields.io/badge/chezmoi-4B32C3?style=for-the-badge&logo=chezmoi&logoColor=white"/>
<img src="https://img.shields.io/badge/Neovim-57A143?style=for-the-badge&logo=neovim&logoColor=white"/>

</div>

---

## 🖥️ Setup

| Component | Name |
|---|---|
| **OS** | Arch Linux |
| **WM** | Hyprland |
| **Terminal** | Ghostty |
| **Shell** | ZSH (Powerlevel10k + Zinit) |
| **Editor** | Neovim |
| **File Manager** | Yazi |
| **Browser** | Brave |
| **Bar** | Waybar |
| **Launcher** | Rofi |
| **Notifications** | SwayNC |
| **Lockscreen** | Quickshell (nierlock) |
| **Logout** | wlogout |
| **Fetch** | Fastfetch |
| **Dotfiles Manager** | chezmoi |

---

## 📦 What's Included

<details>
<summary><b>🪟 Window Manager & Desktop</b></summary>

- **Hyprland** — config, keybindings, animations, windowrules, workspaces
- **Waybar** — bar avec themes, scripts, modules custom
- **Rofi** — launcher, clipboard, wallpaper selector, themes
- **SwayNC** — notifications
- **wlogout** — logout menu avec icônes custom
- **Quickshell** — nierlock (lockscreen)

</details>

<details>
<summary><b>🖥️ Terminal & Shell</b></summary>

- **Ghostty** — config + theme catppuccin
- **Kitty** — config + themes
- **ZSH** — Powerlevel10k, zinit, fzf, zoxide, pywal, aliases
- **Fish** — config de base
- **Tmux** — config + plugins (TPM)

</details>

<details>
<summary><b>✏️ Editor</b></summary>

- **Neovim** — config complète avec :
  - LSP, autocompletion (blink)
  - Telescope (fuzzy finder)
  - NeoTree (file explorer)
  - Treesitter (syntax highlighting)
  - Catppuccin theme
  - Lualine, gitsigns, mini.nvim
  - Toggleterm, formatting, comments

</details>

<details>
<summary><b>🎨 Theming & Visuals</b></summary>

- **Pywal** — couleurs dynamiques depuis le wallpaper
- **GTK 3 & 4** — settings
- **Fontconfig** — configuration des polices
- **Colors** — palette partagée (CSS + Rasi)
- **Fastfetch** — logos custom (bocchi, UwU, makima...)
- **Wallpapers** — 50+ wallpapers inclus

</details>

<details>
<summary><b>🔧 Outils</b></summary>

- **Yazi** — file manager terminal
- **btop** — monitoring système + themes
- **cava** — visualiseur audio
- **mpv** — lecteur vidéo
- **htop** — process viewer
- **viegphunt scripts** — wallpaper, launcher, clipboard, keybinds

</details>

---

## 🚀 Installation

```bash
# Installer chezmoi
sudo pacman -S chezmoi

# Appliquer les dotfiles
chezmoi init --apply minicolasss
```

## 🔄 Mise à jour

```bash
# Récupérer les changements distants
chezmoi update

# Après une modif locale
chezmoi re-add
chezmoi cd && git add -A && git commit -m "update" && git push
```

---

## ⌨️ Raccourcis principaux

> `Super` = 🐧

| Raccourci | Action |
|---|---|
| `🐧 Space` | Terminal (Ghostty) |
| `🐧 E` | File manager (Yazi) |
| `🐧 B` | Browser (Brave) |
| `🐧 Q` | Fermer la fenêtre |
| `🐧 F` | Fullscreen |
| `🐧 L` | Lock screen |
| `🐧 K` | Logout menu |
| `🐧 W` | Choisir wallpaper |
| `🐧 V` | Clipboard |
| `🐧 H` | Afficher les raccourcis |
| `🐧 [1-0]` | Workspace 1-10 |
| `Alt Space` | App launcher |
| `🐧 Shift S` | Screenshot |

---

<div align="center">

<img src="https://readme-typing-svg.herokuapp.com?font=Fira+Code&size=14&duration=4000&pause=2000&color=A6E3A1&center=true&vCenter=true&random=false&width=400&height=30&lines=btw+i+use+arch+%F0%9F%90%A7" alt="btw" />

</div>
