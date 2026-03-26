<div align="center">

<a href="https://git.io/typing-svg"><img src="https://readme-typing-svg.herokuapp.com?font=Fira+Code&weight=600&size=30&duration=3000&pause=1000&color=CBA6F7&center=true&vCenter=true&random=false&width=650&height=65&lines=lustucru's+dotfiles+%F0%9F%92%9C;Arch+Linux+%2B+Hyprland+%E2%9C%A8;Managed+with+chezmoi+%F0%9F%8F%A0;Riced+to+perfection+%F0%9F%8E%A8" alt="Typing SVG" /></a>

<br>

<img src="https://img.shields.io/badge/Arch_Linux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white"/>
<img src="https://img.shields.io/badge/Hyprland-58E1FF?style=for-the-badge&logo=hyprland&logoColor=black"/>
<img src="https://img.shields.io/badge/chezmoi-4B32C3?style=for-the-badge&logo=chezmoi&logoColor=white"/>
<img src="https://img.shields.io/badge/Neovim-57A143?style=for-the-badge&logo=neovim&logoColor=white"/>
<img src="https://img.shields.io/badge/Ghostty-1C1C1C?style=for-the-badge&logoColor=white"/>

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
| **Audio Visualizer** | Cava |
| **Dotfiles Manager** | chezmoi |

---

## 🖼️ Wallpapers

Les wallpapers sont stockés dans `~/Pictures/Wallpapers/` et gérés par chezmoi.

Le wallpaper actuel est appliqué dynamiquement via **swww** et **Pywal** génère automatiquement les couleurs du terminal, de waybar, et de rofi en fonction du wallpaper.

<div align="center">

| Lockscreen (Hyprlock) | Fastfetch Logo |
|---|---|
| <img src="Pictures/Wallpapers/ice_demonhunter_frieren.png" width="400"/> | <img src="Pictures/Wallpapers/bocchi-transparent.png" width="200"/> |
| Wallpaper affiché sur l'écran de verrouillage | Logo affiché dans le terminal avec Fastfetch |

</div>

### 🎭 Logos Fastfetch

Fastfetch affiche un **logo aléatoire** à chaque ouverture du terminal. Les logos disponibles sont dans `~/.config/fastfetch/logos/` et pointent vers les wallpapers :

<div align="center">

| | | | |
|---|---|---|---|
| <img src="Pictures/Wallpapers/UwU1transp.png" width="120"/> | <img src="Pictures/Wallpapers/UwU2transp.png" width="120"/> | <img src="Pictures/Wallpapers/UwU3transp.png" width="120"/> | <img src="Pictures/Wallpapers/UwU4transp.png" width="120"/> |
| <img src="Pictures/Wallpapers/Peach__Zelda_by_mndbd1.png" width="120"/> | <img src="Pictures/Wallpapers/Peach__Zelda_by_mndbd2.png" width="120"/> | <img src="Pictures/Wallpapers/Peach__Zelda_by_mndbd3.png" width="120"/> | <img src="Pictures/Wallpapers/bocchi-transparent.png" width="120"/> |

</div>

### 🏎️ Images Fastfetch (voitures)

Collection d'images de voitures utilisables comme logo Fastfetch :

<div align="center">

| | | | |
|---|---|---|---|
| <img src="Pictures/Wallpapers/FH5_Audi_2_Audi_Sport_quattro_S1.png" width="150"/> | <img src="Pictures/Wallpapers/photo-peugeot-206-a.png" width="150"/> | <img src="Pictures/Wallpapers/subarurally.png" width="150"/> | <img src="Pictures/Wallpapers/saint1.png" width="150"/> |
| Audi Sport Quattro S1 | Peugeot 206 | Subaru Rally | Saint |

</div>

### 🌄 Quelques wallpapers

<div align="center">

| | |
|---|---|
| <img src="Pictures/Wallpapers/kita.png" width="400"/> | <img src="Pictures/Wallpapers/wallpapers1.png" width="400"/> |
| <img src="Pictures/Wallpapers/cyberpunk-edgerunners-lucy-8k-nq-1336x768-3801197565.jpg" width="400"/> | <img src="Pictures/Wallpapers/black-and-white-anime-bartender-girl.png" width="400"/> |

</div>

---

## 📁 Hiérarchie du projet

```
~/.local/share/chezmoi/          # Dépôt source chezmoi
│
├── dot_zshrc                    # Config ZSH (aliases, plugins, pywal, fzf)
├── dot_bashrc                   # Config Bash
├── dot_profile                  # Variables d'environnement
├── dot_gitconfig                # Config Git
├── dot_p10k.zsh                 # Thème Powerlevel10k
├── dot_tmux.conf                # Config Tmux
├── dot_gdbinit                  # Config GDB
├── dot_condarc                  # Config Conda
│
├── dot_config/
│   │
│   ├── hypr/                    # 🪟 HYPRLAND — Window Manager
│   │   ├── hyprland.conf        #    Config principale (source les fichiers de conf/)
│   │   ├── hyprlock.conf        #    Écran de verrouillage (wallpaper + style)
│   │   ├── conf/
│   │   │   ├── keybinding.conf  #    ⌨️  Tous les raccourcis clavier
│   │   │   ├── autostart.conf   #    🚀 Apps lancées au démarrage
│   │   │   ├── appearance.conf  #    🎨 Bordures, gaps, couleurs
│   │   │   ├── animation.conf   #    ✨ Animations des fenêtres
│   │   │   ├── monitors.conf    #    🖥️  Config des écrans
│   │   │   ├── windowrule.conf  #    📏 Règles par fenêtre
│   │   │   ├── workspaces.conf  #    📑 Config des workspaces
│   │   │   ├── input.conf       #    🖱️  Clavier, souris, touchpad
│   │   │   ├── layout.conf      #    📐 Layout (dwindle)
│   │   │   ├── misc.conf        #    ⚙️  Options diverses
│   │   │   ├── environment.conf #    🌍 Variables d'environnement
│   │   │   └── programs.conf    #    📦 Terminal, browser, file manager
│   │   └── scripts/
│   │       ├── volume_control.sh#    🔊 Contrôle du volume
│   │       └── wlogout.sh       #    🚪 Script de logout
│   │
│   ├── waybar/                  # 📊 WAYBAR — Barre de statut
│   │   ├── config.jsonc         #    Config principale (modules, position)
│   │   ├── style.css            #    Style CSS de la barre
│   │   ├── modules              #    Définition des modules
│   │   ├── themes/              #    🎨 Thèmes (Catppuccin, Tokyo Night, etc.)
│   │   ├── colors/              #    🌈 Palettes de couleurs
│   │   └── scripts/             #    📜 Scripts (météo, mediaplayer)
│   │
│   ├── nvim/                    # ✏️  NEOVIM — Éditeur de code
│   │   ├── init.lua             #    Point d'entrée (charge lazy.nvim)
│   │   ├── lazy-lock.json       #    Versions lockées des plugins
│   │   └── lua/
│   │       ├── keymaps.lua      #    ⌨️  Raccourcis custom
│   │       ├── options.lua      #    ⚙️  Options (numéros, tabs, etc.)
│   │       └── plugins/
│   │           ├── telescope.lua    # 🔍 Fuzzy finder
│   │           ├── neo-tree.lua     # 📂 Explorateur de fichiers
│   │           ├── treesitter.lua   # 🌳 Syntax highlighting
│   │           ├── lsp-config.lua   # 🧠 Language Server Protocol
│   │           ├── autocomplete.lua # 💬 Autocomplétion
│   │           ├── catppuccin.lua   # 🎨 Thème
│   │           ├── lualine.lua      # 📊 Status line
│   │           ├── gitsigns.lua     # 📝 Git dans le gutter
│   │           ├── toggleterm.lua   # 🖥️  Terminal intégré
│   │           ├── formatting.lua   # ✨ Auto-formatage
│   │           ├── mini-nvim.lua    # 🔧 Mini plugins (comments, etc.)
│   │           ├── dashboard.lua    # 🏠 Écran d'accueil
│   │           ├── colorizer.lua    # 🎨 Preview des couleurs
│   │           ├── snacks-nvim.lua  # 🍿 Notifications & utilitaires
│   │           ├── rainbow-delimiters.lua  # 🌈 Parenthèses colorées
│   │           └── render-markdown.lua     # 📄 Preview Markdown
│   │
│   ├── ghostty/                 # 👻 GHOSTTY — Terminal principal
│   │   ├── config               #    Config (font, opacity, keybinds)
│   │   └── themes/              #    Thème Catppuccin Mocha
│   │
│   ├── kitty/                   # 🐱 KITTY — Terminal alternatif
│   │   ├── kitty.conf           #    Config principale
│   │   └── themes/              #    Thèmes (11 thèmes inclus)
│   │
│   ├── rofi/                    # 🚀 ROFI — Lanceur d'applications
│   │   ├── config.rasi          #    Config principale
│   │   ├── clipboard.rasi       #    Gestionnaire clipboard
│   │   ├── themeselect.rasi     #    Sélecteur de thème
│   │   ├── styles/              #    9 styles différents
│   │   ├── themes/              #    11 thèmes de couleurs
│   │   ├── assets/              #    Images de prévisualisation
│   │   └── steam/               #    Lanceurs de jeux Steam
│   │
│   ├── swaync/                  # 🔔 SWAYNC — Notifications
│   │   ├── config.json          #    Config (position, timeout, etc.)
│   │   └── style.css            #    Style des notifications
│   │
│   ├── wlogout/                 # 🚪 WLOGOUT — Menu de déconnexion
│   │   ├── layout               #    Disposition des boutons
│   │   ├── style.css            #    Style actuel
│   │   ├── nova.css             #    Style alternatif
│   │   └── icons/               #    Icônes (lock, logout, reboot, etc.)
│   │
│   ├── viegphunt/               # 🛠️  SCRIPTS CUSTOM
│   │   ├── app_launcher.sh      #    Lanceur d'apps (rofi)
│   │   ├── clipboard_launcher.sh#    Gestionnaire clipboard
│   │   ├── emoji_launcher.sh    #    Sélecteur d'émojis
│   │   ├── key_hints.sh         #    Affichage des raccourcis (Super+H)
│   │   ├── wallpaper_select.sh  #    Choisir un wallpaper
│   │   ├── wallpaper_random.sh  #    Wallpaper aléatoire
│   │   ├── wallpaper_effects.sh #    Effets sur le wallpaper
│   │   ├── gtkthemes.sh         #    Changement de thème GTK
│   │   ├── setcursor.sh         #    Config du curseur
│   │   ├── install_archpkg.sh   #    Installation de paquets Arch
│   │   └── backup_config.sh     #    Backup de la config
│   │
│   ├── fastfetch/               # 🖼️  FASTFETCH — System info + art
│   │   ├── config.jsonc         #    Config (modules, layout, logo)
│   │   ├── arch.txt             #    ASCII art Arch
│   │   ├── logos/               #    Logos aléatoires (→ wallpapers)
│   │   └── car/                 #    Images de voitures
│   │
│   ├── cava/                    # 🎵 CAVA — Visualiseur audio
│   │   └── config               #    Config (style, couleurs)
│   │
│   ├── btop/                    # 📈 BTOP — Monitoring système
│   │   ├── btop.conf            #    Config principale
│   │   └── themes/              #    30+ thèmes
│   │
│   ├── yazi/                    # 📁 YAZI — File manager terminal
│   │   └── yazi.toml            #    Config
│   │
│   ├── ohmyposh/                # 💎 OH MY POSH — Prompt alternatif
│   │   └── viet.omp.json        #    Thème custom
│   │
│   ├── quickshell/              # 🔒 QUICKSHELL — Lockscreen
│   │   └── nierlock             #    Config NieR-style lockscreen
│   │
│   ├── fish/                    # 🐟 FISH — Shell alternatif
│   │   ├── config.fish
│   │   ├── fish_variables
│   │   └── conf.d/
│   │
│   ├── colors/                  # 🌈 COULEURS PARTAGÉES
│   │   ├── colors.css           #    Palette CSS (waybar, wlogout)
│   │   └── colors.rasi          #    Palette Rasi (rofi)
│   │
│   ├── fontconfig/              # 🔤 FONTS
│   │   └── fonts.conf           #    Config des polices
│   │
│   ├── wal/                     # 🎨 PYWAL — Couleurs dynamiques
│   │   ├── colorschemes/        #    Schémas custom
│   │   └── templates/           #    Templates de couleurs
│   │
│   ├── gtk-3.0/                 # 🖌️  GTK 3 — Thème d'interface
│   │   └── settings.ini
│   │
│   └── gtk-4.0/                 # 🖌️  GTK 4 — Thème d'interface
│       └── settings.ini
│
└── Pictures/
    └── Wallpapers/              # 🌄 50+ wallpapers (anime, cars, etc.)
```

---

## ⌨️ Raccourcis principaux

> `⊞` = touche Super

### Hyprland

| Raccourci | Action |
|---|---|
| `⊞ Space` | Terminal (Ghostty) |
| `⊞ E` | File manager (Yazi) |
| `⊞ B` | Browser (Brave) |
| `⊞ H` | Afficher tous les raccourcis |
| `⊞ Q` | Fermer la fenêtre |
| `⊞ Shift Q` | Kill par PID |
| `⊞ F` | Fullscreen |
| `⊞ P` | Floating + pin |
| `⊞ J` | Toggle split |
| `⊞ M` | Workspace musique |
| `⊞ S` | Workspace spécial |
| `⊞ L` | Lock screen (nierlock) |
| `⊞ K` | Logout menu (wlogout) |
| `⊞ W` | Choisir wallpaper |
| `⊞ Shift W` | Wallpaper aléatoire |
| `⊞ V` | Clipboard |
| `⊞ Shift S` | Screenshot (région) |
| `⊞ [1-0]` | Workspace 1-10 |
| `⊞ Shift [1-0]` | Déplacer vers workspace |
| `Alt Space` | App launcher (Rofi) |
| `⊞ Shift Ctrl Esc` | Quitter Hyprland |

### Terminal (ZSH)

| Raccourci / Alias | Action |
|---|---|
| `Ctrl+R` | Recherche historique (fzf) |
| `Ctrl+T` | Explorateur de fichiers (fzf) |
| `ls` / `ll` / `la` / `lla` | List files (eza + icons) |
| `lt` / `lt1` / `lt2` / `lt3` | Tree view (niveau 1/2/3) |
| `c` | Clear screen |
| `nv` | Ouvrir Neovim |

### Neovim

| Raccourci | Action |
|---|---|
| `Space e` | Explorateur (NeoTree) |
| `Space f f` | Find files (Telescope) |
| `Space f g` | Live grep (Telescope) |
| `Space /` | Toggle comment |
| `Space r n` | Toggle relative numbers |
| `Space g f` | Format code |
| `K` | Hover documentation |
| `v` / `V` / `Ctrl V` | Sélection / ligne / bloc |
| `y` / `yy` | Copier sélection / ligne |
| `p` / `P` | Coller après / avant |
| `d` / `dd` | Couper sélection / ligne |
| `0` / `$` / `^` | Début / fin / 1er char de ligne |
| `gg` / `G` | Début / fin du fichier |
| `w` / `b` | Mot suivant / précédent |
| `Alt Up/Down` | Déplacer ligne |
| `Tab` / `Shift Tab` | Indent / Unindent |
| `Ctrl H/J/K/L` | Navigation entre panes |

---

## 🚀 Installation

```bash
# Installer chezmoi (Arch)
sudo pacman -S chezmoi

# Appliquer les dotfiles
chezmoi init --apply minicolasss
```

## 🔄 Utilisation

```bash
# Voir les différences
chezmoi diff

# Après une modif locale
chezmoi re-add

# Commit & push
chezmoi cd && git add -A && git commit -m "update" && git push

# Sur une autre machine : récupérer les changements
chezmoi update
```

---

<div align="center">

<a href="https://git.io/typing-svg"><img src="https://readme-typing-svg.herokuapp.com?font=Fira+Code&size=14&duration=4000&pause=2000&color=A6E3A1&center=true&vCenter=true&random=false&width=400&height=30&lines=btw+i+use+arch+%E2%8A%9E" alt="btw" /></a>

</div>
