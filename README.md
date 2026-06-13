# hyprland-dotfiles

> Built on [CachyOS](https://cachyos.org) — works on any **Arch-based** distribution.

Material You themed Hyprland dotfiles that automatically adapt to your wallpaper via [matugen](https://github.com/InioX/matugen).

## Dependencies

### Core

| Package | Description |
|---|---|
| [Hyprland](https://hyprland.org) | Window manager |
| [waybar](https://github.com/Alexays/Waybar) | Status bar |
| [swaync](https://github.com/ErikReider/SwayNotificationCenter) | Notification center |
| [rofi](https://github.com/davatorium/rofi) | Application launcher |
| [wlogout](https://github.com/ArtsyMacaw/wlogout) | Powermenu |
| [foot](https://codeberg.org/dnkl/foot) | Terminal emulator |
| [fish](https://fishshell.com) | Shell |
| [yazi](https://yazi-rs.github.io) | File manager |
| [fastfetch](https://github.com/fastfetch-cli/fastfetch) | System info |
| [clipman](https://github.com/chmouel/clipman) | Clipboard manager |

### Theming

| Package | Description |
|---|---|
| [matugen](https://github.com/InioX/matugen) | Material You color generator |
| [matuwall](https://github.com/InioX/matuwall) | Wallpaper picker with auto color generation |

### Utilities

| Package | Description |
|---|---|
| cliphist | Clipboard history |
| grim / slurp | Screenshots |
| wl-clipboard | Clipboard (wl-paste, wl-copy) |
| swayosd | On-screen display (volume, brightness) |
| brightnessctl | Brightness control |
| awww-daemon | Wallpaper transition animations |
| papirus-icon-theme | Icons for rofi |

### Fonts

- [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads)
- Inter

## Installation

> **Note:** If you're on Arch/CachyOS, most dependencies can be installed from the official repos or AUR.

```bash
# Clone the repo
git clone https://github.com/latency-tech/hyprland-dotfiles.git ~/dotfiles

# Symlink configs into ~/.config
cd ~/dotfiles
for dir in */; do
  ln -sf "$PWD/$dir" "$HOME/.config/${dir%/}"
done

# Install fonts (example for Arch)
yay -S ttf-jetbrains-mono-nerd

# Generate colors from a wallpaper
matugen image ~/Pictures/Wallpaper/your-wallpaper.jpg

# Or pick a wallpaper with auto color generation
matuwall

# Reload Hyprland
hyprctl reload
```

### Important notes

- **Do not track generated color files.** Files like `colors.css`, `colors.ini`, `colors.rasi`, and `style.css` (in swaync/wlogout) are output by matugen. Your wallpaper sets the theme automatically.
- After running `matugen` or `matuwall`, the color files are regenerated from templates inside `matugen/templates/`.

## Updates

```bash
cd ~/dotfiles && ./update.sh
```

This syncs `~/.config/<dir>` → `~/dotfiles/<dir>` via `rsync` and interactively prompts to commit.

## Structure

```
dotfiles/
├── clipman/       # Clipboard colors
├── fastfetch/     # System info display
├── fish/          # Shell config & prompt
├── foot/          # Terminal config
├── hypr/          # Hyprland (main config, lockscreen, borders)
├── matugen/       # Material You color templates
├── matuwall/      # Wallpaper picker config
├── rofi/          # Launcher config
├── swaync/        # Notification center
├── waybar/        # Status bar
├── wlogout/       # Powermenu
└── yazi/          # File manager
```
