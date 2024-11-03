install_apps: 
	brew bundle

install_oh-my-zsh: 
	curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh

create_symlinks:
	ln -sf ${PWD}/git/.gitconfig ~/.gitconfig
	ln -sf ${PWD}/git/.gitignore_global ~/.gitignore_global
	ln -sf ${PWD}/.zshrc ~/.zshrc
	ln -sf ${PWD}/.vimrc ~/.vimrc
	ln -sf ${PWD}/.tigrc ~/.tigrc
