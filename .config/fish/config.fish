if status is-interactive
    # Commands to run in interactive sessions can go here
    pokeget lucario
    figlet -f /usr/share/figlet/fonts/The\ Edge.flf lucario
    
end

abbr --add pac sudo pacman -S
alias theedge="figlet -f /usr/share/figlet/fonts/The\ Edge.flf"
alias rm="rm -i"  
alias bloodborne="shadPS4/build/shadps4 /run/media/manakin/WingateGwen/ShadPS4/CUSA03173/eboot.bin"
oh-my-posh init fish --config '/home/manakin/.config/oh-my-posh/half-life.omp copy.json' | source

