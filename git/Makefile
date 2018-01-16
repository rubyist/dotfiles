install: $(HOME)/.gitconfig $(HOME)/.gitignore

$(HOME)/.gitconfig: $(HOME)/dotfiles/git/gitconfig
	@echo "linking gitconfig"
	@ln -sf $(HOME)/dotfiles/git/gitconfig $(HOME)/.gitconfig

$(HOME)/.gitignore: $(HOME)/dotfiles/git/gitignore
	@echo "linking gitignore"
	@ln -sf $(HOME)/dotfiles/git/gitignore $(HOME)/.gitignore
