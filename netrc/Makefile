-include ../dotfiles.mk

install: $(HOME)/.netrc

$(HOME)/.netrc: $(HOME)/dotfiles/netrc/netrc
	@echo "linking netrc"
	@ln -sf $(HOME)/dotfiles/netrc/netrc $(HOME)/.netrc

$(HOME)/dotfiles/netrc/netrc:
	@echo "generating netrc from pass"
	@pass show config/netrc > $(HOME)/dotfiles/netrc/netrc

update:
	@echo "storing netrc in pass"
	@cat netrc | pass insert -m config/netrc
