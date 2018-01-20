-include ../dotfiles.mk

install: $(HOME)/.config/systemd/user/dropbox.service

$(HOME)/.config/systemd/user/dropbox.service:
	@echo "linking dropbox"
	@mkdir -p $(shell dirname "$@")
	@ln -s $(HOME)/dotfiles/dropbox/dropbox.service $@

# Copy 99-sysctl.conf to /etc/sysctl.d
# sudo sysctl --system
