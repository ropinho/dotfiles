HISTFILE=~/.histfile
HISTSIZE=500
SAVEHIST=500
setopt extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/ronaldd/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

# Custom keybinding for zsh
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line

if [[ $EUID != 0 ]]; then
	PROMPT="%(?..%F{197}%? %f)%B%F{167}%n@%m%f%b %B%F{246}%1~%f%b %B%F{253}%#%f%b "
else
	PROMPT="%B%F{9}%n%f%b%B%F{231}@%m %1~ %# %f%b"
fi

function showunixcolors() {
	for COLOR in {1..255}; do
		echo -en "\e[38;5;${COLOR}m${COLOR} ";
	done;
	echo;
}

#------------------------------------------------------------------------------
# My Aliases
alias ls='ls --color=auto'
alias l='ls -lhF'
alias ll='l -a'
alias la='ls -aF'

alias pacman='pacman --color auto'

alias grep='grep --color=auto'
alias egrep='grep -e'
#------------------------------------------------------------------------------
export MAKEFLAGS='--no-print-directory'
export PATH=$PATH:$HOME/.local/bin
export LD_LIBRARY_PATH=/usr/lib:/lib:/usr/lib64:/usr/lib32:/usr/local/lib:/usr/local/lib64:$HOME/.local/lib
export LLVM_ROOT=/usr/bin
export NODE_JS=/usr/bin/node
export EMSCRIPTEN_ROOT=/usr/lib/emscripten
