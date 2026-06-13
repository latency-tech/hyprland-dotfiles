# hyprland-dotfiles

Material You themed Hyprland dotfiles, автоматически подстраивающиеся под обои через [matugen](https://github.com/InioX/matugen).

## Зависимости

### Основные

| Пакет | Описание |
|---|---|
| [Hyprland](https://hyprland.org) | Оконный менеджер |
| [waybar](https://github.com/Alexays/Waybar) | Панель |
| [swaync](https://github.com/ErikReider/SwayNotificationCenter) | Центр уведомлений |
| [rofi](https://github.com/davatorium/rofi) | Лаунчер |
| [wlogout](https://github.com/ArtsyMacaw/wlogout) | Меню выключения |
| [foot](https://codeberg.org/dnkl/foot) | Терминал |
| [fish](https://fishshell.com) | Шелл |
| [yazi](https://yazi-rs.github.io) | Файловый менеджер |
| [fastfetch](https://github.com/fastfetch-cli/fastfetch) | Информация о системе |
| [clipman](https://github.com/chmouel/clipman) | Менеджер буфера обмена |

### Темизация

| Пакет | Описание |
|---|---|
| [matugen](https://github.com/InioX/matugen) | Генератор цветов Material You |
| [matuwall](https://github.com/InioX/matuwall) | Выбор обоев с автогенерацией цветов |

### Утилиты

| Пакет | Описание |
|---|---|
| cliphist | История буфера обмена |
| grim / slurp | Скриншоты |
| wl-clipboard | Буфер обмена (wl-paste, wl-copy) |
| swayosd-server / swayosd-client | Экранные индикаторы (громкость, яркость) |
| brightnessctl | Управление яркостью |
| awww-daemon | Анимации при смене обоев |
| papirus-icon-theme | Иконки для rofi |

### Шрифты

- [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads)
- Inter

## Установка

```bash
# Клонировать репо
git clone https://github.com/latency-tech/hyprland-dotfiles.git ~/dotfiles

# Создать симлинки в ~/.config (через stow или вручную)
cd ~/dotfiles
for dir in */; do
  ln -sf "$PWD/$dir" "$HOME/.config/${dir%/}"
done

# Установить шрифт (пример для Arch)
yay -S ttf-jetbrains-mono-nerd

# Запустить matugen для генерации цветов (или matuwall для выбора обоев)
matugen image ~/Pictures/Wallpaper/your-wallpaper.jpg

# Перезагрузить Hyprland
hyprctl reload
```

## Обновление

```bash
cd ~/dotfiles && ./update.sh
```

Скрипт синхронизирует `~/.config/<dir>` → `~/dotfiles/<dir>` через `rsync` и предложит закоммитить изменения.

## Структура

```
dotfiles/
├── clipman/       # цвета клипмана
├── fastfetch/     # информация о системе
├── fish/          # конфиг шелла + prompt
├── foot/          # терминал
├── hypr/          # Hyprland (основной конфиг, lockscreen, цвета)
├── matugen/       # шаблоны генерации цветов (Material You)
├── matuwall/      # выбор обоев
├── rofi/          # лаунчер
├── swaync/        # уведомления
├── waybar/        # панель
├── wlogout/       # меню выключения
└── yazi/          # файловый менеджер
```
