if status is-interactive
    # Commands to run in interactive sessions can go here
    echo "The time is $(date +"%H:%M:%S")"
    echo "Welcome to $hostname on $HYPRLAND_CMD"
    catnap
    task
end


if test -f ~/.cache/wal/colors.fish
    source ~/.cache/wal/colors.fish
end

set -U fish_greeting ""
abbr --add pac sudo pacman -S
abbr --add fetch fastfetch
abbr --add ls eza -la
abbr -a rm 'trash-put'
alias theedge="figlet -f /usr/share/figlet/fonts/The\ Edge.flf"
alias grubsync="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias updateroblox="flatpak update org.vinegarhq.Sober"
alias update-initramfs="sudo dracut-rebuild"
alias ncmp="ncmpcpp"
alias clock="tty-clock -s -S -c -B"
oh-my-posh init fish --config '/home/manakin/.config/oh-my-posh/half-life.omp copy.json' | source

fish_add_path /home/manakin/.spicetify

starship init fish | source