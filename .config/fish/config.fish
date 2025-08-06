if status is-interactive
    # Commands to run in interactive sessions can go here

end

if test -f ~/.cache/wal/colors.fish
    source ~/.cache/wal/colors.fish
end


abbr --add pac sudo pacman -S
alias theedge="figlet -f /usr/share/figlet/fonts/The\ Edge.flf"
alias rm="rm -i"
alias bloodborne="shadPS4/build/shadps4 $HOME/Games/CUSA03173/eboot.bin"
alias syncwp="~/hypr-dotfiles/.config/scripts/wallpaper-sync.sh"
alias grubsync="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias updateroblox="flatpak update org.vinegarhq.Sober"
alias update-initramfs="sudo dracut-rebuild"
alias ncmp="ncmpcpp"
alias clock="tty-clock -s -S -c -B"
oh-my-posh init fish --config '/home/manakin/.config/oh-my-posh/half-life.omp copy.json' | source

fish_add_path /home/manakin/.spicetify

