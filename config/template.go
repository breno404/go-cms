package config

import (
	"go-cms/utils"
	"html/template"
	"log"
	"path/filepath"
)

func DefineTemplates() (*template.Template, error) {

	tmpl := template.New("").Funcs(template.FuncMap{
		"add": utils.Add,
		"sub": utils.Sub,
		"mul": utils.Mul,
		"div": utils.Div,
		"int": utils.FloatToInt,
		"flt": utils.IntToFloat,
	})

	templateDirectories := []string{
		"themes/*/*.tpl",
		"themes/*/*/*.tpl",
		"themes/*/*.tmpl",
		"themes/*/*/*.tmpl",
		"themes/*/*.html",
		"themes/*/*/*.html",
	}

	files := []string{}

	for _, dir := range templateDirectories {
		if fp, err := filepath.Glob(dir); err != nil {
			log.Fatal(err)
		} else {
			files = append(files, fp...)
		}
	}

	tmpl, err := tmpl.ParseFiles(files...)
	if err != nil {
		return nil, err
	}

	return tmpl, nil
}
