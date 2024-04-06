package main

import (
	"github.com/webview/webview"
	// "github.com/sqweek/dialog"
	"path/filepath"
	"strings"
	"os"
)

func getExeDir() string {
	path, err := os.Executable()
	if err == nil {
		if strings.Contains(path, "go-build") {
			return ""
		}
		return filepath.Dir(path)
	}
	return ""
}

func getContent(dir, name string) string {
	path := filepath.Join(dir, name)
	bytes, err := os.ReadFile(path)
	if err == nil {
		return string(bytes)
	}
	return ""
}

func main() {
	exeDir := getExeDir()
	index := getContent(exeDir, "index.html")
	layout := getContent(exeDir, "layout.css")
	theme := getContent(exeDir, "theme.css")
	body := getContent(exeDir, "body.html")
	script := getContent(exeDir, "main.js")

	// replacing only one occurence in reverse order for performance
	index = strings.Replace(index, "SCRIPT", script, 1)
	index = strings.Replace(index, "BODY", body, 1)
	index = strings.Replace(index, "THEME", theme, 1)
	index = strings.Replace(index, "LAYOUT", layout, 1)

	web := webview.New(true)
	defer web.Destroy()
	web.SetTitle("EnhanceVideo")
	web.SetSize(300, 300, webview.HintMin)
	web.SetSize(1000, 800, webview.HintNone)
	web.SetHtml(index)

	web.Bind("GoTerminate", func() {
		web.Terminate()
	})

	// go dialog.File().Filter("image", "png").Load()

	web.Run()
}