-include ../dotfiles.mk

install: $(HOME)/.Xresources

$(HOME)/.Xresources: $(HOME)/dotfiles/Xresources/Xresources
	@echo "linking Xresources"
	@ln -sf $(HOME)/dotfiles/Xresources/Xresources $(HOME)/.Xresources

$(HOME)/dotfiles/Xresources/Xresources: Xresources.tmpl Xresources.toml
	@echo "generating Xresources config for $(SYSTEM)"
	@go run ../fill.go $(SYSTEM) Xresources.tmpl Xresources.toml > Xresources
	@xrdb ~/.Xresources
