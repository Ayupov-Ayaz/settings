package main

import (
	"fmt"
	"github.com/ayupov-ayaz/settings/info"
	"github.com/ayupov-ayaz/settings/util"
	"github.com/ayupov-ayaz/settings/version"
)

func main() {
	fmt.Println("golang version", version.GoVersion)
	fmt.Println("app info", info.AppInfo)
	fmt.Println("is prod", util.IsProd)
}

