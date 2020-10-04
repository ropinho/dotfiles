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

# Meus bindkeys
bindkey  "^[[H"  beginning-of-line
bindkey  "^[[F"  end-of-line
bindkey  ";5D"   backward-word
bindkey  ";5C"   forward-word

# função para mostra a lista de códigos de cores unix
function showunixcolors() {
	for COLOR in {1..255}; do
		echo -en "\e[38;5;${COLOR}m${COLOR} ";
	done;
	echo;
}

# Prompt settings
if [[ $EUID != 0 ]]; then
	PROMPT="%(?..%F{88}[%?])%f%B%F{220}%n@%m%f%b %F{215}%1~%f %F{220}%#%f "
else
	PROMPT="%(?..%F{88}[%?])%f%B%F{9}%n%f%b%F{231}@%m %1~ %#%f "
fi

export EDITOR=vim
export VISUAL=micro

export PATH=$PATH:$HOME/.local/bin
export LD_LIBRARY_PATH=/usr/lib:/lib:/usr/lib64:/usr/lib32:/usr/local/lib:/usr/local/lib64:$HOME/.local/lib

#------------------------------------------------------------------------------
# Aliases
# list storage
alias ls='ls --color=auto'
alias l='ls -lhF'
alias ll='l -a'
alias la='ls -aF'
alias lss='ls -Fsh1'

alias pacman='pacman --color auto'

alias grep='grep --color=auto'
alias egrep='grep -e'
#------------------------------------------------------------------------------

# make flag
export MAKEFLAGS='--no-print-directory'

export LLVM_ROOT=/usr/bin
export NODE_JS=/usr/bin/node
export EMSCRIPTEN_ROOT=/usr/lib/emscripten

