
# ZShell configs -- Ronaldd Pinho

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/ronaldd/.zshrc'

autoload -Uz compinit
#autoload zkbd
compinit
# End of lines added by compinstall

# Keys
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line

#
# Function for show escape colors in terminal with its codes
function showunixcolors() {
	for COLOR in {1..255}; do
		echo -en "\e[38;5;${COLOR}m${COLOR} ";
	done;
	echo;
}

# Zsh prompt settings
if [[ $EUID != 0 ]]; then
	PROMPT="%(?..%F{197}[%?])%f%B%F{202}%n@%m%f %F{245}%1~%f%b %F{202}%#%f "
else
	PROMPT="%(?..%F{88}[%?])%f%B%F{9}%n%f%b%B%F{231}@%m%b %1~ %#%f"
fi

export PATH=$PATH:$HOME/.local/bin
export LD_LIBRARY_PATH=/usr/lib:/lib:/usr/lib64:/usr/lib32:/usr/local/lib:/usr/local/lib64:$HOME/.local/lib

#------------------------------------------------------------------------------
# Aliases
# list storage
alias ls='ls --color=auto'
alias l='ls -lhF'
alias ll='l -a'
alias la='ls -aF'

alias pacman='pacman --color auto'

alias grep='grep --color=auto'
alias egrep='grep -e'
#------------------------------------------------------------------------------

# make flag
export MAKEFLAGS='--no-print-directory'

export LLVM_ROOT=/usr/bin
export NODE_JS=/usr/bin/node
export EMSCRIPTEN_ROOT=/usr/lib/emscripten

