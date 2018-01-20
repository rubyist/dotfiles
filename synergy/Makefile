-include ../dotfiles.mk

install: $(HOME)/.config/systemd/user/synergy.service synergy.conf

$(HOME)/.config/systemd/user/synergy.service:
	@echo "linking synergy service"
	@mkdir -p $(shell dirname "$@")
	@ln -s $(HOME)/dotfiles/synergy/synergy.service $@

synergy.conf:
	$(call fill-pass,"config/synergy.conf",$@)

update:
	@echo "storing synergy.conf in pass"
	@cat synergy.conf | pass insert -m config/synergy.conf
