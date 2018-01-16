-include ../../dotfiles.mk

all: squares-desktop.png squares-laptop.png

squares-desktop.png: generate.go
	@echo "generating desktop wallpaper"
	@go run generate.go 2560 1440 squares-desktop.png

squares-laptop.png: generate.go
	@echo "generating laptop wallpaper"
	@go run generate.go 3200 1800 squares-laptop.png

