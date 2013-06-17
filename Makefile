all:
	@echo "linking dotfiles..."
	@echo "vim..."
	@[ -d ~/.vim/ ] || ln -s $(PWD)/vim/ ~/.vim
	@[ -f ~/.vimrc ] || ln -s $(PWD)/vim/vimrc ~/.vimrc
	@git clone -q https://github.com/gmarik/vundle.git $(PWD)/vim/bundle/vundle
	@echo "zsh..."
	@[ -f ~/.zshrc ] || ln -s $(PWD)/zshrc ~/.zshrc
	@echo "git..."
	@[ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig

install:
	@echo "installing packages..."
	@echo "oh-my-zsh..."
	@curl -kLss https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

zero:
	@echo "preparing your mac..."
	@echo "brew..."
	@ruby -e "`curl -fsSL https://raw.github.com/mxcl/homebrew/go`" 
	@echo "zsh..."
	@brew install zsh
clean:
	rm -f ~/.vimrc ~/.zshrc ~/.vim ~/.zsh ~/.gitconfig ~/.tmux.conf

.PHONY: all
