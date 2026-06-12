#!/usr/bin/env bash
set -euo pipefail

DOTFILES="$HOME/dotfiles"
CONFIG="$HOME/.config"

dirs=(
  clipman fastfetch fish foot hypr
  matugen matuwall rofi swaync waybar wlogout yazi
)

for dir in "${dirs[@]}"; do
  src="$CONFIG/$dir/"
  dst="$DOTFILES/$dir/"
  if [ -d "$src" ]; then
    rsync -a --delete "$src" "$dst"
    echo "✓ $dir"
  else
    echo "⚠  $dir — source missing, skipping"
  fi
done

if [ -d "$DOTFILES/.git" ]; then
  cd "$DOTFILES"
  if ! git diff --quiet --exit-code; then
    echo
    echo "Changes detected. Stage and commit? [y/N] "
    read -r reply
    if [[ "$reply" =~ ^[yY] ]]; then
      git add -A
      git status
      echo
      echo "Commit message: "
      read -r msg
      git commit -m "${msg:-sync dotfiles}"
    fi
  else
    echo "No changes."
  fi
fi
