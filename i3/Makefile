-include ../dotfiles.mk

install: $(HOME)/.config/i3 config

$(HOME)/.config/i3:
	@echo "linking $@"
	@ln -sf $(HOME)/dotfiles/i3 $@

config: config.tmpl i3.toml
	$(call fill-tmpl,"config.tmpl","i3.toml",$@)

clean:
	@rm -f config

