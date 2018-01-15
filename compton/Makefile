install: $(HOME)/.config/compton.conf $(HOME)/dotfiles/compton/compton.conf

$(HOME)/.config/compton.conf:
	@echo "linking compton"
	@ln -sf $(HOME)/dotfiles/compton/compton.conf $(HOME)/.config/compton.conf

$(HOME)/dotfiles/compton/compton.conf: compton.conf.tmpl compton.toml
	@echo "generating compton config for $(SYSTEM)"
	@rm -f compton.conf
	@go run ../fill.go $(SYSTEM) compton.conf.tmpl compton.toml > compton.conf

