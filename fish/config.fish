source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
functions -e fastfetch
alias fastfetch="env fastfetch --config ~/.config/fastfetch/config.jsonc"
