-include ../dotfiles.mk

install: $(HOME)/.netrc

$(HOME)/.netrc: netrc
	@echo "linking netrc"
	@ln -sf $(HOME)/dotfiles/netrc/netrc $@

netrc:
	$(call fill-pass,"config/netrc",$@)

update:
	@echo "storing netrc in pass"
	@cat netrc | pass insert -m config/netrc
