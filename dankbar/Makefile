-include ../dotfiles.mk

install: $(HOME)/.config/dankbar

$(HOME)/.config/dankbar: $(HOME)/dotfiles/dankbar/config.json
	@echo "linking dankbar"
	@ln -sf $(HOME)/dotfiles/dankbar $(HOME)/.config/dankbar

$(HOME)/dotfiles/dankbar/config.json: $(HOME)/dotfiles/dankbar/$(SYSTEM)-config.json
	@echo "setting dankbar config for $(SYSTEM)"
	@cp $(SYSTEM)-config.json config.json
