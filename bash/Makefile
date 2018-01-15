-include ../dotfiles.mk

install: $(HOME)/.bash_aliases $(HOME)/.bash_profile $(HOME)/.bashrc

$(HOME)/.bash_aliases: $(HOME)/dotfiles/bash/bash_aliases
	@echo "linking bash_aliases"
	@ln -sf $(HOME)/dotfiles/bash/bash_aliases $(HOME)/.bash_aliases

$(HOME)/.bash_profile: $(HOME)/dotfiles/bash/bash_profile
	@echo "linking bash_profile"
	@ln -sf $(HOME)/dotfiles/bash/bash_profile $(HOME)/.bash_profile

$(HOME)/.bashrc: $(HOME)/dotfiles/bash/bashrc
	@echo "linking bashrc"
	@ln -sf $(HOME)/dotfiles/bash/bashrc $(HOME)/.bashrc

