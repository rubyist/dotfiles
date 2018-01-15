package main

import (
	"fmt"
	"html/template"
	"io/ioutil"
	"log"
	"os"

	"github.com/BurntSushi/toml"
)

func main() {
	if len(os.Args) != 4 {
		fmt.Printf("usage: fill <system> <template> <data.toml>\n")
		os.Exit(1)
	}

	var config map[string]map[string]string

	system := os.Args[1]
	tmpl := os.Args[2]
	data := os.Args[3]

	if _, err := toml.DecodeFile(data, &config); err != nil {
		log.Fatal(err)
	}

	funcMap := template.FuncMap{
		"config": func(key string) string {
			return config[system][key]
		},
	}

	text, err := ioutil.ReadFile(tmpl)
	if err != nil {
		log.Fatal(err)
	}

	t, err := template.New("fill").Funcs(funcMap).Parse(string(text))
	if err != nil {
		log.Fatal(err)
	}

	t.Execute(os.Stdout, nil)
}
