package main

import (
	"fmt"
	"image"
	"image/color"
	"image/png"
	"log"
	"os"
	"strconv"
)

func main() {
	if len(os.Args) != 4 {
		fmt.Printf("Usage: gen <width> <height> <outfile>\n")
		os.Exit(1)
	}

	width, err := strconv.Atoi(os.Args[1])
	if err != nil {
		log.Fatal(err)
	}

	height, err := strconv.Atoi(os.Args[2])
	if err != nil {
		log.Fatal(err)
	}

	squares := 32
	size := width / squares
	ssize := size / 5

	img := image.NewNRGBA(image.Rect(0, 0, width, height))

	bg := color.NRGBA{
		R: 0,
		G: 0,
		B: 0,
		A: 255,
	}
	fg := color.NRGBA{
		R: 45,
		G: 43,
		B: 48,
		A: 255,
	}
	fg2 := color.NRGBA{
		R: 32,
		G: 30,
		B: 36,
		A: 255,
	}

	// fill bg
	for y := 0; y < height; y++ {
		for x := 0; x < width; x++ {
			img.Set(x, y, bg)
		}
	}

	// large grid lines
	for x := size / 2; x < width; x += size {
		for y := 0; y < height; y++ {
			img.Set(x, y, fg)
			img.Set(x+1, y, fg)
		}
	}

	for y := size / 2; y < height; y += size {
		for x := 0; x < width; x++ {
			img.Set(x, y, fg)
			img.Set(x, y+1, fg)
		}
	}

	// small grid lines
	for x := ssize / 2; x < width; x += ssize {
		for y := 0; y < height; y++ {
			img.Set(x, y, fg2)
		}
	}

	for y := ssize / 2; y < height; y += ssize {
		for x := 0; x < width; x++ {
			img.Set(x, y, fg2)
		}
	}

	f, err := os.Create(os.Args[3])
	if err != nil {
		log.Fatal(err)
	}

	if err := png.Encode(f, img); err != nil {
		f.Close()
		log.Fatal(err)
	}

	if err := f.Close(); err != nil {
		log.Fatal(err)
	}
}
