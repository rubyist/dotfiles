-include ../dotfiles.mk

install: $(HOME)/.mutt/muttrc $(HOME)/.msmtprc

$(HOME)/.mutt/muttrc: muttrc
	@echo "linking mutt"
	@mkdir -p $(HOME)/.mutt
	@ln -sf $(HOME)/dotfiles/mail/muttrc $@

$(HOME)/.msmtprc: msmtprc
	@echo "linking msmtp"
	@ln -sf $(HOME)/dotfiles/mail/msmtprc $@

muttrc:
	$(call fill-pass,"config/muttrc",$@)

msmtprc:
	$(call fill-pass,"config/msmtprc",$@)

update:
	@echo "storing mail configs in pass"
	@cat muttrc | pass insert -m config/muttrc
	@cat msmtprc | pass insert -m config/msmtprc

