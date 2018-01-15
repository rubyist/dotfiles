-include ../dotfiles.mk

install: $(HOME)/.config/neofetch

$(HOME)/.config/neofetch: $(HOME)/dotfiles/neofetch/config.conf
	@echo "linking neofetch"
	@ln -s $(HOME)/dotfiles/neofetch $(HOME)/.config/neofetch
