-include ../dotfiles.mk

install: $(HOME)/.config/systemd/user/synergy.service

$(HOME)/.config/systemd/user/synergy.service:
	@echo "linking synergy service"
	@mkdir -p $(shell dirname "$@")
	@ln -s $(HOME)/dotfiles/synergy/synergy.service $@


