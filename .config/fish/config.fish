if status is-interactive
    # Commands to run in interactive sessions can go here
    # echo "The time is $(date +"%H:%M:%S")"
    # echo "Welcome to $hostname on $HYPRLAND_CMD"
    fastfetch
end


if test -f ~/.cache/wal/colors.fish
    source ~/.cache/wal/colors.fish
end

# Empty fish greeting
set -U fish_greeting ""

# Aliases and shortcuts
abbr -a pac sudo pacman -S
abbr -a fetch fastfetch
abbr -a ls eza -la
abbr -a rm 'trash-put'
alias theedge="figlet -f /usr/share/figlet/fonts/The\ Edge.flf"
alias grubsync="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias update-initramfs="sudo dracut-rebuild"
alias ncmp="ncmpcpp"
alias clock="tty-clock -s -S -c -B"
abbr -a coolkitty kitty +kitten panel --edge=background unimatrix -s 99 -c blue

# Configurations and paths
oh-my-posh init fish --config '/home/manakin/.config/oh-my-posh/half-life.omp copy.json' | source

fish_add_path /home/manakin/.spicetify

starship init fish | source
