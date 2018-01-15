install: $(HOME)/.config/i3 $(HOME)/dotfiles/i3/config

$(HOME)/.config/i3:
	@echo "linking i3"
	@ln -sf $(HOME)/dotfiles/i3 $(HOME)/.config/i3

$(HOME)/dotfiles/i3/config: $(HOME)/dotfiles/i3/config.tmpl $(HOME)/dotfiles/i3/i3.toml
	@echo "generating config for $(SYSTEM)"
	@rm -f config
	@go run ../fill.go $(SYSTEM) config.tmpl i3.toml > config

