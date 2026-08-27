# Path to Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Plugins
plugins=(
	git
	zsh-autosuggestions
	fast-syntax-highlighting
	fzf-tab
)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Set default editor
export EDITOR='nvim'

# PATH
export PATH=$PATH:/home/manakin/.spicetify
export PATH=$PATH:~/.filen-cli/bin

# Aliases
alias pac="sudo pacman -S"
alias theedge="figlet -f /usr/share/figlet/fonts/The\ Edge.flf"

# Misc
cat ~/.cache/wal/sequences
. "$HOME/.local/bin/env"

# Oh my posh prompt (Always last)
eval "$(oh-my-posh init zsh --config ~/dotfiles/.config/oh-my-posh/half-life.omp.copy.json)"
