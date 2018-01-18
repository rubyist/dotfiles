.PHONY: desktop
desktop: i3 bash

.PHONY: laptop
laptop: i3 bash


.PHONY: i3
i3:
	@cd i3 && make

.PHONY: bash
bash:
	@cd bash && make
