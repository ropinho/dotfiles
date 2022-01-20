.PHONY: all
	vim-config

# Configure .vimrc and install vim-plug via curl
vim-config:
	echo "Configuring .vimrc"
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	cp ./vim/.vimrc ${HOME}/.vimrc
